# Data Model – HandsMen Threads

This document outlines the custom objects, fields, relationships, and key formulas used in the Salesforce-powered HandsMen Threads platform.

---

## 🧑 HandsMen Customer (`HandsMen_Customer__c`)
| Field API Name      | Type       | Description                  |
|---------------------|------------|------------------------------|
| FirstName           | Text       | Customer's first name        |
| LastName            | Text       | Customer's last name         |
| Full_Name__c        | Formula    | Combines first + last name   |
| Email               | Email      | Contact email                |
| Phone               | Phone      | Contact number               |
| Loyalty_Status__c   | Picklist   | Gold / Silver / Bronze       |
| Relationship Fields | Lookup     | Linked to Orders & Campaigns |

---

## 📦 HandsMen Order (`HandsMen_Order__c`)
| Field API Name      | Type        | Description                      |
|---------------------|-------------|----------------------------------|
| Name                | Auto Number | Order Number (O-{0000})          |
| Status__c           | Picklist    | Pending / Confirmed / Rejection |
| Quantity__c         | Number      | Number of items                  |
| Total_Amount__c     | Currency    | Monetary value of order          |
| Postal_Code__c      | Text        | Delivery postal code             |
| Customer__c         | Lookup      | Linked to HandsMen Customer      |
| Product__c          | Lookup      | Linked to HandsMen Product       |

---

## 👕 HandsMen Product (`HandsMen_Product__c`)
| Field API Name        | Type       | Description                        |
|-----------------------|------------|------------------------------------|
| Name                  | Text       | Product name                       |
| Stock_Quantity__c     | Number     | Inventory count                    |
| Category__c           | Picklist   | Shirt / Pant / Blazer, etc.        |
| Product_Description__c| Long Text  | Details about the garment          |
| Inventory__c          | Master-Detail | Linked to Inventory            |
| Order__c              | Lookup     | Linked to Order                    |

---

## 🧮 Inventory (`Inventory__c`)
| Field API Name      | Type       | Description                       |
|---------------------|------------|-----------------------------------|
| Name                | Auto Number | Inventory ID (I-{0000})          |
| Stock_Quantity__c   | Number     | Quantity remaining                |
| Stock_Status__c     | Formula    | "Available" or "Low Stock"        |
| Product__c          | Master-Detail | Product being tracked         |

---

## 📣 Marketing Campaign (`Marketing_Campaign__c`)
| Field API Name      | Type        | Description                     |
|---------------------|-------------|---------------------------------|
| Name                | Auto Number | Campaign ID (MC-{0000})         |
| Customer__c         | Lookup      | Related customer                 |
| Campaign_Type__c    | Picklist    | Promo / Loyalty / Outreach      |
| Budget__c           | Currency    | Estimated budget                 |

---

## 🔗 Relationships Summary

- **HandsMen Order → Customer**: `Lookup`
- **HandsMen Order → Product**: `Lookup`
- **Product → Inventory**: `Master-Detail`
- **Marketing Campaign → Customer**: `Lookup`

---

## 🧠 Formula Fields

| Object             | Field Name         | Formula Logic                                      |
|--------------------|--------------------|----------------------------------------------------|
| Inventory          | Stock_Status__c    | `IF(Stock_Quantity__c > 10, "Available", "Low Stock")` |
| HandsMen Customer  | Full_Name__c       | `FirstName & " " & LastName`                      |

---

## 📌 Validation Rules

| Object            | Field              | Rule Formula                      | Error Message                            |
|-------------------|--------------------|------------------------------------|------------------------------------------|
| HandsMen Order    | Total_Amount__c    | `Total_Amount__c <= 0`            | "Please enter correct amount"            |
| Inventory         | Stock_Quantity__c  | `Stock_Quantity__c <= 0`          | "Inventory count is never less than zero"|
| HandsMen Customer | Email              | `NOT CONTAINS(Email, "@gmail.com")` | "Please fill correct Gmail"            |

