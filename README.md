Repo for code used in all presentation slides from the 2016 JNUC Presentation "Digging into Security, Compliance, and Reporting"

USAGE:

# 1_Set_Organization_Priorities

Policy: Generally "Once per computer" unless organizational values change.

Admins set organizational compliance for each listed item, which gets written to plist. The values default to "true," meaning if an organization wishes to disregard a given item they must set the value to false by changing the associated comment:

OrgScore1_1="true" or OrgScore1_1="false"

The script writes to /Library/Application Support/SecurityScoring/org_security_score.plist by default.

NOTE: Item "1.1 Verify all Apple provided software is current" is disabled by default.

# 2_Security_Audit_Compliance

Policy: Some recurring trigger to track compliance over time.

Reads the plist at /Library/Application Support/SecurityScoring/org_security_score.plist. For items prioritized (listed as "true,") the script queries against the current computer/user environment to determine compliance against each item.

Non-compliant items are recorded at /Library/Application Support/SecurityScoring/org_audit

# 2.5_Audit_List Extension Attribute

Set as Data Type "String."

Reads contents of /Library/Application Support/SecurityScoring/org_audit file and records to Jamf Pro inventory record.

# 2.6_Audit_Count Extension Attribute

Set as Data Type "Integer."

Reads contents of /Library/Application Support/SecurityScoring/org_audit file and records count of items to Jamf Pro inventory record. Usable with smart group logic (2.6_Audit_Count greater than 0) to immediately determine computers not in compliance.

# 3_Security_Remediation

Policy: Some recurring trigger to enforce compliance over time.

Reads the plist at /Library/Application Support/SecurityScoring/org_security_score.plist. For items prioritized (listed as "true,") the script applies recommended remediation actions for the client/user.

Recommended: Package modified log files (Section 3) and distribute by policy/imaging.
