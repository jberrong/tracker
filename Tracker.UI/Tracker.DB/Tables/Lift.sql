CREATE TABLE [dbo].[Lift]
(
	[LiftId] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(500) NOT NULL, 
    [Description] NCHAR(10) NOT NULL, 
    [MuscleGroupId] INT NOT NULL, 
	[MuscleGroupDetailId] INT NULL,
    [Enabled] BIT NOT NULL
)
