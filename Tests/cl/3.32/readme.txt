Description :  Monitor running Payloadservice queue status:pending messages and receivers

Scenario:      purge payloadservice queue at first
               wait for several seconds
               check the status of logservice queue : Receivers and Pending Msg, exepected result is 1 receivers
               and 0 pending Msg.

               