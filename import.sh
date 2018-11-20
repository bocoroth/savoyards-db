#!/bin/bash

# Generate an sql file that is importable in one step

cp savoyards_database.sql savoyards
cat savoyards_table_*.sql >> savoyards
cat savoyards_view_*.sql >> savoyards
cat savoyards_extra.sql >> savoyards
mv savoyards import.sql
