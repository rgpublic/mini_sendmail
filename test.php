#!/bin/bash

gcc -o mini_sendmail mini_sendmail.c

mail='subject: Testsubject
From: no-one@example.com
Subject: This is a test message
To: test@test.com,
Cc: test1@test.com,test2@test.com,
 test3@test.com
';

echo "$mail" | ./mini_sendmail -t -ftestx@test.com -v
