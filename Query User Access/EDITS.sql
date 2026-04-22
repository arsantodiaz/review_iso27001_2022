USE db_edits


--DELETE FROM dbo.user_access WHERE APP_NAME = 'EDITS'
-- INSERT INTO dbo.user_access
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_WARNINGS ON
GO

SELECT

		 'EDITS' AS 'App Name'
		,'[' + usr.username + ']' + ' - ' + usr.user_fullname AS'Username'
		,dept.departmentName AS 'Dept Name'
		,mgm.group_menu_id
		,mgm.description AS'Group Name'
		,usr.created_date AS'TGL_CREATE'
		,ISNULL(sus.last_activity, lmu.modified_date) AS'LAST_LOGIN'
		,stat.description AS'Status'
		,CASE WHEN mgm.group_menu_id = 4 THEN 'Ya' ELSE 'Tidak' END AS 'FLAG_ADMINISTRATOR'
		,mm.menu_id AS 'Menu Id'
		,mm.description AS'Menu Name'

FROM 
		(
			SELECT
				*
			FROM
				db_edits.dbo.m_user 
			WHERE
				--username IN 
				--(
				--	 'IHA'
				--	,'HTO'
				--	,'LSM'
				--	,'JSE'
				--	,'LLA'
				--	,'NIL'
				--	,'GMA'
				--	,'AFI'
				--	,'ADS'
				--) AND
				is_delete <> 1 
		)usr
		LEFT JOIN
		(
			SELECT
				*
			FROM
				db_edits.dbo.m_user_menu_mapping 
			WHERE
				is_delete <> 1 
		)mumm
		ON mumm.user_id = usr.username
		INNER JOIN								---- INNER JOIN, DIKARENAKAN TERDAPAT M_MENU YANG SUDAH TIDAK AKTIF DIDALAM TABEL dbo.m_menu 
												---- tapi di table dbo.m_user_menu_mapping belum diupdate artinya masih terdapat menu tersebut padahal di menu edits sudah tidak aktif(ada)
		(
			SELECT
				*
			FROM
				db_edits.dbo.m_menu
			WHERE
				is_delete <> 1 --AND 
				--menu_id = 11
		)mm
		ON mm.menu_id = mumm.menu_id
		LEFT JOIN
		(
			SELECT 
				*
			FROM
				db_edits.dbo.m_user_group_menu_mapping
			WHERE
				is_delete <> 1 --AND user_id LIKE 'AAB'					 ---- TERDAPAT USER YANG BELUM TER-MAPPING KEDALAM GROUP
		) mugmm
		ON usr.username = mugmm.user_id
		LEFT JOIN
		(
			SELECT
				*
			FROM
				db_edits.dbo.m_group_menu 
		)mgm
		ON mugmm.group_menu_id = mgm.group_menu_id
		LEFT JOIN
		db_edits.dbo.m_status stat
		ON stat.status_id = usr.status_id
		LEFT JOIN
		(
			SELECT	
				username,
				max(last_activity) AS last_activity						---- terupdate
			FROM	
				db_edits.dbo.s_user_session 
			--WHERE
			--	username LIKE 'AAO'
			GROUP BY
				username
		
		)sus
		ON sus.username = usr.username
		LEFT JOIN
		(
			SELECT	
				user_id,
				username,
				max(modified_date) AS modified_date						---- last update :2023-05-05 09:58:23.750 
			FROM														---- discuss dengan helmi, aplikasi edits selalu dipakai user setiap harinya 
																		---- untuk update dokumen nasabah	
				db_edits.dbo.log_m_user lmu
			--WHERE
			--	username LIKE 'AAO'
			GROUP BY
				user_id,
				username
		)lmu
		ON	lmu.user_id = usr.user_id AND
			lmu.username = usr.username
		LEFT JOIN
		webuser.dbo.m_User AS m_user
		ON m_user.userName = usr.username
		LEFT JOIN
		hris.dbo.Employee AS emp
		ON emp.EmployeeName = m_user.userFullName
		LEFT JOIN
		(SELECT 
			idEmployee,
			MAX(IdEmployeePlacement) AS IdEmployeePlacement 
		FROM 
			hris.dbo.EmployeePlacement
		GROUP BY
			idEmployee
		) AS empmax
		ON empmax.IdEmployee = emp.IdEmployee
		INNER JOIN
		hris.dbo.EmployeePlacement AS emppl
		ON emppl.IdEmployee = empmax.IdEmployee AND
		emppl.IdEmployeePlacement = empmax.IdEmployeePlacement
		LEFT JOIN
		webuser.dbo.m_Department AS dept
		ON dept.departmentCode = emppl.DepartmentCode
WHERE	
		stat.description = 'Active'