USE hris

GO

SELECT
	'ERIS' AS APP_NAME,
	'[' +us.userName+ ']' + ' - ' + us.userFullName AS 'USERNAME',
	uslev.OrderID AS 'GROUP ID',
	lev.level_name AS 'GROUP MENU',
	us.createdDate AS 'CREATED DATE',
	MAX(uslog.log_login) AS 'LAST LOGIN',
	CASE WHEN usapp.rowstatus = 1 THEN 'Aktif'
	ELSE 'Tidak Aktif' 
	END AS 'STATUS',
	CASE WHEN lev.level_name LIKE '%Admin%' THEN 'Ya'
	ELSE 'Tidak'
	END AS 'ADMIN FLAG',
	menu.menu_id AS 'MENU ID',
	COALESCE(lang.lang_ina,menu.menu_nama) AS 'MENU NAME'
FROM
	webuser.dbo.m_User AS us
	INNER JOIN
	(SELECT * FROM dbo.tbl001userlevel CROSS APPLY dbo.FUNC_SPLIT_COMMA_TO_IN(level_id)) AS uslev 
	ON us.userName = uslev.user_name
	INNER JOIN
	(SELECT * FROM webuser.dbo.m_UserApp WHERE appCode = 'AP1503004') AS usapp --ERIS APPCODE
	ON usapp.username = us.userName
	LEFT JOIN
	dbo.tbl001level AS lev
	ON lev.level_id = uslev.OrderID
	LEFT JOIN
	(SELECT * FROM tbl002levelmenu WHERE MenuEnable = 1) AS levm
	ON lev.level_id = levm.IdLevel 
	LEFT JOIN
	tbl001menu AS menu
	ON levm.MenuId = menu.menu_id
	LEFT JOIN
	tbl002user_log AS uslog
	ON us.userName = uslog.log_user_id
	LEFT JOIN
	tbl001lang AS lang
	ON menu.menu_nama = lang.lang_id
	--WHERE lang.lang_id IS NULL
WHERE	
	usapp.rowstatus = 1 --- YANG AKTIF SAJA
GROUP BY
	us.userName,
	us.userFullName,
	lev.level_id,
	lev.level_name,
	menu.menu_id,
	lang.lang_ina,
	uslev.OrderID,
	usapp.rowstatus,
	us.createdDate,
	menu.menu_nama