/* ============================================================
   DCL - Data Control Language: Used to define access privileges for users.
   ------------------------------------------------------------
   Common DCL Commands:
   - **GRANT**: Assign specific privileges (such as `SELECT`, `INSERT`) to users.
   - **REVOKE**: Remove previously assigned privileges from users.
   ============================================================ */

/* ==========================
   1. CREATE USER: Create a New User in Oracle
   --------------------------
   To create a new user in Oracle, you use the `CREATE USER` command.
   
   Example:
   Creating a new user `new_user` with the password `pwd123`.
   ========================== */
CREATE USER new_user IDENTIFIED BY pwd123;

-- **Explanation**:
-- The `CREATE USER` command creates a new user `new_user` in the Oracle database with the password `pwd123`.

-- After creating the user, the next step is to assign access privileges.


/* ==========================
   2. GRANT CONNECT Privilege: Give Access to the User
   --------------------------
   Use the `GRANT` command to give a user access privileges. The `CONNECT` privilege allows the user to log into the database.

   Example:
   Granting `CONNECT` privilege to `new_user`.
   ========================== */
GRANT CONNECT TO new_user;

-- **Explanation**:
-- The `GRANT CONNECT` command allows the `new_user` to connect to the database.
-- Example Result: The user can now log in to the database.

-- Next, we'll grant specific access to database objects.


/* ==========================
   3. GRANT SELECT Privilege: Give Access to Query Data
   --------------------------
   You can grant access to specific tables or views. For example, granting `SELECT` privilege on the `employees` table in the `hr` schema.

   Example:
   Granting `SELECT` privilege on the `hr.employees` table to `new_user`.
   ========================== */
GRANT SELECT ON hr.employees TO new_user;

-- **Explanation**:
-- The `GRANT SELECT` command allows `new_user` to query the `employees` table in the `hr` schema.
-- Example Result: The user can now run `SELECT` queries on the `employees` table.


/* ==========================
   4. GRANT ALL Privileges: Give All Access to the User
   --------------------------
   If you want to give the user full access to a table, you can grant all privileges.
   
   Example:
   Granting `ALL` privileges (such as `SELECT`, `INSERT`, `UPDATE`, `DELETE`) on the `hr.employees` table to `new_user`.
   ========================== */
GRANT ALL ON hr.employees TO new_user;

-- **Explanation**:
-- The `GRANT ALL` command gives `new_user` full access to the `hr.employees` table.
-- Example Result: The user can now query, insert, update, and delete records in the `employees` table.


/* ==========================
   5. REVOKE Privileges: Withdraw Access from the User
   --------------------------
   If you need to withdraw previously granted privileges, you can use the `REVOKE` command.

   Example:
   Revoking all privileges on `hr.employees` from `new_user`.
   ========================== */
REVOKE ALL ON hr.employees FROM new_user;

-- **Explanation**:
-- The `REVOKE ALL` command removes all privileges (such as `SELECT`, `INSERT`, `UPDATE`, `DELETE`) that were granted on the `employees` table from the `new_user`.
-- Example Result: The user can no longer perform any operations on the `employees` table.


/* ==========================
   6. REVOKE CONNECT Privilege: Remove Database Access
   --------------------------
   You can also revoke the `CONNECT` privilege to prevent the user from logging into the database.

   Example:
   Revoking the `CONNECT` privilege from `new_user`.
   ========================== */
REVOKE CONNECT FROM new_user;

-- **Explanation**:
-- The `REVOKE CONNECT` command prevents the `new_user` from logging into the database.
-- Example Result: The user will no longer be able to connect to the database.
