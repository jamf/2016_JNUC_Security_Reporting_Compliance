#!/bin/bash

# Security Reporting - Count Risks

auditfile=/Library/Application\ Support/SecurityScoring/org_audit
echo "<result>`cat \"$auditfile\" | grep "*" | wc -l`</result>"