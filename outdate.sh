#!/bin/sh

# put the outdated workflow file back in place so dependabot can update it
cp -f .templates/outdated-workflow.yml .github/workflows/workflow.yml


# prepend a new date to the top of the dependabot.yml file to force dependabot
# to run
echo "# `date`" >> .github/tmp.txt
tail -n 10 .github/dependabot.yml >> .github/tmp.txt
mv -f .github/tmp.txt .github/dependabot.yml



