IF  NOT EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))

BEGIN
CREATE TABLE [dbo].[User](
    Id int IDENTITY(1,1) NOT NULL,
    LastName varchar(125),
    FirstName varchar(125),
    Email varchar(125),
    Mobile varchar(30)
 CONSTRAINT [PK_UserId] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
) ON [PRIMARY]

END