SELECT
    fk.name AS ForeignKeyName,
    OBJECT_SCHEMA_NAME(fk.parent_object_id) AS FactSchema,
    OBJECT_NAME(fk.parent_object_id) AS FactTable,
    COL_NAME(fkc.parent_object_id, fkc.parent_column_id) AS FactColumn,
    OBJECT_SCHEMA_NAME(fk.referenced_object_id) AS DimensionSchema,
    OBJECT_NAME(fk.referenced_object_id) AS DimensionTable,
    COL_NAME(fkc.referenced_object_id, fkc.referenced_column_id) AS DimensionColumn
FROM sys.foreign_keys fk
INNER JOIN sys.foreign_key_columns fkc
    ON fk.object_id = fkc.constraint_object_id
WHERE OBJECT_SCHEMA_NAME(fk.parent_object_id) = 'warehouse'
ORDER BY FactTable, ForeignKeyName;