# Stock Alert Email Flow – Record Triggered

## Flow Metadata
- **Flow Name**: Stock Alert Flow
- **Version**: V1
- **Status**: Active
- **Type**: Record-Triggered Flow
- **Object**: `Inventory__c`
- **Trigger Condition**: A record is created or updated
- **Run Frequency**: Immediately upon criteria match
- **Optimization**: Actions and Related Records

---

## Purpose

Automatically alert the warehouse or inventory team and the **Inventory Manager** when stock quantity falls below a critical threshold (less than 5 units), ensuring timely replenishment and minimizing stockouts.

---

## Flow Steps Overview

### 1. Start Element
- **Trigger**: Record creation or update
- **Object**: Inventory
- **Condition Logic**:
  - Trigger when:
    - `Stock_Quantity__c < 5`
  - Run every time a record meets the condition criteria

---

### 2. Send Low Stock Email Alert
- **Element Type**: Email Alert (Immediate Action)
- **Label**: Send Low Stock Email Alert
- **Alert Configuration**:
  - Uses Classic Email Template `Low_Stock_Alert`
  - Recipient: Inventory Manager (predefined in Email Alert setup)
  - Dynamic fields included (e.g. Product name, current stock)
- **Timing**: Executes immediately after condition is met

---

### 3. End
- Linear execution with no branching logic or scheduled paths

---

