#!/bin/bash
uploadToGitHub () {
echo $1
file=`basename $1`
echo $file
curl \
  --fail \
  -X POST \
  --data-binary @$1 \
  -H 'Content-Type: application/octet-stream' \
  -H "Authorization: Bearer ${RELEASE_GITHUB_TOKEN}" \
  "${RELEASE_ASSETS_UPLOAD_URL}?name=$file"
return $?
}

echo "release url $RELEASE_ASSETS_UPLOAD_URL"


echo "copying RPMS/SRPMS ..."
find . -name "*.rpm" -type f | xargs -i uploadToGitHub {} .



