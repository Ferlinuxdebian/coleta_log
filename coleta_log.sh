#!/bin/bash

trap stopLogPaste SIGINT
stopLogPaste() {
	echo " Um momento colerando os logs..."
	sleep 1
	fpaste /tmp/file_fernando.log
}

journalctl -f > /tmp/file_fernando.log