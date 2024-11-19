# Dependabot Auto Merge Demo Repository

This repo demonstrates auto merging dependabot updates.

The templates/ folder contains a workflow file with outdated actions. Running
`outdate.sh` will update .github/dependabot.yml with a new timestamp in the
comments. Then you can run `gh-pr-cycle.sh` to submit and close a PR for the
change. After that, dependabot will open a PR for the outdated github actions.
That PR will trigger the dependabot-automerge.yml workflow. The outdated actions
will be updated an automatically merged.

- https://docs.github.com/en/code-security/dependabot/dependabot-version-updates/configuration-options-for-the-dependabot.yml-file
- https://github.com/fastify/github-action-merge-dependabot

> `git pull`. Remember, after you the dependabot PRs are merged the remote branch will be ahead of your local branch. So, you'll need to do a `git pull` to get synced up.
