# Validation Rules – HandsMen Threads

## HandsMen Order\_\_c

- **Total Amount Validation**
  - Rule: `Total_Amount__c <= 0`
  - Message: “Please enter correct amount”

## Inventory\_\_c

- **Stock Quantity Validation**
  - Rule: `Stock_Quantity__c <= 0`
  - Message: “Inventory count is never less than zero”

## HandsMen Customer\_\_c

- **Email Validation**
  - Rule: `NOT CONTAINS(Email, "@gmail.com")`
  - Message: “Please fill correct Gmail”
