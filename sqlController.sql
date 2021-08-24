select distinct(cd_ccli),tx_cgc,nm_nomecli from dbo.senha 
where tx_cgc in (			SELECT distinct(tx_cgc) FROM dbo.senha
							GROUP BY tx_cgc
							HAVING COUNT (tx_cgc) > 1)
order by tx_cgc,nm_nomecli