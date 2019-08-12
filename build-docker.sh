echo "BUILD kbs-front"
(cd ../kbs-front && bash ./build-docker.sh `git log --pretty=format:'%h' -n 1` . )

echo "BUILD kbs-api & kbs-schema"
(cd ../kbs-api && bash ./build-docker.sh `git log --pretty=format:'%h' -n 1` . )