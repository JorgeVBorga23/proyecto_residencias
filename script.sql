USE [Residencias]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 5/28/2023 6:51:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[NoControl] [varchar](8) NOT NULL,
	[nombreAlumno] [varchar](40) NOT NULL,
	[apellidoPaternoAlum] [varchar](20) NOT NULL,
	[apellidoMaternoAlum] [varchar](20) NULL,
	[fehaNacimiento] [date] NOT NULL,
	[sexo] [varchar](1) NOT NULL,
	[anioGeneracion] [varchar](4) NOT NULL,
	[teleonoAlumno] [varchar](10) NOT NULL,
	[correoAlumno] [varchar](50) NOT NULL,
	[calificaciónFinal] [varchar](4) NULL,
	[ID_Asesor] [varchar](8) NULL,
	[ID_Login] [varchar](8) NULL,
	[ID_Proyecto] [varchar](5) NULL,
	[ID_Carrera] [varchar](8) NULL,
	[creditos] [char](10) NULL,
	[servicio] [char](10) NULL,
	[complementarios] [char](10) NULL,
	[especial] [char](10) NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[NoControl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asesor]    Script Date: 5/28/2023 6:51:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asesor](
	[ID_Asesor] [varchar](8) NOT NULL,
	[nombreAsesor] [varchar](40) NOT NULL,
	[apellidoPatAsesor] [varchar](30) NOT NULL,
	[apelIidoMatAsesor] [varchar](30) NOT NULL,
	[tipoAsesor] [varchar](1) NOT NULL,
	[telefonoAsesor] [varchar](10) NOT NULL,
	[emailAsesor] [varchar](50) NOT NULL,
	[ID_Departamento] [varchar](4) NOT NULL,
	[ID_Empresa] [varchar](5) NOT NULL,
	[ID_LogIn] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Asesor] PRIMARY KEY CLUSTERED 
(
	[ID_Asesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 5/28/2023 6:51:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[ClaveCarrera] [varchar](4) NOT NULL,
	[nombreCarrera] [varchar](55) NOT NULL,
	[ID_Coordinador] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[ClaveCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 5/28/2023 6:51:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[ClaveDepartamento] [varchar](4) NOT NULL,
	[nombreDepartamento] [varchar](55) NOT NULL,
	[edificioDepartamento] [varchar](4) NOT NULL,
	[ID_JefeDepartamento] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[ClaveDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documento]    Script Date: 5/28/2023 6:51:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documento](
	[FolioDocumento] [varchar](10) NOT NULL,
	[nombreDocumento] [varchar](40) NOT NULL,
	[tipoDocumento] [varchar](4) NOT NULL,
	[periodoDocumento] [varchar](30) NOT NULL,
	[fechaDocumento] [date] NOT NULL,
	[ID_Alumno] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Documento] PRIMARY KEY CLUSTERED 
(
	[FolioDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 5/28/2023 6:51:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[ID_Empleado] [varchar](8) NOT NULL,
	[nombreEmpleado] [varchar](50) NOT NULL,
	[apellidoPaternoEmp] [varchar](40) NOT NULL,
	[apellidoMaternoEmp] [varchar](40) NOT NULL,
	[emailEmpleado] [varchar](50) NOT NULL,
	[telefonoEmp] [varchar](10) NOT NULL,
	[tipoEmpleado] [varchar](1) NOT NULL,
	[ID_LogIn] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 5/28/2023 6:51:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[ID_Empresa] [varchar](5) NOT NULL,
	[nombreEmpresa] [varchar](50) NOT NULL,
	[tipoEmpresa] [varchar](40) NOT NULL,
	[ciudadEmpresa] [varchar](40) NOT NULL,
	[calleEmp] [varchar](40) NOT NULL,
	[cpEmpresa] [varchar](5) NOT NULL,
	[coloniaEmpresa] [varchar](30) NOT NULL,
	[numeroExteriorEmp] [varchar](4) NOT NULL,
	[numeroInteriorEmp] [varchar](4) NULL,
	[descripcionEmp] [text] NOT NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[ID_Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Informe]    Script Date: 5/28/2023 6:51:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Informe](
	[folioInforme] [varchar](10) NOT NULL,
	[tituloInforme] [varchar](35) NOT NULL,
	[numeroSemana] [varchar](9) NOT NULL,
	[fechaInforme] [date] NOT NULL,
	[ID_Alumno] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Informe] PRIMARY KEY CLUSTERED 
(
	[folioInforme] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 5/28/2023 6:51:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[ID_Login] [varchar](8) NOT NULL,
	[usuarioLogin] [varchar](50) NOT NULL,
	[contraseñaLogin] [varchar](55) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[ID_Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyecto]    Script Date: 5/28/2023 6:51:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyecto](
	[ID_Proyecto] [varchar](5) NOT NULL,
	[nombreProyecto] [varchar](40) NOT NULL,
	[tipoProyecto] [varchar](2) NOT NULL,
	[nombrePeriodo] [varchar](35) NOT NULL,
	[fechaInicio] [date] NOT NULL,
	[fechaFinal] [date] NOT NULL,
	[numeroIntegrantes] [varchar](2) NOT NULL,
	[ID_Asesor] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Proyecto] PRIMARY KEY CLUSTERED 
(
	[ID_Proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAsesor]    Script Date: 5/28/2023 6:51:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAsesor](
	[ID_TipoAsesor] [varchar](1) NOT NULL,
	[tipoAsesor] [varchar](15) NOT NULL,
 CONSTRAINT [PK_TipoEmpleado] PRIMARY KEY CLUSTERED 
(
	[ID_TipoAsesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEmpleado]    Script Date: 5/28/2023 6:51:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEmpleado](
	[ID_tipoEmpleado] [varchar](1) NOT NULL,
	[tipoEmpleado] [varchar](40) NOT NULL,
 CONSTRAINT [PK_TiposEmpleado] PRIMARY KEY CLUSTERED 
(
	[ID_tipoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Alumno] ([NoControl], [nombreAlumno], [apellidoPaternoAlum], [apellidoMaternoAlum], [fehaNacimiento], [sexo], [anioGeneracion], [teleonoAlumno], [correoAlumno], [calificaciónFinal], [ID_Asesor], [ID_Login], [ID_Proyecto], [ID_Carrera], [creditos], [servicio], [complementarios], [especial]) VALUES (N'18390063', N'JORGE ENRIQUE', N'VILLAMIL', N'BORGA', CAST(N'2000-07-23' AS Date), N'M', N'2018', N'983578716', N'jorgevillamilborga@gmail.com', NULL, NULL, N'1', NULL, N'1', N'1         ', N'1         ', N'1         ', N'1|        ')
GO
INSERT [dbo].[Asesor] ([ID_Asesor], [nombreAsesor], [apellidoPatAsesor], [apelIidoMatAsesor], [tipoAsesor], [telefonoAsesor], [emailAsesor], [ID_Departamento], [ID_Empresa], [ID_LogIn]) VALUES (N'1', N'Carlos Francisco', N'Gutierrez', N'Zapata', N'1', N'646563', N'asesor1@gmail.com', N'1', N'1', N'3')
GO
INSERT [dbo].[Carrera] ([ClaveCarrera], [nombreCarrera], [ID_Coordinador]) VALUES (N'1', N'Ingenieria en Sistemas Computacionales', N'1')
GO
INSERT [dbo].[Departamento] ([ClaveDepartamento], [nombreDepartamento], [edificioDepartamento], [ID_JefeDepartamento]) VALUES (N'1', N'BIOLOGIA', N'M', N'2')
GO
INSERT [dbo].[Empleado] ([ID_Empleado], [nombreEmpleado], [apellidoPaternoEmp], [apellidoMaternoEmp], [emailEmpleado], [telefonoEmp], [tipoEmpleado], [ID_LogIn]) VALUES (N'1', N'fesfs', N'ESDJ', N'DFUOH', N'SFHEFHSEOH', N'45355', N'1', N'2')
INSERT [dbo].[Empleado] ([ID_Empleado], [nombreEmpleado], [apellidoPaternoEmp], [apellidoMaternoEmp], [emailEmpleado], [telefonoEmp], [tipoEmpleado], [ID_LogIn]) VALUES (N'2', N'JEFE', N'DEPA', N'Bio', N'jefe@gmail.com', N'543523', N'2', N'4')
GO
INSERT [dbo].[Empresa] ([ID_Empresa], [nombreEmpresa], [tipoEmpresa], [ciudadEmpresa], [calleEmp], [cpEmpresa], [coloniaEmpresa], [numeroExteriorEmp], [numeroInteriorEmp], [descripcionEmp]) VALUES (N'1', N'TECNM', N'1', N'CHETUMAL', N'EEFEFH', N'34342', N'FEF', N'1', N'1', N'EFNEWFBNWQFBNU')
GO
INSERT [dbo].[Login] ([ID_Login], [usuarioLogin], [contraseñaLogin]) VALUES (N'1', N'jorge', N'123')
INSERT [dbo].[Login] ([ID_Login], [usuarioLogin], [contraseñaLogin]) VALUES (N'2', N'coordinador', N'123')
INSERT [dbo].[Login] ([ID_Login], [usuarioLogin], [contraseñaLogin]) VALUES (N'3', N'asesor1', N'123')
INSERT [dbo].[Login] ([ID_Login], [usuarioLogin], [contraseñaLogin]) VALUES (N'4', N'jefedepartamento', N'123')
GO
INSERT [dbo].[Proyecto] ([ID_Proyecto], [nombreProyecto], [tipoProyecto], [nombrePeriodo], [fechaInicio], [fechaFinal], [numeroIntegrantes], [ID_Asesor]) VALUES (N'1', N'Deteccion de plagas con drones', N'1', N'2018', CAST(N'2018-06-12' AS Date), CAST(N'2019-01-12' AS Date), N'4', N'1')
GO
INSERT [dbo].[TipoAsesor] ([ID_TipoAsesor], [tipoAsesor]) VALUES (N'1', N'BIOLOGIA')
GO
INSERT [dbo].[TiposEmpleado] ([ID_tipoEmpleado], [tipoEmpleado]) VALUES (N'1', N'COORDINADOR')
INSERT [dbo].[TiposEmpleado] ([ID_tipoEmpleado], [tipoEmpleado]) VALUES (N'2', N'JEFEDEPARTAMENTO')
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Asesor] FOREIGN KEY([ID_Asesor])
REFERENCES [dbo].[Asesor] ([ID_Asesor])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Asesor]
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Login] FOREIGN KEY([ID_Login])
REFERENCES [dbo].[Login] ([ID_Login])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Login]
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Proyecto] FOREIGN KEY([ID_Proyecto])
REFERENCES [dbo].[Proyecto] ([ID_Proyecto])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Proyecto]
GO
ALTER TABLE [dbo].[Asesor]  WITH CHECK ADD  CONSTRAINT [FK_Asesor_Departamento] FOREIGN KEY([ID_Departamento])
REFERENCES [dbo].[Departamento] ([ClaveDepartamento])
GO
ALTER TABLE [dbo].[Asesor] CHECK CONSTRAINT [FK_Asesor_Departamento]
GO
ALTER TABLE [dbo].[Asesor]  WITH CHECK ADD  CONSTRAINT [FK_Asesor_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID_Empresa])
GO
ALTER TABLE [dbo].[Asesor] CHECK CONSTRAINT [FK_Asesor_Empresa]
GO
ALTER TABLE [dbo].[Asesor]  WITH CHECK ADD  CONSTRAINT [FK_Asesor_Login] FOREIGN KEY([ID_LogIn])
REFERENCES [dbo].[Login] ([ID_Login])
GO
ALTER TABLE [dbo].[Asesor] CHECK CONSTRAINT [FK_Asesor_Login]
GO
ALTER TABLE [dbo].[Asesor]  WITH CHECK ADD  CONSTRAINT [FK_Asesor_TipoEmpleado] FOREIGN KEY([tipoAsesor])
REFERENCES [dbo].[TipoAsesor] ([ID_TipoAsesor])
GO
ALTER TABLE [dbo].[Asesor] CHECK CONSTRAINT [FK_Asesor_TipoEmpleado]
GO
ALTER TABLE [dbo].[Carrera]  WITH CHECK ADD  CONSTRAINT [FK_Carrera_Empleado] FOREIGN KEY([ID_Coordinador])
REFERENCES [dbo].[Empleado] ([ID_Empleado])
GO
ALTER TABLE [dbo].[Carrera] CHECK CONSTRAINT [FK_Carrera_Empleado]
GO
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_Departamento_Empleado] FOREIGN KEY([ID_JefeDepartamento])
REFERENCES [dbo].[Empleado] ([ID_Empleado])
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_Departamento_Empleado]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_Alumno] FOREIGN KEY([ID_Alumno])
REFERENCES [dbo].[Alumno] ([NoControl])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_Alumno]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Login] FOREIGN KEY([ID_LogIn])
REFERENCES [dbo].[Login] ([ID_Login])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Login]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_TiposEmpleado] FOREIGN KEY([tipoEmpleado])
REFERENCES [dbo].[TiposEmpleado] ([ID_tipoEmpleado])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_TiposEmpleado]
GO
ALTER TABLE [dbo].[Informe]  WITH CHECK ADD  CONSTRAINT [FK_Informe_Alumno] FOREIGN KEY([ID_Alumno])
REFERENCES [dbo].[Alumno] ([NoControl])
GO
ALTER TABLE [dbo].[Informe] CHECK CONSTRAINT [FK_Informe_Alumno]
GO
ALTER TABLE [dbo].[Proyecto]  WITH CHECK ADD  CONSTRAINT [FK_Proyecto_Asesor] FOREIGN KEY([ID_Asesor])
REFERENCES [dbo].[Asesor] ([ID_Asesor])
GO
ALTER TABLE [dbo].[Proyecto] CHECK CONSTRAINT [FK_Proyecto_Asesor]
GO
