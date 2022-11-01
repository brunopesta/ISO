#!/bin/bash
echo $(ls) | tr -d 'a'  | tr -d 'A'  | tr -t 'a-zA-Z' 'A-Za-z'
