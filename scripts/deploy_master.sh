#!/bin/bash
zip -9 -r  stdm_${TRAVIS_BRANCH}.zip stdm
curl --ftp-create-dirs  --output --fail --upload-file stdm_${TRAVIS_BRANCH}.zip -u $FTP_USER:$FTP_PASSWORD ftp://$FTP_ADDRESS:$FTP_PORT/plugin/stable/
