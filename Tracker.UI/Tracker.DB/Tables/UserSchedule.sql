CREATE TABLE [dbo].[UserSchedule]
(
	[UserScheduleId] INT NOT NULL PRIMARY KEY, 
    [UserId] INT NOT NULL, 
    [MuscleGroupId] INT NOT NULL, 
    [Day] DATE NOT NULL,
	[TimeStarted] DATETIME,
	[Overridden] BIT NOT NULL DEFAULT 0,
	[OverrideMuscleGroupId] INT,
	[CardioTypeId] INT,
	[CardioScheduleTime] DATETIME,
	[OverrideCardioTypeId] INT,
	[OverrideCardioScheduleTime] DATETIME
)
