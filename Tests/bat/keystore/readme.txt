RSA1024 Keystore password: RSA1024
 
Key Alias: acme-eng ,  password: acme-eng
Key Alias: acme-sales, password : acme-sales

BW Keystore password: RSA1024

admin-emsconfig-tct-2016.jks: Tibco123



=========================
Above keysotre has exparied. [RSA1024.keystore and BW.keystore]
Create a new one by Amy Guo:

New Changes:

keystore password: tibco123
Key Alias: amx,   password:   tibco123
Key Alias: bw, 	 password :   tibco123


Files listed below: 

amx340_id.jks
Exported to amx340.pem (will be imported to BW trustKeystore)
amx340_trust.jks (need to import bw.pem)

Intergrate to one file: 
RSA1024.keystore (which imports bw57.pem)

Those are used for BWService SSL:
bw57_id.jks
Exported to bw.pem (will be imported to amx trustkeystore)
bw57_trust.jks 

Intergrate to one file: 
BW.keystore (which imports amx340.pem)


Key Alias: amx,   password:   tibco123
Key Alias: bw, 	 password :   tibco123


BW Service: 
BW.keystore is only used for BW side.

1. KeyStore_Server, need created from amx340.pem
2. Identify_Server, need to provider bw_id.jks (now its BW.keystore)

AMX side:
SSL HttpClient:

SSLClient requies 
Keystore provider as Trust Store: this will use amx_trust.jks (now RSA1024.keystore will have trust cert)
Enable Mutual Auth,
Keystore provider having identity is: amx_id.jks (now RSA1024.keystore will have amx_id)
(alias is amx/tibco123) 



