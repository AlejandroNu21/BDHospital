CREATE DATABASE Hospital

use Hospital;

CREATE TABLE Pacientes (
Id_paciente int identity,
NumeroHistorialClinico int primary key,
Nombre_Paciente varchar(50),
Apellido_Paciente varchar(50),
Sexo_Paciente varchar(50),
Domicilio_Paciente varchar(50),
Provincia_Paciente varchar(50),
Codigo_Postal varchar(50),
Telefono_Paciente int,
Observaciones varchar(150)
);

CREATE TABLE Medico (
Id_Medico int identity,
Codigo_Identificacion_Medico int primary key,
Nombre_Medico varchar(50),
Apellido_Medico varchar(50),
Sexo_Medico varchar (50),
Especialidad varchar(50),
Numerodecolegiado varchar(50),
Cargo varchar(50),
Telefono_Medico int,
Observaciones varchar(150)
);

CREATE TABLE Ingreso (
 Id_Ingreso INT PRIMARY KEY identity,
 Procedencia VARCHAR(50) not null unique,
 FechaIngreso date default getdate(),
 Numero_Planta VARCHAR(100) NOT NULL,
 Numero_Cama VARCHAR(100) NOT NULL,
 Observaciones varchar(50),
 NumeroHistorialClinico INT,
 Codigo_Identificacion_Medico int

 FOREIGN KEY (NumeroHistorialClinico) REFERENCES Pacientes(NumeroHistorialClinico),
 FOREIGN KEY (Codigo_Identificacion_Medico) REFERENCES Medico(Codigo_Identificacion_Medico)
);

INSERT INTO Pacientes VALUES( 100, 'Vladimir','Leiva','M','Chalatenango', 'Chalatenango','1301',70451235,'Sintomas Gripales');
INSERT INTO Pacientes VALUES( 101, 'Carlos','Nuñez','M','Chalatenango', 'Chalatenango','1301',22310549,'Sintomas Gripales');
INSERT INTO Pacientes VALUES( 102, 'Victor','Hernandez','M','Santa Ana', 'Santa Ana','1305',78956412,'Presenta Sintomas de Covid');
INSERT INTO Pacientes VALUES( 103, 'Jessica','Lopez','F','Usulutan', 'Usulutan','1306',77450235,'Fractura de Clavicula');
INSERT INTO Pacientes VALUES( 104, 'Yessenia','Juarez','F','San Miguel', 'San Miguel','1307',786545887,'Embarazo');
INSERT INTO Pacientes VALUES( 105, 'Eduardo','Nuñez','M','Chalatenango', 'Chalatenango','1301',78789461,'Sintomas Gripales');
INSERT INTO Pacientes VALUES( 106, 'Pablo','Gutierrez','M','Sonsonate', 'Sonsonate','1308',25263117,'Sintomas Gripales');
INSERT INTO Pacientes VALUES( 107, 'Carolina','Diaz','F','Usulutan', 'Usulutan','1306',75423694,'Presenta Sintomas de Covid');
INSERT INTO Pacientes VALUES( 108, 'Erick','Nuñez','M','Chalatenango', 'Chalatenango','1301',70852369,'Fractura de Brazo');
INSERT INTO Pacientes VALUES( 109, 'Alejandro','Nuñez','M','La Libertad', 'La Libertad','1309',45976813,'Presenta Fiebre');

INSERT INTO Medico VALUES( 0025, 'Alfredo','Campos','M','Medico General', '0125','Medico Jefe',21014758,'Medico Activo');
INSERT INTO Medico VALUES( 0026, 'Pedro','Hernandez','M','Medico General', '0126','Residente',75013116,'Medico Activo');
INSERT INTO Medico VALUES( 0027, 'Josseline','Rivera','F','Ginecologa', '0127','Director',74796528,'Medico Activo');
INSERT INTO Medico VALUES( 0028, 'Carlos','Nuñez','M','Medico General', '0128','Residente',7824954,'Medico Activo');
INSERT INTO Medico VALUES( 0029, 'Maria','Orellana','F','Cirujana', '0129','Sub-Director',73697847,'Medico Activo');
INSERT INTO Medico VALUES( 0030, 'Alexander','Leiva','M','Medico General', '0130','Residente',78257964,'Medico Activo');


INSERT INTO Ingreso VALUES( 'Usulutan','',5,2, 'Cama Buena',100,0026);
INSERT INTO Ingreso VALUES( 'Santa Ana','',4,20, 'Cama Buena',102,0025);
INSERT INTO Ingreso VALUES( 'Santa Elena','',7,4, 'Cama Buena',100,0027);
INSERT INTO Ingreso VALUES( 'Nueva Concepcion','',5,4, 'Cama Buena',108,0030);
INSERT INTO Ingreso VALUES( 'La Reina','',2,5, 'Cama Buena',100,0028);
INSERT INTO Ingreso VALUES( 'El Zapote','',4,60, 'Cama Defectuosa',107,0026);
INSERT INTO Ingreso VALUES( 'Juayua','',7,100, 'Cama Buena',108,0029);
INSERT INTO Ingreso VALUES( 'Santa Maria','',2,103, 'Cama Buena',100,0030);
INSERT INTO Ingreso VALUES( 'El Congo','',5,200, 'Cama Defectuosa',101,0025);
INSERT INTO Ingreso VALUES( 'Las Vueltas','',6,400, 'Cama Buena',102,0027);
INSERT INTO Ingreso VALUES( 'El Limon','',8,500, 'Cama Buena',104,0029);
INSERT INTO Ingreso VALUES( 'San Marcos','',7,605, 'Cama Defectuosa',105,0030);
INSERT INTO Ingreso VALUES( 'El Triunfo','',7,89, 'Cama Buena',100,0026);
INSERT INTO Ingreso VALUES( 'El Cuco','',6,9, 'No sirve',102,0028);
INSERT INTO Ingreso VALUES( 'El Espino','',5,1,'Excelente',103,0030);
INSERT INTO Ingreso VALUES( 'Ahuachapan','',7,55, 'No sirve',100,0025);
INSERT INTO Ingreso VALUES( 'Tejutla','',9,700,'Excelente',105,0027);

