CREATE TABLE [dbo].[AlertTypes] (
    [Id]                   INT           IDENTITY (1, 1) NOT NULL,
    [Description]          VARCHAR (100) NOT NULL,
    [GroupId]              INT           NOT NULL,
    [AlertName]            VARCHAR (100) NULL,
    [DefaultTicketType]    INT           NULL,
    [ShipwatchVisible]     BIT           CONSTRAINT [DF_AlertTypes_ShipwatchVisible] DEFAULT ((0)) NOT NULL,
    [ShipwatchDescription] VARCHAR (100) NULL,
    CONSTRAINT [Pk_AlertTypes_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Uk_AlertTypes_Description] UNIQUE NONCLUSTERED ([Description] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Enum table for Alert types', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AlertTypes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Alert Group that this belongs to', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AlertTypes', @level2type = N'COLUMN', @level2name = N'GroupId';

