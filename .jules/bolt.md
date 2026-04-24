## 2024-06-25 - Sequelize Read-Only Query Performance Optimization
**Learning:** Using `raw: true` in Sequelize `findOne` (and `findAll`) queries prevents expensive model object instantiation. This is particularly useful for read-only queries like authentication endpoints where the Sequelize instance methods are not needed, providing a measurable performance boost (~8%).
**Action:** Always add `raw: true` to Sequelize queries when the full model instance and its methods are not required, especially on high-traffic endpoints.
