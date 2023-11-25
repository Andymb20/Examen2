-- Tabla Usuarios
CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    CorreoElectronico VARCHAR(100),
    Telefono VARCHAR(20)
);

-- Tabla Tecnicos
CREATE TABLE Tecnicos (
    TecnicoID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Especialidad VARCHAR(50)
);

-- Tabla Equipos
CREATE TABLE Equipos (
    EquipoID INT PRIMARY KEY,
    TipoEquipo VARCHAR(50),
    Modelo VARCHAR(50),
    UsuarioID INT,
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID)
);

-- Tabla Reparaciones
CREATE TABLE Reparaciones (
    ReparacionID INT PRIMARY KEY,
    EquipoID INT,
    FechaSolicitud DATE,
    Estado VARCHAR(20),
    FOREIGN KEY (EquipoID) REFERENCES Equipos(EquipoID)
);

-- Tabla Asignaciones
CREATE TABLE Asignaciones (
    AsignacionID INT PRIMARY KEY,
    ReparacionID INT,
    TecnicoID INT,
    FechaAsignacion DATE,
    FOREIGN KEY (ReparacionID) REFERENCES Reparaciones(ReparacionID),
    FOREIGN KEY (TecnicoID) REFERENCES Tecnicos(TecnicoID)
);

-- Tabla DetallesReparacion
CREATE TABLE DetallesReparacion (
    DetallesID INT PRIMARY KEY,
    ReparacionID INT,
    Descripcion VARCHAR(200),
    FechaInicio DATETIME,
    FechaFin DATETIME,
    FOREIGN KEY (ReparacionID) REFERENCES Reparaciones(ReparacionID)
);

--Mantenimiento de tablas
--agregaciones

--equipos

INSERT INTO Equipos (EquipoID, TipoEquipo, Modelo, UsuarioID)
VALUES (1, 'Laptop', 'Marca X', 1);

--usuarios
INSERT INTO Usuarios (UsuarioID, Nombre, CorreoElectronico, Telefono)
VALUES (1, 'NombreUsuario', 'usuario@example.com', '123-456-7890'); 

--tecnico

INSERT INTO Tecnicos (TecnicoID, Nombre, Especialidad)
VALUES (1, 'NombreTecnico', 'EspecialidadX');

-- Borrar registros

--equipo
DELETE FROM Equipos WHERE EquipoID = 1; 

--usuario

DELETE FROM Usuarios WHERE UsuarioID = 1; 

--tecnico

DELETE FROM Tecnicos WHERE TecnicoID = 1; 

--consultar con filtro

--equipo

SELECT * FROM Equipos WHERE UsuarioID = 1;

--tecnico

SELECT * FROM Tecnicos WHERE Especialidad = 'EspecialidadX';

--modificar

--equipo

UPDATE Equipos SET Modelo = 'Nuevo Modelo' WHERE EquipoID = 1;

--usurio

UPDATE Usuarios SET CorreoElectronico = 'nuevo_correo@example.com' WHERE UsuarioID = 1;

--tecnico

UPDATE Tecnicos SET Especialidad = 'NuevaEspecialidad' WHERE TecnicoID = 1;