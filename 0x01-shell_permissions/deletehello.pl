#!/usr/bin/perl

system("sudo rm hello");
system("git add --all");
system("git commit -m 'update'");
system("git push origin master"); 
