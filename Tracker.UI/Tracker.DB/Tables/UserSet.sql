CREATE TABLE [dbo].[UserSet]
(
	[UserSetId] INT NOT NULL PRIMARY KEY, 
	[UserId] INT NOT NULL,
    [LiftId] INT NOT NULL, 
    [Reps] INT NULL, 
    [Notes] VARCHAR(200) NULL
)
