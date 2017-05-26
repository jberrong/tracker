CREATE TABLE [dbo].[User]
(
	[UserId] INT NOT NULL PRIMARY KEY, 
    [FirstName] VARCHAR(50) NOT NULL, 
    [LastName] VARCHAR(50) NOT NULL, 
    [Phone] NCHAR(15) NOT NULL, 
    [Email] NCHAR(25) NOT NULL, 
    [Enabled] BIT NOT NULL, 
    [Password] NVARCHAR(50) NULL
)
