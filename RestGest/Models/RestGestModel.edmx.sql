
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/25/2022 18:46:56
-- Generated from EDMX file: C:\Users\berna\source\repos\RestGest\RestGest\Models\RestGestModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [RestGestDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_PersonAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet] DROP CONSTRAINT [FK_PersonAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderSet] DROP CONSTRAINT [FK_OrderEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderClient]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderSet] DROP CONSTRAINT [FK_OrderClient];
GO
IF OBJECT_ID(N'[dbo].[FK_RestaurantAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RestaurantSet] DROP CONSTRAINT [FK_RestaurantAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_RestaurantEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Employee] DROP CONSTRAINT [FK_RestaurantEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_MenuItemOrder_MenuItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MenuItemOrder] DROP CONSTRAINT [FK_MenuItemOrder_MenuItem];
GO
IF OBJECT_ID(N'[dbo].[FK_MenuItemOrder_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MenuItemOrder] DROP CONSTRAINT [FK_MenuItemOrder_Order];
GO
IF OBJECT_ID(N'[dbo].[FK_MenuCategoryMenuItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MenuItemSet] DROP CONSTRAINT [FK_MenuCategoryMenuItem];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderStatusOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderSet] DROP CONSTRAINT [FK_OrderStatusOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_PaymentOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PaymentSet] DROP CONSTRAINT [FK_PaymentOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_PaymentMethodPayment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PaymentSet] DROP CONSTRAINT [FK_PaymentMethodPayment];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_inherits_Person]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Employee] DROP CONSTRAINT [FK_Employee_inherits_Person];
GO
IF OBJECT_ID(N'[dbo].[FK_Client_inherits_Person]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Client] DROP CONSTRAINT [FK_Client_inherits_Person];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AddressSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AddressSet];
GO
IF OBJECT_ID(N'[dbo].[PersonSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet];
GO
IF OBJECT_ID(N'[dbo].[OrderSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderSet];
GO
IF OBJECT_ID(N'[dbo].[RestaurantSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RestaurantSet];
GO
IF OBJECT_ID(N'[dbo].[MenuItemSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MenuItemSet];
GO
IF OBJECT_ID(N'[dbo].[MenuCategorySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MenuCategorySet];
GO
IF OBJECT_ID(N'[dbo].[OrderStatusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderStatusSet];
GO
IF OBJECT_ID(N'[dbo].[PaymentSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PaymentSet];
GO
IF OBJECT_ID(N'[dbo].[PaymentMethodSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PaymentMethodSet];
GO
IF OBJECT_ID(N'[dbo].[PersonSet_Employee]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet_Employee];
GO
IF OBJECT_ID(N'[dbo].[PersonSet_Client]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet_Client];
GO
IF OBJECT_ID(N'[dbo].[MenuItemOrder]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MenuItemOrder];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AddressSet'
CREATE TABLE [dbo].[AddressSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Street] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [PostalCode] nvarchar(max)  NOT NULL,
    [Country] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PersonSet'
CREATE TABLE [dbo].[PersonSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [PhoneNumber] nvarchar(max)  NULL,
    [Address_Id] int  NOT NULL
);
GO

-- Creating table 'OrderSet'
CREATE TABLE [dbo].[OrderSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Total] float  NOT NULL,
    [Employee_Id] int  NOT NULL,
    [Client_Id] int  NOT NULL,
    [OrderStatus_Id] int  NOT NULL
);
GO

-- Creating table 'RestaurantSet'
CREATE TABLE [dbo].[RestaurantSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Address_Id] int  NOT NULL
);
GO

-- Creating table 'MenuItemSet'
CREATE TABLE [dbo].[MenuItemSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [ImagePath] nvarchar(max)  NOT NULL,
    [Ingredients] nvarchar(max)  NOT NULL,
    [Price] float  NOT NULL,
    [Active] bit  NOT NULL,
    [MenuCategoryId] int  NOT NULL
);
GO

-- Creating table 'MenuCategorySet'
CREATE TABLE [dbo].[MenuCategorySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'OrderStatusSet'
CREATE TABLE [dbo].[OrderStatusSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PaymentSet'
CREATE TABLE [dbo].[PaymentSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [PaymentMethodId] int  NOT NULL,
    [Order_Id] int  NOT NULL
);
GO

-- Creating table 'PaymentMethodSet'
CREATE TABLE [dbo].[PaymentMethodSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'ActiveMenuItemSet'
CREATE TABLE [dbo].[ActiveMenuItemSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RestaurantId] int  NOT NULL,
    [MenuItemId] int  NOT NULL
);
GO

-- Creating table 'PersonSet_Employee'
CREATE TABLE [dbo].[PersonSet_Employee] (
    [Wage] float  NOT NULL,
    [Position] nvarchar(max)  NOT NULL,
    [RestaurantId] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'PersonSet_Client'
CREATE TABLE [dbo].[PersonSet_Client] (
    [TotalSpent] nvarchar(max)  NOT NULL,
    [NIF] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'MenuItemOrder'
CREATE TABLE [dbo].[MenuItemOrder] (
    [MenuItem_Id] int  NOT NULL,
    [Orders_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'AddressSet'
ALTER TABLE [dbo].[AddressSet]
ADD CONSTRAINT [PK_AddressSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PersonSet'
ALTER TABLE [dbo].[PersonSet]
ADD CONSTRAINT [PK_PersonSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OrderSet'
ALTER TABLE [dbo].[OrderSet]
ADD CONSTRAINT [PK_OrderSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RestaurantSet'
ALTER TABLE [dbo].[RestaurantSet]
ADD CONSTRAINT [PK_RestaurantSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MenuItemSet'
ALTER TABLE [dbo].[MenuItemSet]
ADD CONSTRAINT [PK_MenuItemSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MenuCategorySet'
ALTER TABLE [dbo].[MenuCategorySet]
ADD CONSTRAINT [PK_MenuCategorySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OrderStatusSet'
ALTER TABLE [dbo].[OrderStatusSet]
ADD CONSTRAINT [PK_OrderStatusSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PaymentSet'
ALTER TABLE [dbo].[PaymentSet]
ADD CONSTRAINT [PK_PaymentSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PaymentMethodSet'
ALTER TABLE [dbo].[PaymentMethodSet]
ADD CONSTRAINT [PK_PaymentMethodSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ActiveMenuItemSet'
ALTER TABLE [dbo].[ActiveMenuItemSet]
ADD CONSTRAINT [PK_ActiveMenuItemSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PersonSet_Employee'
ALTER TABLE [dbo].[PersonSet_Employee]
ADD CONSTRAINT [PK_PersonSet_Employee]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PersonSet_Client'
ALTER TABLE [dbo].[PersonSet_Client]
ADD CONSTRAINT [PK_PersonSet_Client]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [MenuItem_Id], [Orders_Id] in table 'MenuItemOrder'
ALTER TABLE [dbo].[MenuItemOrder]
ADD CONSTRAINT [PK_MenuItemOrder]
    PRIMARY KEY CLUSTERED ([MenuItem_Id], [Orders_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Address_Id] in table 'PersonSet'
ALTER TABLE [dbo].[PersonSet]
ADD CONSTRAINT [FK_PersonAddress]
    FOREIGN KEY ([Address_Id])
    REFERENCES [dbo].[AddressSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonAddress'
CREATE INDEX [IX_FK_PersonAddress]
ON [dbo].[PersonSet]
    ([Address_Id]);
GO

-- Creating foreign key on [Employee_Id] in table 'OrderSet'
ALTER TABLE [dbo].[OrderSet]
ADD CONSTRAINT [FK_OrderEmployee]
    FOREIGN KEY ([Employee_Id])
    REFERENCES [dbo].[PersonSet_Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderEmployee'
CREATE INDEX [IX_FK_OrderEmployee]
ON [dbo].[OrderSet]
    ([Employee_Id]);
GO

-- Creating foreign key on [Client_Id] in table 'OrderSet'
ALTER TABLE [dbo].[OrderSet]
ADD CONSTRAINT [FK_OrderClient]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[PersonSet_Client]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderClient'
CREATE INDEX [IX_FK_OrderClient]
ON [dbo].[OrderSet]
    ([Client_Id]);
GO

-- Creating foreign key on [Address_Id] in table 'RestaurantSet'
ALTER TABLE [dbo].[RestaurantSet]
ADD CONSTRAINT [FK_RestaurantAddress]
    FOREIGN KEY ([Address_Id])
    REFERENCES [dbo].[AddressSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RestaurantAddress'
CREATE INDEX [IX_FK_RestaurantAddress]
ON [dbo].[RestaurantSet]
    ([Address_Id]);
GO

-- Creating foreign key on [RestaurantId] in table 'PersonSet_Employee'
ALTER TABLE [dbo].[PersonSet_Employee]
ADD CONSTRAINT [FK_RestaurantEmployee]
    FOREIGN KEY ([RestaurantId])
    REFERENCES [dbo].[RestaurantSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RestaurantEmployee'
CREATE INDEX [IX_FK_RestaurantEmployee]
ON [dbo].[PersonSet_Employee]
    ([RestaurantId]);
GO

-- Creating foreign key on [MenuItem_Id] in table 'MenuItemOrder'
ALTER TABLE [dbo].[MenuItemOrder]
ADD CONSTRAINT [FK_MenuItemOrder_MenuItem]
    FOREIGN KEY ([MenuItem_Id])
    REFERENCES [dbo].[MenuItemSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Orders_Id] in table 'MenuItemOrder'
ALTER TABLE [dbo].[MenuItemOrder]
ADD CONSTRAINT [FK_MenuItemOrder_Order]
    FOREIGN KEY ([Orders_Id])
    REFERENCES [dbo].[OrderSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MenuItemOrder_Order'
CREATE INDEX [IX_FK_MenuItemOrder_Order]
ON [dbo].[MenuItemOrder]
    ([Orders_Id]);
GO

-- Creating foreign key on [MenuCategoryId] in table 'MenuItemSet'
ALTER TABLE [dbo].[MenuItemSet]
ADD CONSTRAINT [FK_MenuCategoryMenuItem]
    FOREIGN KEY ([MenuCategoryId])
    REFERENCES [dbo].[MenuCategorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MenuCategoryMenuItem'
CREATE INDEX [IX_FK_MenuCategoryMenuItem]
ON [dbo].[MenuItemSet]
    ([MenuCategoryId]);
GO

-- Creating foreign key on [OrderStatus_Id] in table 'OrderSet'
ALTER TABLE [dbo].[OrderSet]
ADD CONSTRAINT [FK_OrderStatusOrder]
    FOREIGN KEY ([OrderStatus_Id])
    REFERENCES [dbo].[OrderStatusSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderStatusOrder'
CREATE INDEX [IX_FK_OrderStatusOrder]
ON [dbo].[OrderSet]
    ([OrderStatus_Id]);
GO

-- Creating foreign key on [Order_Id] in table 'PaymentSet'
ALTER TABLE [dbo].[PaymentSet]
ADD CONSTRAINT [FK_PaymentOrder]
    FOREIGN KEY ([Order_Id])
    REFERENCES [dbo].[OrderSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PaymentOrder'
CREATE INDEX [IX_FK_PaymentOrder]
ON [dbo].[PaymentSet]
    ([Order_Id]);
GO

-- Creating foreign key on [PaymentMethodId] in table 'PaymentSet'
ALTER TABLE [dbo].[PaymentSet]
ADD CONSTRAINT [FK_PaymentMethodPayment]
    FOREIGN KEY ([PaymentMethodId])
    REFERENCES [dbo].[PaymentMethodSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PaymentMethodPayment'
CREATE INDEX [IX_FK_PaymentMethodPayment]
ON [dbo].[PaymentSet]
    ([PaymentMethodId]);
GO

-- Creating foreign key on [RestaurantId] in table 'ActiveMenuItemSet'
ALTER TABLE [dbo].[ActiveMenuItemSet]
ADD CONSTRAINT [FK_RestaurantActiveMenuItem]
    FOREIGN KEY ([RestaurantId])
    REFERENCES [dbo].[RestaurantSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RestaurantActiveMenuItem'
CREATE INDEX [IX_FK_RestaurantActiveMenuItem]
ON [dbo].[ActiveMenuItemSet]
    ([RestaurantId]);
GO

-- Creating foreign key on [MenuItemId] in table 'ActiveMenuItemSet'
ALTER TABLE [dbo].[ActiveMenuItemSet]
ADD CONSTRAINT [FK_MenuItemActiveMenuItem]
    FOREIGN KEY ([MenuItemId])
    REFERENCES [dbo].[MenuItemSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MenuItemActiveMenuItem'
CREATE INDEX [IX_FK_MenuItemActiveMenuItem]
ON [dbo].[ActiveMenuItemSet]
    ([MenuItemId]);
GO

-- Creating foreign key on [Id] in table 'PersonSet_Employee'
ALTER TABLE [dbo].[PersonSet_Employee]
ADD CONSTRAINT [FK_Employee_inherits_Person]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[PersonSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'PersonSet_Client'
ALTER TABLE [dbo].[PersonSet_Client]
ADD CONSTRAINT [FK_Client_inherits_Person]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[PersonSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------