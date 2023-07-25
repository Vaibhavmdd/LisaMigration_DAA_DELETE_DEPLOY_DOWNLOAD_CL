This folder contains the artifacts to run the BAT suite in the Cloud (Silver CAP release).

CLI is run locally and connect to AMX Admin in the Cloud.
So you need AMX Admin (same versin as the one under test in the Cloud) installed locally.

update the config file witht the Elastic IP assigned to your machine in the Cloud.
adminURL
emsHost
etc...
for instance adminURL=http://10.112.3.4:8120

Upload keystore.zip (that contains all BAT keystores) in the Cloud and unzip it.
Update the keystore.location property in the config file, 
for instance keystore.location=/opt/tibco/qa/keystore

Update the logappender.file.location property in the config file,
for instance logappender.file.location=/opt/tibco/qa/logs

Limitations:
------------

- httpConnector must be set to 0.0.0.0
- reading AMX Logs fails since we run automation locally but log files are in the cloud