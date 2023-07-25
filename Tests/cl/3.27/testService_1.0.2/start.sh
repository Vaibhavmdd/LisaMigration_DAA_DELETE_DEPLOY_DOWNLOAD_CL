echo "Tool For Sending Message to logservice and payload Queues."  
function send(){
java -jar testServiceTool_1.0.2.jar -Xms128M -Xmx256M
}
while [ "$Choice"=="y" ];do
send
read -p "Whether to continue,Please Enter Your Choice(y:Continue n:Exit):" Choice
if [ "$Choice"=="n" ] 
then
exit
fi
done
