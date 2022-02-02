IF  NOT EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[dbo].[UserRoleCompany]') AND type in (N'U'))

BEGIN
CREATE TABLE [dbo].[UserRoleCompany] (
    Id int IDENTITY(1,1) NOT NULL,
    CompanyId int NOT NULL,
    UserId int NOT NULL,
	RoleId int NOT NULL,

   

CONSTRAINT [PK_UserRoleCompanyId] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
) ON [PRIMARY]

ALTER TABLE [dbo].[UserRoleCompanyId]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleCompanyId_Company] FOREIGN KEY([CompanyId])
	REFERENCES [dbo].[Company] ([Id])

	ALTER TABLE [dbo].[CompanyId] CHECK CONSTRAINT [FK_UserRoleCompanyId_Company]


ALTER TABLE [dbo].[UserRoleCompanyId]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleCompanyId_User] FOREIGN KEY([UserId])
	REFERENCES [dbo].[User] ([Id])

	ALTER TABLE [dbo].[UserId] CHECK CONSTRAINT [FK_UserRoleCompanyId_User]


ALTER TABLE [dbo].[UserRoleCompanyId]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleCompanyId_Role] FOREIGN KEY([RoleId])
	REFERENCES [dbo].[Role] ([Id])

	ALTER TABLE [dbo].[RoleId] CHECK CONSTRAINT [FK_UserRoleCompanyId_Role]

END