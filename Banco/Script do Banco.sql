create database concessionaria;
GO
USE [concessionaria]
GO
/****** Object:  Table [dbo].[Cargos]    Script Date: 02/12/2015 01:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cargos](
	[idCargo] [int] IDENTITY(1,1) NOT NULL,
	[iddpto] [int] NOT NULL,
	[Cargo] [varchar](50) NOT NULL,
 CONSTRAINT PK_cargos PRIMARY KEY(idcargo),
 constraint UQ_cargos UNIQUE(cargo),

 ); 

CREATE TABLE [dbo].[Clientes](
	[IDcliente] [int] IDENTITY(1,1) NOT NULL,
	[CPF_CNPJ] [varchar](20) NOT NULL,
	[Tipo] [char](2) NOT NULL,
	[Nome_RazaoSocial] [varchar](100) NOT NULL,
	[NomeFantasia] [varchar](100) NULL,
	[IE_RG] [varchar](100) NOT NULL,
	[Endereco] [varchar](100) NOT NULL,
	[Complemento] [varchar](100) NULL,
	[Cidade] [varchar](100) NOT NULL,
	[Bairro] [varchar](100) NOT NULL,
	[Estado] [char](2) NOT NULL,
	[CEP] [varchar](15) NOT NULL,
	[Telefone] [varchar](20) NOT NULL,
	[Celular] [varchar](20) NULL,
	[Celular_2] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[E_mail] [varchar](50) NULL,
	[Data_Inclusao] [datetime] NOT NULL,
	[Data_Alteracao] [datetime] NOT NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[IDcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_clientes] UNIQUE NONCLUSTERED 
(
	[E_mail] ASC,
	[CPF_CNPJ] ASC,
	[IE_RG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 02/12/2015 01:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamentos](
	[idDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[Departamento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_departamentos] PRIMARY KEY CLUSTERED 
(
	[idDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Departamentos] UNIQUE NONCLUSTERED 
(
	[Departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fornecedores]    Script Date: 02/12/2015 01:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fornecedores](
	[IDfornecedor] [int] IDENTITY(1,1) NOT NULL,
	[CPF_CNPJ] [varchar](20) NOT NULL,
	[Tipo] [char](2) NOT NULL,
	[Nome_RazaoSocial] [varchar](100) NOT NULL,
	[NomeFantasia] [varchar](100) NULL,
	[IE_RG] [varchar](100) NOT NULL,
	[Endereco] [varchar](100) NOT NULL,
	[Complemento] [varchar](100) NULL,
	[Cidade] [varchar](100) NOT NULL,
	[Bairro] [varchar](100) NOT NULL,
	[Estado] [char](2) NOT NULL,
	[CEP] [varchar](20) NOT NULL,
	[Telefone] [varchar](20) NOT NULL,
	[Celular] [varchar](20) NULL,
	[Celular_2] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[E_mail] [varchar](50) NULL,
	[Data_Inclusao] [datetime] NOT NULL,
	[Data_Alteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_fornecedores] PRIMARY KEY CLUSTERED 
(
	[IDfornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_fornecedores] UNIQUE NONCLUSTERED 
(
	[E_mail] ASC,
	[CPF_CNPJ] ASC,
	[IE_RG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[funcionarios]    Script Date: 02/12/2015 01:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[funcionarios](
	[IDFuncionario] [int] IDENTITY(1,1) NOT NULL,
	[IDcargo] [int] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[CPF] [varchar](20) NOT NULL,
	[RG] [varchar](100) NOT NULL,
	[Endereco] [varchar](100) NOT NULL,
	[Complemento] [varchar](100) NULL,
	[Cidade] [varchar](100) NOT NULL,
	[Bairro] [varchar](100) NOT NULL,
	[Estado] [char](2) NOT NULL,
	[CEP] [varchar](20) NOT NULL,
	[Telefone] [varchar](20) NOT NULL,
	[Telefone_2] [varchar](20) NULL,
	[Celular] [varchar](20) NULL,
	[Celular_2] [varchar](20) NULL,
	[E_mail] [varchar](50) NULL,
	[Data_Inclusao] [datetime] NOT NULL,
	[Data_Alteracao] [datetime] NOT NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_funcionarios] PRIMARY KEY CLUSTERED 
(
	[IDFuncionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_funcionarios] UNIQUE NONCLUSTERED 
(
	[E_mail] ASC,
	[CPF] ASC,
	[RG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manutencoes]    Script Date: 02/12/2015 01:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manutencoes](
	[idManutencao] [int] IDENTITY(1,1) NOT NULL,
	[idOficina] [int] NOT NULL,
	[IDVeiculo] [int] NOT NULL,
	[Data_Inicio] [datetime] NOT NULL,
	[Data_Termino] [datetime] NULL,
	[Descricao] [varchar](255) NOT NULL,
	[Valor] [real] NOT NULL,
 CONSTRAINT [PK_manutencoes] PRIMARY KEY CLUSTERED 
(
	[idManutencao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Oficinas]    Script Date: 02/12/2015 01:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Oficinas](
	[IDOficina] [int] IDENTITY(1,1) NOT NULL,
	[CNPJ] [varchar](20) NOT NULL,
	[RazaoSocial] [varchar](100) NOT NULL,
	[NomeFantasia] [varchar](100) NOT NULL,
	[IE] [varchar](100) NOT NULL,
	[Endereco] [varchar](100) NOT NULL,
	[Complemento] [varchar](100) NULL,
	[Cidade] [varchar](100) NOT NULL,
	[Bairro] [varchar](100) NOT NULL,
	[Estado] [char](2) NOT NULL,
	[CEP] [varchar](20) NOT NULL,
	[Telefone] [varchar](20) NOT NULL,
	[Celular] [varchar](20) NULL,
	[Celular_2] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[E_mail] [varchar](50) NULL,
	[Data_Inclusao] [datetime] NOT NULL,
	[Data_Alteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_Oficinas] PRIMARY KEY CLUSTERED 
(
	[IDOficina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_oficinas] UNIQUE NONCLUSTERED 
(
	[E_mail] ASC,
	[CNPJ] ASC,
	[IE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 02/12/2015 01:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuarios](
	[IDusuario] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](20) NOT NULL,
	[senha] [varchar](20) NOT NULL,
	
 CONSTRAINT [UQ_usuarios] UNIQUE NONCLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Veiculos]    Script Date: 02/12/2015 01:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
INSERT INTO [dbo].[usuarios]
           ([usuario]
           ,[senha]
          )
     VALUES
           ('admin'
           ,'admin'
           )
GO



CREATE TABLE [dbo].[Veiculos](
	[IDveiculo] [int] IDENTITY(1,1) NOT NULL,
	[Chassis] [varchar](20) NULL,
	[IDFornecedor] [int] NULL,
	[Marca] [varchar](50) NULL,
	[Modelo] [varchar](50) NULL,
	[Cor] [varchar](20) NULL,
	[Descricao] [varchar](255) NULL,
	[Valor] [decimal](18, 2) NULL,
	[ano] [varchar](4) NULL,
 CONSTRAINT [PK_veiculos] PRIMARY KEY CLUSTERED 
(
	[IDveiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_veiculos] UNIQUE NONCLUSTERED 
(
	[Chassis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venda_item]    Script Date: 02/12/2015 01:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venda_item](
	[id_venda] [int] NOT NULL,
	[id_veiculo] [int] NOT NULL,
	[valor_unitario] [decimal](18, 2) NULL,
	[valor_total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Venda_item] PRIMARY KEY CLUSTERED 
(
	[id_venda] ASC,
	[id_veiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendas]    Script Date: 02/12/2015 01:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendas](
	[IDvenda] [int] IDENTITY(1,1) NOT NULL,
	[IDcliente] [int] NULL,
	[IDvendedor] [int] NULL,
	[valor_total] [decimal](18, 2) NULL,
	[data_incl] [datetime] NULL,
	[data_alt] [datetime] NULL,
	[valor_desc] [decimal](18, 2) NULL,
	[valor_unitario] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Vendas] PRIMARY KEY CLUSTERED 
(
	[IDvenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Cargos]  WITH CHECK ADD  CONSTRAINT [FK_Cargos_Departamentos1] FOREIGN KEY([iddpto])
REFERENCES [dbo].[Departamentos] ([idDepartamento])
GO
ALTER TABLE [dbo].[Cargos] CHECK CONSTRAINT [FK_Cargos_Departamentos1]
GO
ALTER TABLE [dbo].[funcionarios]  WITH NOCHECK ADD  CONSTRAINT [FK_funcionarios_Cargos1] FOREIGN KEY([IDcargo])
REFERENCES [dbo].[Cargos] ([idCargo])
GO
ALTER TABLE [dbo].[funcionarios] CHECK CONSTRAINT [FK_funcionarios_Cargos1]
GO
ALTER TABLE [dbo].[Manutencoes]  WITH NOCHECK ADD  CONSTRAINT [FK_Manutencoes_Oficinas1] FOREIGN KEY([idOficina])
REFERENCES [dbo].[Oficinas] ([IDOficina])
GO
ALTER TABLE [dbo].[Manutencoes] CHECK CONSTRAINT [FK_Manutencoes_Oficinas1]
GO
ALTER TABLE [dbo].[Manutencoes]  WITH CHECK ADD  CONSTRAINT [FK_Manutencoes_Veiculos] FOREIGN KEY([IDVeiculo])
REFERENCES [dbo].[Veiculos] ([IDveiculo])
GO
ALTER TABLE [dbo].[Manutencoes] CHECK CONSTRAINT [FK_Manutencoes_Veiculos]
GO
ALTER TABLE [dbo].[Veiculos]  WITH CHECK ADD  CONSTRAINT [FK_Veiculos_fornecedores] FOREIGN KEY([IDFornecedor])
REFERENCES [dbo].[fornecedores] ([IDfornecedor])
GO
ALTER TABLE [dbo].[Veiculos] CHECK CONSTRAINT [FK_Veiculos_fornecedores]
GO
ALTER TABLE [dbo].[Venda_item]  WITH CHECK ADD  CONSTRAINT [FK_Venda_item_Veiculos] FOREIGN KEY([id_veiculo])
REFERENCES [dbo].[Veiculos] ([IDveiculo])
GO
ALTER TABLE [dbo].[Venda_item] CHECK CONSTRAINT [FK_Venda_item_Veiculos]
GO
ALTER TABLE [dbo].[Venda_item]  WITH NOCHECK ADD  CONSTRAINT [FK_Venda_item_Vendas] FOREIGN KEY([id_venda])
REFERENCES [dbo].[Vendas] ([IDvenda])
GO
ALTER TABLE [dbo].[Venda_item] CHECK CONSTRAINT [FK_Venda_item_Vendas]
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Vendas_Clientes] FOREIGN KEY([IDcliente])
REFERENCES [dbo].[Clientes] ([IDcliente])
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_Vendas_Clientes]
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Vendas_funcionarios] FOREIGN KEY([IDvendedor])
REFERENCES [dbo].[funcionarios] ([IDFuncionario])
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_Vendas_funcionarios]
GO
