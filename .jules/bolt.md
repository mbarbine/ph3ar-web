## 2024-04-11 - Sequelize raw queries
**Learning:** Using `raw: true` in Sequelize read-only queries avoids expensive model instantiation and provides an easy performance boost.
**Action:** Always use `raw: true` when a Sequelize query simply returns data that isn't modified using instance methods like `.save()`.
