#!/bin/bash
#CREATED BY: Christopher Chong
#DATE CREATED: 10AUG2023
#DATE LAST MODIFIED: 11AUG2023

#Find all sed statements
grep -r "sed" 

#Find all lines that start with the letter m
grep -r '^[m]'

#Find all lines that contain three digit numbers
grep -rP '(?<!\d)\d{3}(?!\d)'

#Find all echo statements with at least three words
grep -rE '\w\s+\w\w+\s+\w'

#Find all lines that would make a good password (use your knowledge of cybersecurity to decide what makes a good password).
#Finding all words that have 8 or more characters, at least 1 digit, at least one special character and at least one upper case charater.
grep -rP '^(?=.*\w{8,})(?=.*[0-9]+)(?=.*[@#$]+)(?=.*[A-Z]+)'
