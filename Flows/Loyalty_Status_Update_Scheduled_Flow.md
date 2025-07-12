# Loyalty Status Update – Scheduled Flow

## Flow Metadata

- **Flow Name**: Loyalty Status Update Flow
- **Version**: V1
- **Status**: Inactive (as of July 12, 2025, 10:26 AM)
- **Type**: Schedule-Triggered Flow
- **Run Frequency**: Daily
- **Start Time**: July 12, 2025, 12:00 AM

## Purpose

To automate loyalty tier assignment (Gold / Silver / Bronze) based on each customer’s total purchase value. This ensures personalization and consistent tier management without manual review.

---

## Flow Logic Breakdown

### 1. Get Records

- **Element Name**: Get All the records
- **Object**: `HandsMen_Customer__c`
- **Criteria**: Retrieve all records
- **Storage**: Automatically store all fields
- **Variable**: `HandsMen_Customer_from_Get_All_the_records`

---

### 2. Loop Through Each Customer

- **Element Name**: Loop Through Each Customer
- **Input Collection**: Customer records from Get Records
- **Direction**: First to Last
- **Loop Variable**: `Current_Item_from_Loop`

---

### 3. ⚖️ Decision – Loyalty Logic

- **Element Name**: Loyalty Logic
- **Conditions**:
  - Outcome 1: `Gold` → If `Total_Purchases__c > 1000`
  - Outcome 2: `Bronze` → If `Total_Purchases__c < 500`
  - Default Outcome: `Silver` → Applies to all other values

---

### 4. Update Records

#### Update Loyalty to Gold

- **Element Name**: Update The Loyalty Status to Gold
- **Record Source**: Use current loop record
- **Field Update**: `Loyalty_Status__c = 'Gold'`

#### Update Loyalty to Bronze

- **Element Name**: Update The Loyalty Status to Bronze
- **Record Source**: Use current loop record
- **Field Update**: `Loyalty_Status__c = 'Bronze'`

#### Update Loyalty to Silver

- **Element Name**: Update The Loyalty Status to Silver
- **Record Source**: Use current loop record
- **Field Update**: `Loyalty_Status__c = 'Silver'`

---

## Business Impact

- Guarantees daily review of customer loyalty scores
- Powers downstream features like reward eligibility and personalized campaigns
- Eliminates manual tier assignment and ensures consistent brand engagement

---

## Flow Design Notes

- Always use **loop record** for updates (not conditions), to avoid mass updates and ensure accurate scope
- Can be enhanced with notifications or reward trigger logic in future phases
