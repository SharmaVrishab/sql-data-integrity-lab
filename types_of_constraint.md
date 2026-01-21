ROW LEVEL CONSTRAINT

| Constraint               | What it protects |
| ------------------------ | ---------------- |
| `NOT NULL`               | Missing values   |
| `CHECK`                  | Invalid ranges   |
| `DEFAULT`                | Missing inputs   |
| `UNIQUE` (single column) | Duplicate values |
| `PRIMARY KEY`            | Row identity     |

TABLE LEVEL CONSTRAINT
| Constraint | What it protects |
| ----------------------- | -------------------- |
| Composite `UNIQUE` | Logical duplication |
| `FOREIGN KEY` | Orphaned facts |
| Composite `PRIMARY KEY` | Natural keys |
| Multi-column `CHECK` | Cross-field validity |
