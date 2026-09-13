# Salesforce DevOps Repository

> Managed by **HAV-IQ**

## Initial Setup — Seed Production Metadata

Run these commands once to seed this repo with your Production org metadata:

### 1. Authenticate to Production

```bash
sf org login web --alias prod --instance-url https://orgfarm-4231aac40e-dev-ed.develop.my.salesforce.com
```

### 2. Retrieve metadata

```bash
sf project retrieve start --manifest manifest/package.xml --target-org prod
```

### 3. Commit and push

```bash
git add .
git commit -m "chore: seed production metadata"
git push origin main
```
