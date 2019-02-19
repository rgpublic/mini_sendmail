#!/bin/bash

gcc -static -o mini_sendmail mini_sendmail.c

mail='From: nobody@example.com
Subject: This is a test message
To: test@test.com,test4@test.com
Cc: test1@test.com,test2@test.com,
 test3@test.com
';

echo "$mail" | ./mini_sendmail -t -ftestx@test.com "-xX-Demo: Test" -v
#echo "$mail" | ./mini_sendmail -t -v
#echo "$mail" | ./mini_sendmail -t -ftestx@test.com -v

