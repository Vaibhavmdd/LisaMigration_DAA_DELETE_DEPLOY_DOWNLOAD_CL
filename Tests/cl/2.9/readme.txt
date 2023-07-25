Description :   CBE file appender with macro name defined to handle whole nodes  CL-2179
                
              
                Configure a CBE appender for SytemNode "com.tibco" logger
                This appender should be define its file path like "../logs/%%_node.name%%.log"
                check logs from nodes, %%_node.name%%.log should be replaced with "SystemNode.log"