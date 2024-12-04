/* ============================================================
   TCL - Transaction Control Language: Used to manage database transactions.
   ------------------------------------------------------------
   Common TCL Commands:
   - **COMMIT**: Save all changes made during the current transaction.
   - **ROLLBACK**: Undo changes made during the current transaction.
   - **SAVEPOINT**: Set a point in the transaction to which you can roll back.
   ============================================================ */

/* ==========================
   1. COMMIT: Save Changes Permanently
   --------------------------
   Use the `COMMIT` command to save all changes made during the current transaction permanently in the database.
   ========================== */
COMMIT;

-- **Explanation**:
-- 1. The `COMMIT` command confirms all changes made during the current transaction.
-- Example Result: All changes (such as `INSERT`, `UPDATE`, `DELETE`) are saved permanently.


/* ==========================
   2. SAVEPOINT: Mark a Specific Point in the Transaction
   --------------------------
   Use the `SAVEPOINT` command to divide a longer transaction into smaller parts.
   You can roll back to this point if necessary, without undoing the entire transaction.
   
   Example 1: Start a transaction and create savepoints.
   ========================== */
SAVEPOINT s1;
INSERT INTO student_data VALUES (105, 'alex', 'a.com', 454549);  -- Insert record
INSERT INTO student_data VALUES (106, 'lex', 'l.com', 132324);   -- Insert record

-- **Explanation**:
-- 1. The `SAVEPOINT s1` sets a point at which you can roll back to if needed.
-- Example Result: Changes are temporarily saved, but not committed yet.

SAVEPOINT s2; 
UPDATE student_data SET email = 'j.com' WHERE student_id = 101;  -- Update email

-- **Explanation**:
-- 2. The `SAVEPOINT s2` is created after the `UPDATE` statement, marking another point in the transaction.
-- Example Result: The `UPDATE` changes are temporarily saved.

SAVEPOINT s3; 
DELETE FROM student_data WHERE student_id = 106;  -- Delete record

-- **Explanation**:
-- 3. The `SAVEPOINT s3` is created after the `DELETE` statement.
-- Example Result: The `DELETE` operation is temporarily saved.


/* ==========================
   3. ROLLBACK: Undo Changes Made
   --------------------------
   Use the `ROLLBACK` command to undo the changes made during the transaction up to a certain point.
   
   Example 1: Rollback all changes made since the last savepoint.
   ========================== */
ROLLBACK;

-- **Explanation**:
-- 1. The `ROLLBACK` command undoes all changes made since the transaction started (or since the last `COMMIT`).
-- Example Result: All previous `INSERT`, `UPDATE`, and `DELETE` changes are undone, and the database returns to its previous state.


/* ==========================
   4. ROLLBACK TO SAVEPOINT: Undo Changes to a Specific Savepoint
   --------------------------
   Use `ROLLBACK TO SAVEPOINT` to undo changes made after a specific savepoint, without rolling back the entire transaction.
   
   Example 1: Rollback to a specific savepoint (s3).
   ========================== */
ROLLBACK TO s3;

-- **Explanation**:
-- 1. The `ROLLBACK TO s3` command undoes all changes made after the `SAVEPOINT s3`, including the `DELETE` operation.
-- Example Result: The record for `student_id = 106` will be restored.

-- Example 2: Rollback to the previous savepoint (s2).
ROLLBACK TO s2;

-- **Explanation**:
-- 2. The `ROLLBACK TO s2` command undoes all changes made after the `SAVEPOINT s2`, including the `UPDATE` operation.
-- Example Result: The email for `student_id = 101` will be restored to its previous value.

-- Example 3: Rollback to the initial savepoint (s1).
ROLLBACK TO s1;

-- **Explanation**:
-- 3. The `ROLLBACK TO s1` command undoes all changes made after the `SAVEPOINT s1`, including both `INSERT` operations.
-- Example Result: The records for `student_id = 105` (alex) and `student_id = 106` (lex) will be removed.


/* ==========================
   5. Viewing Current Data
   --------------------------
   After performing rollback operations, we can check the current state of the table.
   ========================== */
SELECT * FROM student_data;

-- **Explanation**:
-- 1. The `SELECT *` command retrieves the current state of the `student_data` table.
-- Example Result: The result shows the records that remain after the `ROLLBACK` commands.


/* ============================================================
   Summary:
   - **COMMIT**: Permanently save changes made in the transaction.
   - **ROLLBACK**: Undo all changes made since the transaction started.
   - **ROLLBACK TO SAVEPOINT**: Undo changes made after a specific savepoint.
   ============================================================ */
