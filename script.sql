USE [master]
GO
/****** Object:  Database [Hospital_Management]    Script Date: 7/28/2019 12:13:00 PM ******/
CREATE DATABASE [Hospital_Management]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hospital_Management', FILENAME = N'D:\Sql server Install\MSSQL12.SQLEXPRESS\MSSQL\DATA\Hospital_Management.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Hospital_Management_log', FILENAME = N'D:\Sql server Install\MSSQL12.SQLEXPRESS\MSSQL\DATA\Hospital_Management_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Hospital_Management] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hospital_Management].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hospital_Management] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hospital_Management] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hospital_Management] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hospital_Management] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hospital_Management] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hospital_Management] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Hospital_Management] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hospital_Management] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hospital_Management] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hospital_Management] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hospital_Management] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hospital_Management] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hospital_Management] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hospital_Management] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hospital_Management] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Hospital_Management] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hospital_Management] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hospital_Management] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hospital_Management] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hospital_Management] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hospital_Management] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hospital_Management] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hospital_Management] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hospital_Management] SET  MULTI_USER 
GO
ALTER DATABASE [Hospital_Management] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hospital_Management] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hospital_Management] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hospital_Management] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Hospital_Management] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Hospital_Management]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 7/28/2019 12:13:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doctor](
	[Doctor_ID] [varchar](50) NOT NULL,
	[Doctor_Name] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Doctor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 7/28/2019 12:13:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hospital](
	[D_Name] [varchar](50) NULL,
	[Department] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 7/28/2019 12:13:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patient](
	[Patient_ID] [varchar](50) NOT NULL,
	[Patient_Name] [varchar](50) NULL,
	[Gender] [varchar](10) NULL,
	[Age] [int] NULL,
	[Disease] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Patient_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 7/28/2019 12:13:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Payment](
	[Payment_Id] [varchar](50) NOT NULL,
	[Patient_ID] [varchar](50) NULL,
	[Amount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Payment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Record]    Script Date: 7/28/2019 12:13:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Record](
	[Record_Number] [varchar](50) NOT NULL,
	[Patient_ID] [varchar](50) NULL,
	[Patient_Name] [varchar](50) NULL,
	[Doctor_ID] [varchar](50) NULL,
	[Times_visited] [int] NULL,
	[Reason] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Record_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201063', N'Dr.Farhana Boby', N'Gynaecology')
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201069', N'Dr.Kamrul Islam', N'Radiotherapy')
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201081', N'Dr.Fahmid_Hasan', N'Cardiology')
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201082', N'Dr.Younus Kahn', N'Gastroenterology')
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201083', N'Dr.Hafiz Chowdhury', N'Cardiothoracic Surgery')
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201084', N'Dr.Sadiya Sultana', N'Emergency Medicine')
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201085', N'Dr.Jannatul Mawa', N'Cardiology')
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201086', N'Dr.Meem Rahman', N'Pathelogy')
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201087', N'Dr.Shakil Ahamed', N'Diet and Nutrition')
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201088', N'Dr.Moniruzzaman Khan', N'Haematology')
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201089', N'Dr.Abir Khan', N'Dermatology')
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201090', N'Dr.Chowdhury Hasan', N'Oncology')
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201091', N'Dr.Rabiul Karim', N'Neurology')
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201092', N'Dr.Nadeem Bhuiya', N'Physiotherapy')
INSERT [dbo].[Doctor] ([Doctor_ID], [Doctor_Name], [Department]) VALUES (N'17201093', N'Dr.Marufa Yasmin', N'Urology')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Fahmid Hasan', N'Cardiology')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Shakil Ahamed', N'Diet and Nutrition')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Abir Khan', N'Dermatology')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Younus Kahn', N'Gastroenterology')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Hafiz Chowdhury', N'Cardiothoracic Surgery')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Sadiya Sultana', N'Emergency Medicine')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Jannatul Mawa', N'Cardiology')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Meem Rahman', N'Pathelogy')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Farhana Boby', N'Gynaecology')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Moniruzzaman Khan', N'Haematology')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Kamrul Islam', N'Radiotherapy')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Chowdhury Hasan', N'Oncology')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Rabiul Karim', N'Neurology')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Nadeem Bhuiya', N'Physiotherapy')
INSERT [dbo].[Hospital] ([D_Name], [Department]) VALUES (N'Dr.Marufa Yasmin', N'Urology')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'101', N'Afsana Anwar', N'Female', 30, N'Allergies')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'102', N'Sakib Shahriar', N'Male', 25, N'Mentally Disorder')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'103', N'Shuvo Karmokar', N'Male', 35, N'Appendicitis')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'104', N'Abbas chowdhury', N'Male', 65, N'Asthma')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'105', N'Bristy Parvin', N'Female', 98, N'Bone cancer')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'106', N'Sumon Bappy', N'Male', 25, N'Bronchiectasis')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'107', N'Mashuk Rahman', N'Male', 32, N'Chest pain')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'108', N'Fahmid Hasan', N'Male', 30, N'Coma')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'109', N'Ananta Jalil', N'Male', 24, N'Diarrhoea')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'110', N'Maruf Prodan', N'Male', 34, N'Discoid eczema')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'111', N'Zihad Miah', N'Male', 39, N'Flu')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'112', N'Sharan Khan', N'Male', 29, N'Hepatitis B')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'113', N'Mim Kawser', N'Female', 20, N'Malaria')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'114', N'Fahmida Begum', N'Female', 50, N'Mumps')
INSERT [dbo].[Patient] ([Patient_ID], [Patient_Name], [Gender], [Age], [Disease]) VALUES (N'115', N'Mimi Sultana', N'Female', 19, N'Tonsillitis')
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'301', N'101', 10000)
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'302', N'102', 30000)
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'303', N'103', 3600)
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'304', N'104', 51000)
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'305', N'105', 16000)
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'306', N'106', 31000)
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'307', N'107', 2500)
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'308', N'108', 12000)
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'309', N'109', 5600)
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'310', N'110', 6300)
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'311', N'111', 7800)
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'312', N'112', 14200)
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'313', N'113', 36000)
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'314', N'114', 6900)
INSERT [dbo].[Payment] ([Payment_Id], [Patient_ID], [Amount]) VALUES (N'315', N'115', 8300)
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'201', N'101', N'Afsana Anwar', N'17201081', 3, N'Allergies')
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'202', N'102', N'Sakib Shahriar', N'17201087', 2, N'Mentally Disorder')
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'203', N'103', N'Shuvo Karmokar', N'17201089', 3, N'Appendicitis')
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'204', N'104', N'Abbas chowdhury', N'17201082', 6, N'Asthma')
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'205', N'105', N'Bristy Parvin', N'17201083', 9, N'Bone cancer')
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'206', N'106', N'Sumon Bappy', N'17201084', 2, N'Bronchiectasis')
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'207', N'107', N'Mashuk Rahman', N'17201085', 3, N'Chest pain')
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'208', N'108', N'Fahmid Hasan', N'17201086', 3, N'Coma')
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'209', N'109', N'Ananta Jalil', N'17201063', 2, N'Diarrhoea')
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'210', N'110', N'Maruf Prodan', N'17201088', 3, N'Discoid eczema')
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'211', N'111', N'Zihad Miah', N'17201069', 3, N'Flu')
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'212', N'112', N'Sharan Khan', N'17201090', 2, N'Hepatitis B')
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'213', N'113', N'Mim Kawser', N'17201091', 2, N'Malaria')
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'214', N'114', N'Fahmida Begum', N'17201092', 5, N'Mumps')
INSERT [dbo].[Record] ([Record_Number], [Patient_ID], [Patient_Name], [Doctor_ID], [Times_visited], [Reason]) VALUES (N'215', N'115', N'Mimi Sultana', N'17201093', 1, N'Tonsillitis')
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Patient_ID])
REFERENCES [dbo].[Patient] ([Patient_ID])
GO
ALTER TABLE [dbo].[Record]  WITH CHECK ADD FOREIGN KEY([Doctor_ID])
REFERENCES [dbo].[Doctor] ([Doctor_ID])
GO
ALTER TABLE [dbo].[Record]  WITH CHECK ADD FOREIGN KEY([Patient_ID])
REFERENCES [dbo].[Patient] ([Patient_ID])
GO
USE [master]
GO
ALTER DATABASE [Hospital_Management] SET  READ_WRITE 
GO
