;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Emacs-Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;
;; template.el --- Routines for generating smart skeletal templates for
;;                 files and functions.
;; Author          : Shunchao Wang shunchao.wang@gmail.com
;; Status          : Production
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defvar allow-template-evals nil
  "*Since evaluating arbitrary LISP code can be a potential security
risk, %eval directives in templates will be ignored unless the
variable allow-template-evals is t. It defaults to nil. If you choose
to enable it, be sure to inspect any template files you plan to use!")


(defvar template-file-name "file-template"
  "*The name of the file to look for when a find-file request fails. If a
file with the name specified by this variable exists, offer to use it as
a template for creating the new file.")

(defvar template-replacements-alist
  '(("%filename%" . (lambda ()
		     (file-name-nondirectory (buffer-file-name))))
    ("%date%" . current-time-string)
    ("%author%" . user-full-name)
   )
  "A list which specifies what substitutions to perform upon loading a
template file. Each list element consists of a string, which is the target
to be replaced if it is found in the template.")

(defvar template-team-members nil
  "This is used to record team members parsed out of interactive input.")

(defun template-process-evals ()

  "Called when a template file has just been inserted.  Scans the
buffer for lines containing evaluation directives, and executes them.
This should really only be used if you know what you're doing because
it will blindly try to execute the code contained in the directive as
Emacs LISP within the context of the calling routine.

An evaluation directive must all be on one line (which may be as long
as needed, that is, it need not fit on one SCREEN line), and has the
form:

%eval <lisp code>%

Note that it must be the only thing on the line, and must start and end with
a percent sign. The line will be deleted from the file before the code is
evaluated, and the point will be at the beginning of the next line.

Since evaluating arbitrary LISP code can be a potential security risk, this
function will not do anything unless the variable allow-template-evals is
t. It defaults to nil. If you choose to enable it, be sure to inspect any
template files you plan to use!"

  (let (command)
    (save-excursion
      (goto-char (point-min))
      (while (re-search-forward "^%eval \\(.*\\)%\n" nil t nil)
	(setq command (buffer-substring (match-beginning 1) (match-end 1)))
	(delete-region (match-beginning 0) (match-end 0))
	(if allow-template-evals
	    (eval (read command))
	  (message (concat "Ignoring command " command))
	  (sit-for 2))
      )
    )
  )
)

(defun find-template-file ()
  "Searches the current directory and its parents for a file matching
the name configured for template files. The name of the first such
readable file found is returned, allowing for hierarchical template
configuration. A template file with the same extension as the file
being loaded (using a \"-\" instead of a \".\" as the template file's
delimiter, to avoid confusing other software) will take precedence
over an extension-free, generic template."
  (let ((path (file-name-directory (buffer-file-name)))
	(ext (file-name-extension (buffer-file-name)))
	attempt result)

    (while (and (not result) (> (length path) 0))
      (setq attempt (concat path template-file-name "-" ext))
      (if (file-readable-p attempt)
	  (setq result attempt)
	(setq attempt (concat path template-file-name))
	(if (file-readable-p attempt)
	    (setq result attempt)
	  (setq path (if (string-equal path "/")
			 ""
		       (file-name-directory (substring path 0 -1)))))))
    result))

(defun template-file-not-found-hook ()
  "Called when a find-file command has not been able to find the specified
file in the current directory. Sees if it makes sense to offer to start it
based on a template."
  (condition-case nil
      (if (and (find-template-file)
	       (y-or-n-p "Start with template file? "))
	  (progn (buffer-disable-undo)
		 (insert-file (find-template-file))
		 (goto-char (point-min))

		 ;; Magically do the variable substitutions
		 (let ((the-list template-replacements-alist))
		   (while the-list
		     (goto-char (point-min))
		     (replace-string (car (car the-list))
				     (funcall (cdr (car the-list)))
				     nil)
		     (setq the-list (cdr the-list))))
		 (goto-char (point-min))
		 (buffer-enable-undo)
		 (set-buffer-modified-p nil)))
    ;; This is part of the condition-case; it catches the situation where
    ;; the user has hit C-g to abort the find-file (since they realized
    ;; that they didn't mean it) and deletes the buffer that has already
    ;; been created to go with that file, since it will otherwise become
    ;; mysterious clutter they may not even know about.
    ('quit (kill-buffer (current-buffer))
	  (signal 'quit "Quit"))))

; Install the above routine
(or (memq 'template-file-not-found-hook find-file-not-found-hooks)
      (setq find-file-not-found-hooks
            (append find-file-not-found-hooks '(template-file-not-found-hook)))
)


(provide 'template-org)

