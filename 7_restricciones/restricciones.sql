BEGIN TRY
    BEGIN TRANSACTION;

    -- Operaciones
    UPDATE productos SET cantidad_inventario = cantidad_inventario - 5 WHERE id_producto = 1;

    COMMIT;
END TRY
BEGIN CATCH
    ROLLBACK;
    PRINT ERROR_MESSAGE();
END CATCH;
