# Recommended Run Order

SQL files depend on tables existing first. Run them in this order.

---

## Main Learning Database

### Step 1: Create the database

```text
01_sql_basics/01_create_database.sql
```

### Step 2: Create the tables

```text
01_sql_basics/02_create_tables.sql
```

### Step 3: Insert sample data

```text
01_sql_basics/03_insert_records.sql
```

### Step 4: Practice basic queries

```text
01_sql_basics/04_select_queries.sql
01_sql_basics/05_update_records.sql
01_sql_basics/06_delete_records.sql
```

### Step 5: Filtering and sorting

```text
02_filtering_sorting/01_where_clause.sql
02_filtering_sorting/02_order_by_limit.sql
02_filtering_sorting/03_distinct_aliases.sql
02_filtering_sorting/04_logical_operators.sql
02_filtering_sorting/05_between_in_like.sql
```

### Step 6: Aggregation

```text
03_aggregate_grouping/01_aggregate_functions.sql
03_aggregate_grouping/02_group_by.sql
03_aggregate_grouping/03_having_clause.sql
```

### Step 7: Joins

Run the relationship schema first:

```text
04_joins_relationships/01_relationship_schema.sql
```

Then run:

```text
04_joins_relationships/02_inner_join.sql
04_joins_relationships/03_left_join.sql
04_joins_relationships/04_right_join.sql
04_joins_relationships/05_self_join.sql
04_joins_relationships/06_cross_join.sql
```

### Step 8: Subqueries and CTEs

```text
05_subqueries_ctes/01_single_row_subquery.sql
05_subqueries_ctes/02_multi_row_subquery.sql
05_subqueries_ctes/03_correlated_subquery.sql
05_subqueries_ctes/04_common_table_expression.sql
```

### Step 9: SQL functions

```text
06_sql_functions/01_string_functions.sql
06_sql_functions/02_numeric_functions.sql
06_sql_functions/03_date_functions.sql
06_sql_functions/04_case_expression.sql
```

### Step 10: Advanced SQL

```text
07_advanced_sql/01_views.sql
07_advanced_sql/02_indexes.sql
07_advanced_sql/03_transactions.sql
07_advanced_sql/04_window_functions.sql
```

---

## Practice Database

Run this first:

```text
08_practice_questions/01_sample_schema.sql
```

Then solve:

```text
08_practice_questions/02_beginner_questions.sql
08_practice_questions/03_intermediate_questions.sql
08_practice_questions/04_advanced_questions.sql
```

Check answers here:

```text
08_practice_questions/05_solutions.sql
```

---

## Important

If a query says a table does not exist, you skipped the setup file. Run the schema file first.
