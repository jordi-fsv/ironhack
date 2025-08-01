INSERT INTO coches (id, vin, fabricante, modelo, año, color)
VALUES (0, '3K096I98581DHSNUP', 'Volkswagen','Tiguan', 2019,'Blue'),
(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot','Rifter', 2019, 'Red'),
(2, 'RKXVNNIHLVVZOUB4M', 'Ford','Fusion', 2018, 'White'),
(3, 'HKNDGS7CU31E9Z7JW','Toyota','RAV4', 2018, 'Silver'),
(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo','V60 Cross Country', 2019, 'Gray');


INSERT INTO clientes (id, id_cliente, nombre, telefono, email, direccion, ciudad, provincia, pais, cp)
VALUES (0, '10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chope', 'Madrid', 'Madrid', 'Spain', '28045'),
(1, '20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(2, '30001', 'Napoleon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');


INSERT INTO vendedores (id, id_personal, nombre, tienda)
VALUES (0, '00001', 'Petey Cruiser', 'Madrid'),
(1,'00002', 'Anna Sthesia', 'Barcelona'),
(2,'00003', 'Paul Molive', 'Berlín'),
(3,'00004', 'Gail Forcewind', 'París'),
(4,'00005', 'Paige Turner', 'Mimia'),
(5,'00006', 'Bob Frapples', 'Ciudad de México'),
(6,'00007', 'Walter Melon', 'Ámsterdam'),
(7,'00008', 'Shonda Leer', 'São Paulo');

INSERT INTO facturas (id, num_factura, fecha, coche, cliente, vendedor)
VALUES (0, '852399038', '2018-08-22', 0, 1, 3),
(1, '731166526', '2018-12-31', 3, 0, 5),
(2, '271135104', '2019-01-22', 2, 2, 7);



