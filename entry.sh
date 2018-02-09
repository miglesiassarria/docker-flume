#!/bin/bash

flume-ng agent --conf /flume/apache-flume-1.8.0-bin/conf --conf-file /flume/apache-flume-1.8.0-bin/conf/test.conf --name a1 -Dflume.root.logger=INFO,console