FROM ubuntu
#You copy the entrypoint.sh file into a new ./entrypoint.sh
#the ./ means working directory which is where you place the .git and not excluding the directories under that. 
COPY entrypoint.sh ./lol.sh
#Makes the entrypoint.sh into an executable which will allow docker container to run the script as a command
RUN chmod +x /lol.sh
#This is the command the action will run when it starts
ENTRYPOINT ["/lol.sh"]
