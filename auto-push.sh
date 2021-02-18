#! /bin/bash

# commit user info
USER_NAME=Unidentified539
USER_EMAIL=solomonaziel9@gmail.com

# repository root path
DIR=/home/theprogrmmer/Java-Practice-Notes

# target dir or file path
#TARGETS=2018/1208-osc
TARGETS=.

# interval[sec]
INTERVAL=0

# message
MESSAGE="auto commit"

# git add, commit, push
push () {
    regex="^.*nothing to commit"
    if [[ "$(git status)" =~ ${regex} ]]; then
        return
    fi
    git add ${TARGETS}
    #git commit -m "${MESSAGE}"
    #git commit -m "${MESSAGE}" --amend
    #git commit -m "${MESSAGE}" --amend --date="$(env LANG=C date)"
    git -c user.name=${USER_NAME} -c user.email=${USER_EMAIL} commit -m "${MESSAGE}" --amend --date="$(env LANG=C date)"
    git push -f origin
}

cd ${DIR}

while true;
do
    push
    sleep ${INTERVAL}
done

