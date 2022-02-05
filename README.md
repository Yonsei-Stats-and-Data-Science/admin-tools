# Admin Tools For Cluster Management

This document contains various scripts and configuration files for the Yonsei Chilipepper cluster.

## User Mangement

`user-mangement/create-yonsei-user.sh` allows the administrator to create new users easily. Run this simultaneously across all nodes to unify UID and GID.

```bash
bash /mnt/nas/admin/user-mangement/create-yonsei-user.sh someusername
# after the above command enter a initial password for each user
```

