#scp -i ~/.ssh/ ubuntu@130.225.37.117:~/Games/Valheim/config/worlds_local/CloudWorld.db .
#scp -i ~/.ssh/ ubuntu@130.225.37.117:~/Games/Valheim/config/worlds_local/CloudWorld.fwl .

scp -i ~/.ssh/ -r ubuntu@130.225.37.117:~/P5-Testing/Server-Files-0.3.2/world .
scp -i ~/.ssh/ -r ubuntu@130.225.37.117:~/P5-Testing/Server-Files-0.3.2/server.properties .
