/* ============================================================
   DML - Data Manipulation Language: Used to manipulate data within tables.
   ------------------------------------------------------------
   Common DML Commands:
   - **SELECT**: Retrieve data from the database.
   - **INSERT**: Insert new records into a table.
   - **UPDATE**: Modify existing data in a table.
   - **DELETE**: Remove records from a table.
   ============================================================ */

/* ==========================
   1. SELECT: Retrieve Data
   --------------------------
   Use the `SELECT` command to read data from a table.
   Example: Retrieve all data from `student_data1` table.
   ========================== */
SELECT * FROM student_data1;

-- **Explanation**:
-- 1. The `SELECT *` retrieves all columns and rows from the `student_data1` table.
-- Example Result: Displays all the records stored in the `student_data1` table.


/* ==========================
   2. INSERT: Add New Records
   --------------------------
   Use the `INSERT INTO` command to add new rows to a table.
   
   Example 1: Insert a complete row into `student_data1`.
   ========================== */
INSERT INTO student_data1 VALUES (101, 'john', 'j.com', 433434);

-- **Explanation**:
-- 1. The `INSERT INTO` statement adds a new row with the values `(101, 'john', 'j.com', 433434)` to the `student_data1` table.
-- Example Result: The table now has a new record with `student_id = 101`, `sname = john`, `email = j.com`, and `ph_no = 433434`.

-- Example 2: Insert a row with specific columns.
INSERT INTO student_data1 (student_id, sname, ph_no) VALUES (102, 'steven', 344455);

-- **Explanation**:
-- 1. The second `INSERT INTO` command adds a new row, but only the `student_id`, `sname`, and `ph_no` columns are specified.
-- Example Result: The new record is inserted with the values `(102, 'steven', 344455)`.

-- Example 3: Insert another row by specifying all columns.
INSERT INTO student_data1 VALUES (103, 'peter', 'p.com', 485495);

-- **Explanation**:
-- 1. The third `INSERT INTO` command inserts a new row with values for all columns.
-- Example Result: A new record for `peter` with `student_id = 103` is inserted.

-- Example 4: Insert another record.
INSERT INTO student_data1 VALUES (104, 'neena', 'n.com', 232323);

-- **Explanation**:
-- 1. This inserts a new row for `neena` with the corresponding details.
-- Example Result: The table now contains four records.


/* ==========================
   3. UPDATE: Modify Existing Data
   --------------------------
   Use the `UPDATE` command to modify existing rows in a table.
   
   Example 1: Update a record's email for `student_id = 101`.
   ========================== */
UPDATE student_data1 SET email = 'john.com' WHERE student_id = 101;

-- **Explanation**:
-- 1. This command updates the `email` of the student with `student_id = 101` to `'john.com'`.
-- Example Result: The `email` column for `john` (with `student_id = 101`) is updated to `'john.com'`.

-- Example 2: Update the email for `student_id = 103`.
UPDATE student_data1 SET email = 'p.com' WHERE student_id = 103;

-- **Explanation**:
-- 1. The command changes the `email` for `peter` (with `student_id = 103`) to `'p.com'`.
-- Example Result: The `email` column for `peter` is now `'p.com'`.


/* ==========================
   4. DELETE: Remove Records
   --------------------------
   Use the `DELETE` command to remove specific rows from a table.
   
   Example 1: Delete the row with `student_id = 104`.
   ========================== */
DELETE FROM student_data1 WHERE student_id = 104;

-- **Explanation**:
-- 1. The `DELETE` command removes the record where `student_id = 104` (for `neena`).
-- Example Result: The `student_data1` table no longer contains the record for `neena`.


-- Example 2: Delete a record using the `ROWID`.
DELETE FROM student_data1 WHERE ROWID = 'AAAFVxAAEAAAANOAAF';

-- **Explanation**:
-- 1. This `DELETE` command removes the record using the unique `ROWID`. The `ROWID` is a special unique identifier for each record in the database.
-- Example Result: A specific row will be removed using its `ROWID` value.


/* ==========================
   5. ROWID: Special Unique Identifier
   --------------------------
   `ROWID` is a unique identifier for rows in a table. It can be used for efficient data retrieval and deletion.
   
   Example: Display `ROWID` along with other columns.
   ========================== */
SELECT student_id, sname, ROWID FROM student_data1;

-- **Explanation**:
-- 1. The `SELECT` command retrieves `student_id`, `sname`, and `ROWID` columns from the `student_data1` table.
-- Example Result: Each row is displayed with its `student_id`, `sname`, and corresponding unique `ROWID`.


/* ============================================================
   Summary:
   - **SELECT**: Retrieve data from the table.
   - **INSERT**: Add new rows with specified values.
   - **UPDATE**: Modify existing data based on conditions.
   - **DELETE**: Remove records either using conditions or `ROWID`.
   ============================================================ */
