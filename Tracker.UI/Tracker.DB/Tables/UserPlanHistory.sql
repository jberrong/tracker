CREATE TABLE [dbo].[UserPlanHistory]
(
	[UserPlanHistoryId] INT NOT NULL PRIMARY KEY, 
    [UserId] INT NOT NULL, 
    [PlanTypeId] INT NOT NULL, 
    [Completed] BIT NOT NULL, 
    [StartDate] DATE NOT NULL, 
    [EndDate] DATE NULL
)
