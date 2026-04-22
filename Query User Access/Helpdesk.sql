USE dbwh_helper

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_WARNINGS ON
GO


DECLARE @temp_table TABLE(
		id_role INT,
		user_role VARCHAR(100),
		id_menu_user INT,
		menu_user_desc VARCHAR(100)
)
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(1,'User',1,'Create Ticket')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(1,'User',2,'Dashboard')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(1,'User',3,'On Process Ticket (My Request Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(1,'User',4,'Waiting Approval (My Request Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(1,'User',5,'Waiting Confirmation (My Request Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(1,'User',6,'Ticket Inquiry (My Request Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(2,'Dispatcher',7,'Request (Dispatch Task Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(2,'Dispatcher',8,'Dispatch Inquiry (Dispatch Task Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(3,'Analyst',9,'Request (My Task Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(3,'Analyst',10,'Task Inquiry (My Task Ticket) ')
--INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(4,'Team Leader',,'')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(5,'Super Admin',1,'Create Ticket')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(5,'Super Admin',2,'Dashboard')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(5,'Super Admin',3,'On Process Ticket (My Request Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(5,'Super Admin',4,'Waiting Approval (My Request Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(5,'Super Admin',5,'Waiting Confirmation (My Request Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(5,'Super Admin',6,'Ticket Inquiry (My Request Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(5,'Super Admin',7,'Request (Dispatch Task Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(5,'Super Admin',8,'Dispatch Inquiry (Dispatch Task Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(5,'Super Admin',9,'Request (Dispatch Task Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(5,'Super Admin',10,'Dispatch Inquiry (Dispatch Task Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(6,'Dept Head',12,'Approval Inquiry (Approval)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(6,'Dept Head',13,'SLA (My Subs Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(6,'Dept Head',14,'Incoming (My Subs Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(6,'Dept Head',15,'Outgoing (My Subs Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(7,'Div Head',12,'Approval Inquiry (Approval)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(7,'Div Head',13,'SLA (My Subs Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(7,'Div Head',14,'Incoming (My Subs Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(7,'Div Head',15,'Outgoing (My Subs Ticket)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(8,'Service Quality',16,'Area Problem And Solution (Data Master)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(8,'Service Quality',17,'Manage Dispatcher (Data Master)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(8,'Service Quality',18,'Monitoring (Data Master)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(8,'Service Quality',19,'SLA (Monitoring)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(8,'Service Quality',20,'All Ticket (Monitoring)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(9,'Director',12,'Approval Inquiry (Approval)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(10,'Monitoring',19,'SLA (Monitoring)')
INSERT INTO @temp_table(id_role,user_role,id_menu_user,menu_user_desc) VALUES(10,'Monitoring',20,'All Ticket (Monitoring)')

SELECT DISTINCT 
	'Helpdesk' AS 'App Name',
	'[' +usrole.user_id+ ']' + ' - ' + us.userFullName AS 'Username',
	dept.departmentName AS 'Dept Name', 
	role.id AS group_menu_id,
	role.description AS 'Group Name',
	us.createdDate AS create_date,
	NULL AS 'last_login',
	CASE WHEN usapp.rowstatus = 1 THEN 'Active'
	ELSE 'Inactive' END AS 'Status',
	CASE WHEN role.description = 'Super Admin' THEN 'Ya'
	ELSE 'Tidak' END AS admin_flag,
	menu.id_menu_user AS 'Menu Id',
	menu.menu_user_desc AS 'Menu Name'
  FROM 
	[LINKED-TO-EQUITY].dbHelpdesk.dbo.t_user_role AS usrole
	LEFT JOIN
	@temp_table AS menu
	ON menu.id_role = usrole.role_id
	LEFT JOIN
	[LINKED-TO-EQUITY].dbHelpdesk.dbo.m_role AS role
	ON usrole.role_id = role.id
	LEFT JOIN
	[LINKED-TO-EQUITY].webuser.dbo.m_User AS us
	ON us.userName = usrole.user_id
	LEFT JOIN
	(SELECT * FROM [LINKED-TO-EQUITY].webuser.dbo.m_UserApp WHERE appCode = 'AP1503001') AS usapp
	ON us.userName = usapp.username
	LEFT JOIN
	[LINKED-TO-EQUITY].hris.dbo.Employee AS emp
	ON emp.EmployeeName = us.userFullName
	LEFT JOIN
	(SELECT 
		idEmployee,
		MAX(IdEmployeePlacement) AS IdEmployeePlacement 
	FROM 
		[LINKED-TO-EQUITY].hris.dbo.EmployeePlacement
	GROUP BY
		idEmployee
	) AS empmax
	ON empmax.IdEmployee = emp.IdEmployee
	INNER JOIN
	[LINKED-TO-EQUITY].hris.dbo.EmployeePlacement AS emppl
	ON emppl.IdEmployee = empmax.IdEmployee AND
	emppl.IdEmployeePlacement = empmax.IdEmployeePlacement
	LEFT JOIN
	[LINKED-TO-EQUITY].webuser.dbo.m_Department AS dept
	ON dept.departmentCode = emppl.DepartmentCode
	WHERE
		us.userName IS NOT NULL AND
		usapp.rowstatus = 1