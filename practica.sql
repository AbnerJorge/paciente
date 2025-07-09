CREATE DATABASE IF NOT EXISTS practica;
USE practica;

CREATE TABLE paciente (
    id INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    direccion VARCHAR(100),
    fechaNac DATE,
    telefonos TEXT
);

CREATE TABLE enfermedad (
    id INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(100),
    id_paciente INT,
    FOREIGN KEY (id_paciente) REFERENCES paciente(id)
);

INSERT INTO paciente (id, nombre, apellido, direccion, fechaNac, telefonos) VALUES
(1, 'Carlos', 'Ramírez', 'Av. Lima 123', '1990-05-10', '999111111,987654321'),
(2, 'Lucía', 'Fernández', 'Calle Norte 456', '1985-08-20', '988222222,912345678'),
(3, 'Jorge', 'Pérez', 'Jr. Puno 789', '2000-02-15', '977333333,956789012'),
(4, 'María', 'Torres', 'Av. Perú 321', '1995-11-30', '966444444,934567890'),
(5, 'Luis', 'Gonzales', 'Calle Sur 654', '1988-07-01', '955555555,923456789');

INSERT INTO enfermedad (id, nombre, id_paciente) VALUES
(1, 'Diabetes', 1),
(2, 'Hipertensión', 2),
(3, 'Asma', 3),
(4, 'Gripe', 4),
(5, 'Covid-19', 5);
COMMIT;
