echo "kbs-front git:"
(cd ../kbs-front && echo `git log --pretty=format:'%h' -n 1`)

echo "kbs-api git:"
(cd ../kbs-api && echo `git log --pretty=format:'%h' -n 1`)