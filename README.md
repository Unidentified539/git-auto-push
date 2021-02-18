# git-auto-push
This is the sh script I wrote to auto push, just read the comments in the file everything should make sense. After you have configured the settings in the script.
Just do this, 


git clone https://github.com/Unidentified539/git-auto-push.git


sudo git clone https://username:your_password@github.com/username/repo_name.git



replace username and your password with your password, then replace repo_name with the name of the repo you want to auto commit.


cd git-auto-push


sudo bash auto-push.sh


then any edits with the repo you cloned earlier (Not this repo the other one) will be automatcly pushed. If the bash is closed or the script stops rrunning this will not work and to edit the 2nd repo you probally will need to open as root. 
