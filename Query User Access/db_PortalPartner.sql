USE db_PortalPartner

SELECT
	'Portal Partner' AS ApplicationName,
	'['+CAST([user].id AS VARCHAR(100))+']'+CASE WHEN COALESCE([user].name, '') <> '' THEN ' - '+[user].name ELSE ' - '+[user].name END AS [User],
	[group].id AS GroupId,
	[group].name AS GroupDesc,
	[user].created_date AS CreateDate,
	NULL AS LastLoginDate,
	CASE WHEN COALESCE([user].id, '') <> '' THEN 'Aktif' ELSE 'Tidak Aktif' END AS Status,
	NULL AS Administrator_Flag,
	modul.id AS MenuId,
	modul.name AS MenuDesc
FROM
	m_user_partner AS [user]
	LEFT JOIN
	m_grup AS [group]
	ON [user].group_id = [group].id
	LEFT JOIN
	i_grup_modul AS group_modul
	ON [group].id = group_modul.group_id
	LEFT JOIN
	m_modul AS modul
	ON group_modul.modul_id = modul.id
--WHERE
--	[user].username IN (
--		'hci.monika.sari@equity.id'--,
--		--'syifa.inayati@homecredit.co.id',
--		--'cabang.surakarta@bankjateng.co.id',
--		--'hedy.romadhon@equity.id'
--	)