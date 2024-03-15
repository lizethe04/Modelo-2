CREATE TABLE Escuela ( 
EscuelaId INTEGER PRIMARY KEY,
NombreDeLaEscuela VARCHAR(70),
Direccion VARCHAR(400) 
);

CREATE TABLE EstudianteTutor (
EstudianteTutorId INTEGER PRIMARY KEY,
EstudianteId INTEGER, 
TutorId INTEGER
 );

CREATE TABLE Tutor ( 
TutorId INTEGER PRIMARY KEY,
NombreCompleto VARCHAR(50), 
FirmoCartaCompromiso BOOLEAN 
);

CREATE TABLE Estudiante ( 
ClienteId INTEGER PRIMARY KEY,
Nombre VARCHAR(100),
Apaterno VARCHAR(50), 
AMaterno VARCHAR(50),
FechaRegistro DATE,
Genero CHAR(1), 
SuscripcionId INTEGER, 
FechaNacimiento DATE,
Curp VARCHAR(50), 
EscuelaId INTEGER
 );

CREATE TABLE Suscripcion ( 
    SuscripcionId INTEGER PRIMARY KEY,
    Nombre VARCHAR(50), 
    Costo DECIMAL(10, 2), 
    Periodo VARCHAR(50)
);


CREATE TABLE Pago ( 
PagoId INTEGER PRIMARY KEY,
FechaDeAplicacion DATE,
SuscripcionId INTEGER, 
ClienteId INTEGER, 
Cantidad DECIMAL
 );

CREATE TABLE EstudianteGrado ( 
EstudianteGradoId INTEGER PRIMARY KEY, 
ClienteId INTEGER,
GradoId INTEGER,
FechaObtencion DATE
 );

CREATE TABLE Grado (
    GradoId INTEGER PRIMARY KEY,
    Nombre VARCHAR(100), 
    ColorDeCinta VARCHAR(50)
);
