CREATE TABLE [dbo].[PlanType]
(
	[PlanTypeId] INT NOT NULL PRIMARY KEY, 
    [PlanName] NVARCHAR(50) NOT NULL, 
    [LengthInDays] INT NOT NULL, 
    [Enabled] BIT NOT NULL
)
