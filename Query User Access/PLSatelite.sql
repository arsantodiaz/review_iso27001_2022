USE db_dfs_satelite

DECLARE @group_menu TABLE(
	group_menu_id VARCHAR(10),
	group_menu_desc VARCHAR(100),
	menu_id VARCHAR(10),
	menu_desc VARCHAR(100),
	t_view INT,
	t_new INT,
	t_edit1 INT,
	t_edit2 INT,
	t_delete INT,
	t_print INT
)

INSERT INTO @group_menu
SELECT
	group_user.id_user AS user_group_id,
	group_user.Nama,
	menu_item.Id_Menu AS menu_id,
	menu_item.Judul AS menu_desc,
	group_menu.T_View,
	group_menu.T_New,
	group_menu.T_Edit1,
	group_menu.T_Edit2,
	group_menu.T_Delete,
	group_menu.T_Print
FROM
	gUser_Name AS group_user
	LEFT JOIN
	gMenu_Group AS group_menu
	ON group_user.id_user = group_menu.id_user
	LEFT JOIN
	gMenu_Item AS menu_item
	ON group_menu.Id_Menu = menu_item.Id_Menu
WHERE
	group_user.Tipe = 2
	AND COALESCE(menu_item.Id_Menu, '') <> '' 
ORDER BY
	group_user.id_user,
	menu_item.Id_Menu

DECLARE @group_user TABLE(
	group_user_id VARCHAR(10),
	[user_id] VARCHAR(10),
	[user_name] VARCHAR(100),
	[name] VARCHAR(100),
	[status] VARCHAR(100),
	create_date DATETIME,
	tingkat INT,
	Nama_Dept VARCHAR(100)
)

INSERT INTO @group_user
SELECT
	group_user.Id_User As group_user_id,
	[user_name].Id_User AS [user_id],
	[user_name].User_Name,
	[user_name].Nama,
	CASE WHEN [user_name].Status = 'I' THEN 'Active' ELSE 'Inactive' END AS [status],
	[user_name].Create_Date AS create_date,
	[group_user].tingkat,
	dept.Deskripsi
FROM
	gUser_Name AS [user_name]
	LEFT JOIN
	gGroup_User AS group_user
	ON [user_name].Id_User = group_user.Id_User2
	LEFT JOIN
	gUser_Dept AS dept
	ON dept.Id_Dept = [user_name].Id_Dept
WHERE
	[user_name].tipe = 1 AND
	[user_name].Status = 'I'

SELECT
    'PLSatelite' AS 'App Name',
    '[' +UserName+ ']' + ' - ' + name AS 'Username',
	Status,
	GroupName AS 'Group Name',
	Nama_Dept AS 'Dept Name',
	tingkat AS 'Level',
	MenuId AS ' Menu Id',
	MenuDesc AS 'Menu Name', 
	CASE 
		WHEN [Column] = 't_view' THEN 'View'
		WHEN [Column] = 't_new' THEN 'New'
		WHEN [Column] = 't_edit1' THEN 'Edit 1'
		WHEN [Column] = 't_edit2' THEN 'Edit 2'
		WHEN [Column] = 't_delete' THEN 'Delete'
		WHEN [Column] = 't_print' THEN 'Print'
	END	
		AS 'Permission',
	Value
FROM
(
SELECT
	group_user.user_name AS [UserName],
	group_user.status AS Status,
	group_user.name,
	group_menu.group_menu_desc AS GroupName,
	group_user.Nama_Dept,
	group_user.create_date AS CreateDate,
	group_user.tingkat,
	group_menu.menu_id AS MenuId,
	group_menu.t_view,
	group_menu.t_new,
	group_menu.t_edit1,
	group_menu.t_edit2,
	group_menu.t_delete,
	group_menu.t_print,
	group_menu.menu_desc AS MenuDesc
FROM
	@group_user AS group_user
	LEFT JOIN
	@group_menu AS group_menu
	ON group_user.group_user_id = group_menu.group_menu_id
) t
UNPIVOT
(
    Value FOR [Column] IN (t_view,t_new,t_edit1,t_edit2,t_delete,t_print)
) unpiv
WHERE
	Value >= tingkat