#!/bin/sh
REPO=<path_to_repo>
UPSTREAM=${1:-'@{u}'}
LOCAL=$(git -C ${REPO} rev-parse @)
REMOTE=$(git -C ${REPO} rev-parse "$UPSTREAM")
BASE=$(git -C ${REPO} merge-base @ "$UPSTREAM")
git -C ${REPO} fetch

if [ $LOCAL = $REMOTE ]; then
    echo "Up-to-date"
elif [ $LOCAL = $BASE ]; then
    echo "Need to pull"
    #git -C ${REPO} pull
elif [ $REMOTE = $BASE ]; then
    echo "Need to push"
    #git -C ${REPO} push
else
    echo "Diverged"
fi
