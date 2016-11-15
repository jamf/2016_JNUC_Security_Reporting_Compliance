#!/bin/bash

# Security Reporting - Count Risks

auditfile=/Library/Application\ Support/SecurityScoring/org_audit
reportcount=$(cat "$auditfile" | grep "*" | wc -l | tr -d '[:space:]')
echo "<result>$(cat "$auditfile" | grep "*" | wc -l | tr -d '[:space:]')</result>"