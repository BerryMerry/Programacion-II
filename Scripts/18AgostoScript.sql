USE [master]
GO
/****** Object:  Database [Microproyecto_prog]    Script Date: 8/18/2023 12:38:40 PM ******/
CREATE DATABASE [Microproyecto_prog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Microproyecto_prog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Microproyecto_prog.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Microproyecto_prog_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Microproyecto_prog_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Microproyecto_prog] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Microproyecto_prog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Microproyecto_prog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET ARITHABORT OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Microproyecto_prog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Microproyecto_prog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Microproyecto_prog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Microproyecto_prog] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Microproyecto_prog] SET  MULTI_USER 
GO
ALTER DATABASE [Microproyecto_prog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Microproyecto_prog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Microproyecto_prog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Microproyecto_prog] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Microproyecto_prog] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Microproyecto_prog] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Microproyecto_prog] SET QUERY_STORE = ON
GO
ALTER DATABASE [Microproyecto_prog] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Microproyecto_prog]
GO
/****** Object:  Table [dbo].[_HabitacionXMotel]    Script Date: 8/18/2023 12:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_HabitacionXMotel](
	[Id_TipoHabXMotel] [int] IDENTITY(1,1) NOT NULL,
	[Precio] [money] NOT NULL,
	[Id_Motel] [int] NOT NULL,
	[Id_TipoHabitaciones] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_TipoHabXMotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formas_de_pago]    Script Date: 8/18/2023 12:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formas_de_pago](
	[Id_FormadePago] [int] IDENTITY(1,1) NOT NULL,
	[Forma_pago] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_FormadePago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lista_Usuarios]    Script Date: 8/18/2023 12:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lista_Usuarios](
	[Id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Usuario] [nvarchar](25) NOT NULL,
	[Psswd] [nvarchar](25) NOT NULL,
	[Tipo_usuario] [nvarchar](25) NOT NULL,
	[Estatus] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogMantenimiento_Tabla]    Script Date: 8/18/2023 12:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogMantenimiento_Tabla](
	[Id_Tabla] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Usuario] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](200) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Estatus] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__LogMante__9D742D2FAEF52A10] PRIMARY KEY CLUSTERED 
(
	[Id_Tabla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Motel]    Script Date: 8/18/2023 12:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Motel](
	[Id_Motel] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](25) NOT NULL,
	[Ubicacion] [nvarchar](max) NOT NULL,
	[Id_Sector] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Motel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Motel_Forma_Pago]    Script Date: 8/18/2023 12:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Motel_Forma_Pago](
	[Id_Motel_forma_pago] [int] IDENTITY(1,1) NOT NULL,
	[Id_Motel] [int] NOT NULL,
	[Id_Formas_Pago] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Motel_forma_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puntuaciones]    Script Date: 8/18/2023 12:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puntuaciones](
	[Id_Puntuacion] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Valoracion] [int] NOT NULL,
	[Resena] [nvarchar](max) NOT NULL,
	[Id_Motel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Puntuacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sectores]    Script Date: 8/18/2023 12:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sectores](
	[Id_Sector] [int] IDENTITY(1,1) NOT NULL,
	[Sector] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Sector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoHabitacion]    Script Date: 8/18/2023 12:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoHabitacion](
	[Id_TipoHabitaciones] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_Habitacion] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_TipoHabitaciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[_HabitacionXMotel]  WITH CHECK ADD  CONSTRAINT [fk_TipoHab01] FOREIGN KEY([Id_TipoHabitaciones])
REFERENCES [dbo].[TipoHabitacion] ([Id_TipoHabitaciones])
GO
ALTER TABLE [dbo].[_HabitacionXMotel] CHECK CONSTRAINT [fk_TipoHab01]
GO
ALTER TABLE [dbo].[_HabitacionXMotel]  WITH CHECK ADD  CONSTRAINT [fk02_Motel] FOREIGN KEY([Id_Motel])
REFERENCES [dbo].[Motel] ([Id_Motel])
GO
ALTER TABLE [dbo].[_HabitacionXMotel] CHECK CONSTRAINT [fk02_Motel]
GO
ALTER TABLE [dbo].[Motel_Forma_Pago]  WITH CHECK ADD  CONSTRAINT [fk_MotelxPago] FOREIGN KEY([Id_Motel])
REFERENCES [dbo].[Motel] ([Id_Motel])
GO
ALTER TABLE [dbo].[Motel_Forma_Pago] CHECK CONSTRAINT [fk_MotelxPago]
GO
ALTER TABLE [dbo].[Motel_Forma_Pago]  WITH CHECK ADD  CONSTRAINT [fk_PagoxMotel] FOREIGN KEY([Id_Formas_Pago])
REFERENCES [dbo].[Formas_de_pago] ([Id_FormadePago])
GO
ALTER TABLE [dbo].[Motel_Forma_Pago] CHECK CONSTRAINT [fk_PagoxMotel]
GO
ALTER TABLE [dbo].[Puntuaciones]  WITH CHECK ADD  CONSTRAINT [fk01_Motel] FOREIGN KEY([Id_Motel])
REFERENCES [dbo].[Motel] ([Id_Motel])
GO
ALTER TABLE [dbo].[Puntuaciones] CHECK CONSTRAINT [fk01_Motel]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_Motel]    Script Date: 8/18/2023 12:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Guardar_Motel](
@Nombre nvarchar(50),
@Ubicacion nvarchar(max),
@Sector int
)
as 
begin 
	INSERT INTO [dbo].[Motel] ([Nombre],[Ubicacion],[Id_Sector])
	VALUES (@Nombre,@Ubicacion,@Sector)
	
end
GO
/****** Object:  StoredProcedure [dbo].[Guardar_Usuario]    Script Date: 8/18/2023 12:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Guardar_Usuario](
@Nombre nvarchar(50),
@Pswd nvarchar(50),
@Tipo_usuario nvarchar(50),
@estatus bit)
as
begin
	insert into [dbo].[Lista_Usuarios] ([Nom_Usuario], [Psswd], [Tipo_usuario], [Estatus])
	values (@Nombre,@Pswd, @Tipo_usuario,@estatus);
end
GO
/****** Object:  StoredProcedure [dbo].[Registro]    Script Date: 8/18/2023 12:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Registro](
@Nom_Usuario nvarchar(25)
)
as
begin 
	declare @nuevoestado bit

	SELECT @nuevoestado = Estatus
    FROM Lista_Usuarios
    WHERE Nom_Usuario = @Nom_Usuario;

	update Lista_Usuarios
	set Estatus = CASE WHEN @NuevoEstado = 0 THEN 1 ELSE 0 END
	where Nom_Usuario = @Nom_Usuario
end;
GO
USE [master]
GO
ALTER DATABASE [Microproyecto_prog] SET  READ_WRITE 
GO
