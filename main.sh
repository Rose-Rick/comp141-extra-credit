#!/bin/bash

mkdir output

cp tenlines.txt output/ #copy tenlines into /output

cd output/

cat tenlines.txt > read.txt #read tenlines and save that output to read.txt

pwd > pwd.txt

ls > ls.txt

alias date="today's date (according to vm) is: '+%m/%d/%y'" | date > date.txt

wc -w testfile1.txt > textcount.txt	#word count .txt file, send output to textcont

ps | head -n 5 > process.txt		#run ps command, read first words of output up to 5,
						#then send that txt to process.txt
ifconfig | head -n 5 > netstat.txt
mount | head -n 5 > mount.txt

echo "this file is empty on purpose, but it should have global rwx permissions" > permissions.txt 
chmod 777 permissions.txt #give +rwx permissions to all groups

TESTENV1="test"

grep -E '^[A-Za-z]{3,}$' testfile1.txt > regex.txt #all words w/ 3+ letters

cd .. #cd back to extra-credit
