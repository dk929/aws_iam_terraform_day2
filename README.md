# Day 2 – Audit AWS IAM with Prowler + Terraform Fix

## ✅ What I Did
- Modified IAM user policy to full admin (demo misconfig)
- Ran Prowler audit from Kali Linux
- Detected dangerous permissions
- Fixed policy to least privilege

## ❓ What I Learned
- Importance of principle of least privilege
- How Prowler identifies IAM misconfigs
- How to remediate insecure policies

## ⚠️ Problems I Faced
- Example: AWS CLI permission errors in Kali
- Example: Slow report generation

## 💡 Fixes
- Configured correct profile in `aws configure`
- Used smaller region scans for testing

