#!/bin/bash

#To ensure escape sequences are respected (handles the backslashes correctly), we include -e
echo -e "message: \033[32mhello\033[00m"

echo -e "message: \033[32mThis is an important message!\033[00m"

echo -e "message: \033[32mhello\033[00m"