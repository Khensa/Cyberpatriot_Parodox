@echo off

net accounts /minpwlen:14
net accounts /minpwage:5
net accounts /louckoutduration:30
net accounts /lockoutthreshold:5
net accounts /lockoutwindow: 10
net accounts /minpwage:30
