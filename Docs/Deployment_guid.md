# Deployment Guide – HandsMen Threads

## Prerequisites

- Salesforce Developer Edition
- VS Code with Salesforce Extension
- Access to Metadata and Sample Data

## Steps

1. Clone repo from GitHub
2. Use Salesforce DX or Workbench to deploy custom objects and flows
3. Create email templates manually in Setup
4. Assign Permission Sets and Roles to users
5. Load sample data via Data Import Wizard or Dataloader
6. Activate Scheduled Flow for Loyalty Updates
7. Schedule Apex Batch via Anonymous Window:

```apex
   System.schedule('Daily Inventory Sync', '0 0 0 * * ?', new InventoryBatchJob());
```
