#!/usr/bin/env bash


EMAIL_POSTFIX='@test.com'
email="$(git config --local --get user.email)"

exec < /dev/tty

echo "Something important to mention!"
echo -n "Continue? [y/n] "
read -r answer

[[ ! "$answer" =~ ^([yY][eE][sS]|[yY])$ ]] && echo 'commit aborted' && exit 1


if [[ ! "$email" == *"$EMAIL_POSTFIX" ]]
then
  echo "Configured email $email is no $EMAIL_POSTFIX address"
  exit 1
fi
