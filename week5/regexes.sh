#!/bin/bash
#CREATED BY: Christopher Chong
#DATE CREATED: 10AUG2023
#DATE LAST MODIFIED: 10AUG2023

#Find all sed statements
grep -r "sed" 

#Find all lines that start with the letter m
grep -r '^[m]'

#Find all lines that contain three digit numbers
grep -rP '(?<!\d)\d{3}(?!\d)'

#Find all echo statements with at least three words
#Find all lines that would make a good password (use your knowledge of cybersecurity to decide what makes a good password).
					