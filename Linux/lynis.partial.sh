#! /bin/bash
lynis audit --tests-from-group malware,authenticatiob,networking,storage,filesystems  >> /tmp/lynis.partial_scan.log


