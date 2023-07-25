Description :  Monitor running Logservice queue status:pending messages and receivers

Scenario:      purge logservice queue at first
               wait for several seconds
               check the status of logservice queue : Receivers and Pending Msg, exepected result is 1 receivers
               and 0 pending Msg.

               