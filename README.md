# Git Commit Hook Example

This script checks if the configured git user email ends with a specific string. If not, the commit is aborted.

Install git hook: `install.sh <script name> <git hook name>`
```
install.sh "my-custom-pre-commit-hook.sh" "pre-commit"
```

Configure GIT user email (for testing):
```
git config --local user.email "test@test.com"
```