WITH months AS
(
	SELECT  datename(month,concat(year(getdate()),'-01','-01')) AS month
	       ,month(concat(year(getdate()),'-01','-01'))          AS monthN
	       ,day(eomonth(concat(year(getdate()),'-01','-01')))   AS days union
	SELECT  datename(month,concat(year(getdate()),'-02','-01')) AS month
	       ,month(concat(year(getdate()),'-02','-01'))          AS monthN
	       ,day(eomonth(concat(year(getdate()),'-02','-01')))   AS days union
	SELECT  datename(month,concat(year(getdate()),'-03','-01')) AS month
	       ,month(concat(year(getdate()),'-03','-01'))          AS monthN
	       ,day(eomonth(concat(year(getdate()),'-03','-01')))   AS days union
	SELECT  datename(month,concat(year(getdate()),'-04','-01')) AS month
	       ,month(concat(year(getdate()),'-04','-01'))          AS monthN
	       ,day(eomonth(concat(year(getdate()),'-04','-01')))   AS days union
	SELECT  datename(month,concat(year(getdate()),'-05','-01')) AS month
	       ,month(concat(year(getdate()),'-05','-01'))          AS monthN
	       ,day(eomonth(concat(year(getdate()),'-05','-01')))   AS days union
	SELECT  datename(month,concat(year(getdate()),'-06','-01')) AS month
	       ,month(concat(year(getdate()),'-06','-01'))          AS monthN
	       ,day(eomonth(concat(year(getdate()),'-06','-01')))   AS days union
	SELECT  datename(month,concat(year(getdate()),'-07','-01')) AS month
	       ,month(concat(year(getdate()),'-07','-01'))          AS monthN
	       ,day(eomonth(concat(year(getdate()),'-07','-01')))   AS days union
	SELECT  datename(month,concat(year(getdate()),'-08','-01')) AS month
	       ,month(concat(year(getdate()),'-08','-01'))          AS monthN
	       ,day(eomonth(concat(year(getdate()),'-08','-01')))   AS days union
	SELECT  datename(month,concat(year(getdate()),'-09','-01')) AS month
	       ,month(concat(year(getdate()),'-09','-01'))          AS monthN
	       ,day(eomonth(concat(year(getdate()),'-09','-01')))   AS days union
	SELECT  datename(month,concat(year(getdate()),'-10','-01')) AS month
	       ,month(concat(year(getdate()),'-10','-01'))          AS monthN
	       ,day(eomonth(concat(year(getdate()),'-10','-01')))   AS days union
	SELECT  datename(month,concat(year(getdate()),'-11','-01')) AS month
	       ,month(concat(year(getdate()),'-11','-01'))          AS monthN
	       ,day(eomonth(concat(year(getdate()),'-11','-01')))   AS days union
	SELECT  datename(month,concat(year(getdate()),'-12','-01')) AS month
	       ,month(concat(year(getdate()),'-12','-01'))          AS monthN
	       ,day(eomonth(concat(year(getdate()),'-12','-01')))   AS days
)
SELECT  month
       ,days
FROM months
ORDER BY monthN;