# Load .bashrc, containing non-login related bash initializations.
source ~/.bashrc

# Add bash aliases.
if [ -f ~/.bash_project ]; then
    source ~/.bash_project
fi

# Set the default editor to vi
export EDITOR=emacs

# Add some enviroment variables
XAMPP_HOME=/Applications/XAMPP
WORKSHOP=$HOME/Workshop
WORKSPACE=$HOME/Workspace
TOMCAT5_HOME=$WORKSHOP/apache-tomcat-5.5.27
TOMCAT6_HOME=$WORKSHOP/apache-tomcat-6.0.35
ANT17_HOME=$WORKSHOP/apache-ant-1.7.0
ANT18_HOME=$WORKSHOP/apache-ant-1.8.4
ANDROID_SDK_HOME=$WORKSHOP/AndroidSDK/adt-bundle-mac-x86_64-20130219
GRAILS_HOME=$WORKSHOP/grails-2.2.4
NODE_JS_HOME=$WORKSHOP/node-v0.10.20-darwin-x64
GRADLE_HOME=$WORKSHOP/gradle-1.10
MAVEN_HOME=/$WORKSHOP/apache-maven-3.1.1

export ANT_HOME=$ANT18_HOME
export JBOSS4_HOME=$WORKSHOP/jboss-4.0.5.GA
export CATALINA_HOME=$TOMCAT6_HOME
export JBOSS_HOME=$JBOSS4_HOME
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home
export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export SVN_EDITOR=vi
export GLOBUS_LOCATION=$WORKSHOP/ws-core-4.0.3

# Add some more custom software to PATH.
export PATH=$PATH:$JAVA_HOME/bin:/opt/subversion/bin:$WORKSHOP/bin:$XAMPP_HOME/xamppfiles/bin:$ANT_HOME/bin
export PATH=$MAVEN_HOME/bin:$NODE_JS_HOME/bin:$GRADLE_HOME/bin:$PATH
