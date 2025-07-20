-- creación de tablas de la base de datos

-- Tabla productos
CREATE TABLE productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) CHECK (precio > 0),
    cantidad_inventario INT CHECK (cantidad_inventario >= 0)
);

-- Tabla proveedores
CREATE TABLE proveedores (
    id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(15),
    email VARCHAR(100)
);

-- Tabla transacciones
CREATE TABLE transacciones (
    id_transaccion INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(10) CHECK (tipo IN ('compra', 'venta')),
    fecha DATE NOT NULL,
    cantidad INT CHECK (cantidad > 0),
    id_producto INT,
    id_proveedor INT,
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);
