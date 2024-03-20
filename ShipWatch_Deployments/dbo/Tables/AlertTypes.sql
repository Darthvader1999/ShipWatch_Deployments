CREATE TABLE [dbo].[AlertTypes] (
    [Id]                   INT           IDENTITY (1, 1) NOT NULL,
    [Description]          VARCHAR (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [GroupId]              INT           NOT NULL,
    [AlertName]            VARCHAR (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [DefaultTicketType]    INT           NULL,
    [ShipwatchVisible]     BIT           DEFAULT ((0)) NOT NULL,
    [ShipwatchDescription] VARCHAR (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Omkar] NCHAR(10) NULL, 
    [Mhapralkar] NCHAR(10) NULL, 
    [Createdby] NCHAR(10) NULL, 
    [mustchange] NCHAR(10) NULL, 
    [Testday] NCHAR(10) NULL, 
    CONSTRAINT [Pk_AlertTypes_In] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Uk_AlertTypes_Description] UNIQUE NONCLUSTERED ([Description] ASC)
);

