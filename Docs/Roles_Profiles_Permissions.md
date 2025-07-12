# Roles, Profiles & Permission Sets – HandsMen Threads

## 👥 Roles Hierarchy

- CEO
  - Sales Manager
  - Inventory Manager
  - Marketing Manager

Each role created under CEO with specific access rights.

## 🛡️ Profiles

- **Platform 1**
  - Cloned from Standard User
  - Custom Object Permissions:
    - HandsMen Product → Read, Create, Edit, Delete
    - Inventory → Read, Create, Edit, Delete

## 🧾 Permission Set – Permission_Platform_1

- Objects Assigned:
  - HandsMen Customer → Read, Create, Edit, Delete
  - HandsMen Order → Read, Create, Edit, Delete

Assigned to users with Platform 1 profile for extra flexibility.
