CREATE TABLE [dbo].[UserLiftSchedule]
(
	[UserLiftScheudleId] INT NOT NULL PRIMARY KEY, 
    [UserScheduleId] INT NOT NULL, 
    [LiftId] INT NOT NULL, 
    [Overridden] BIT NOT NULL DEFAULT 0, 
    [OverrideLiftId] INT NULL
)
