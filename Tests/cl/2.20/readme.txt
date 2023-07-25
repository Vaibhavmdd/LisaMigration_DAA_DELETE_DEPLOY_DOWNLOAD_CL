Description : 
               Define a ClearText appender with default patternLayout.
              " %d{dd MMM yyyy HH:mm:ss,SSS} [%t] [%-5p] [%R{_cl.logicalCompId.matrix.application}] %c - %m%n"
              Deploy a DAA and invoke it to get its logs.
              check the Application Name in the log.(Verify  [%R{_cl.logicalCompId.matrix.application}])
               
Scenario:      SOAP HTTP <-> Java
Use Java IT to generate String Message and Map Message To Mock MED IT and BWSE 
IT Message.

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal