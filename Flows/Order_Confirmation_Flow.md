# Order Confirmation Email Flow – Record Triggered

## Flow Metadata

- **Version**: V1
- **Status**: Active
- **Type**: Record-Triggered Flow
- **Object**: `HandsMen_Order__c`
- **Trigger Condition**: A record is updated
- **Run Conditions**:
  - Entry Criteria: `Status__c = "Confirmed"`
  - Optimization: Actions and Related Records

## Elements Used

### 1. `Start Element`

- **Trigger Object**: `HandsMen Order`
- **Trigger Type**: Record is updated
- **Condition Logic**: Fires only when `Status__c` changes to "Confirmed"

### 2. `Send Order Confirmation Email`

- **Element Type**: Email Alert (Immediate)
- **Linked Email Alert**: `Order_Confirmation_Email_Alert`
- **Email Template**: `Order_Confirmation_Email`
- **Recipient Type**: Related Record → `Customer__c`
- **Label**: Send Order Confirmation Email
- **Timing**: Runs immediately after trigger condition is met

### 3. `End Element`

- Marks end of linear path with no branch logic

## 📬 Email Template Overview

```html
<p>Dear {!Order__c.Customer__c},</p>
<p>Your order #{!Order__c.Name} has been confirmed!</p>
<p>Thank you for shopping with us.</p>
<p>Best Regards,<br />Sales Team</p>
```
