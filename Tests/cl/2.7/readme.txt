Description :   ClearText file appender with macro name defined to handle whole nodes  CL-2179
                
              
                Configure a clearText appender for DevNode "com.tibco" logger
                This appender should be define its file path like "../logs/%%_node.name%%.log"
                check logs from nodes, %%_node.name%%.log should be replaced with "QANode2.log"
                