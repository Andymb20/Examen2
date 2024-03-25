CREATE DATABASE DBEncuestas

-- Crear la tabla Participante
CREATE TABLE Participante (
    NumeroEncuesta INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50) NOT NULL,
    Apellido NVARCHAR(50) NOT NULL,
    CorreoElectronico NVARCHAR(100) NOT NULL
);

-- Crear la tabla Encuesta
CREATE TABLE Encuesta (
    EncuestaID INT PRIMARY KEY IDENTITY(1,1),
    FechaEncuesta DATE NOT NULL,
    NumeroEncuesta INT NOT NULL,
    FechaNacimiento DATE NOT NULL,
    Edad INT NOT NULL,
    CarroPropio BIT NOT NULL,
    FOREIGN KEY (NumeroEncuesta) REFERENCES Participante(NumeroEncuesta)
);

-- Conteo de participantes que tienen carro
SELECT COUNT(*) AS TotalConCarro FROM Encuesta WHERE CarroPropio = 1;

-- Conteo de participantes que no tienen carro
SELECT COUNT(*) AS TotalSinCarro FROM Encuesta WHERE CarroPropio = 0;
