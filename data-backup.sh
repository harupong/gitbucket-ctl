#!/bin/bash

tar -zcf ~/gitbucket-data.tar.gz ~/.gitbucket
rclone copy ~/gitbucket-data.tar.gz dropbox:config/gitbucket
rm ~/gitbucket-data.tar.gz
