The orginal keystore expired on Oct 5 2018.
Create a new keystore and exported the bw ear file.
So update the BW project here.



keystore password: tibco123

amx340_id
Exported to amx340.pem (will be imported to BW trustKeystore)
amx340_trust  ( import BW_CER)

bw57_id
Exported to bw_CER (will be imported to amx trustkeystore)
bw57_trust
(import amx_CER)

Key Alias: amx ,  password: tibco123
Key Alias: bw, 	  password : tibco123

To make the new keystore work with current BAT,
Changed the alias and keystore password in 
amxdata_2node_orcl.template.xml

If you are running different DB, you need to change the below:
1.acme-sales/acme-sales -> amx/tibco123
2.RSA1024 ->tibco123

By Amy GuO, Oct 15 2018
