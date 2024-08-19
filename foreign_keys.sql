ALTER TABLE shop.facturacion
ADD CONSTRAINT fk_facturacion_cliente
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);

ALTER TABLE shop.productos
ADD CONSTRAINT fk_productos_categoria
FOREIGN KEY (id_cat) REFERENCES categoria(id_cat);

ALTER TABLE shop.ventas
ADD CONSTRAINT fk_ventas_cliente
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);

ALTER TABLE shop.ventas
ADD CONSTRAINT fk_ventas_producto
FOREIGN KEY (id_producto) REFERENCES productos(id_producto);

ALTER TABLE shop.ventas
ADD CONSTRAINT fk_ventas_factura
FOREIGN KEY (id_factura) REFERENCES facturacion(id_factura);