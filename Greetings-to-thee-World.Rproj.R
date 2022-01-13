print("Greetings to the World!")
print("This file now lives in GitHub, which concludes the testing")
#usr/pw authentication no longer works:
#>>> C:/Program Files/Git/bin/git.exe push origin HEAD:refs/heads/main
#Logon failed, use ctrl+c to cancel basic credential prompt.
#remote: Support for password authentication was removed on August 13, 2021. Please use a personal access token instead.
#remote: Please see https://github.blog/2020-12-15-token-authentication-requirements-for-git-operations/ for more information.
#fatal: Authentication failed for 'https://github.com/GeraldBothe/Greetings-to-thee-World/'
#updating the connection mechanism:
install.packages("usethis")
library(usethis)
?use_github
edit_r_environ()
#insert token 12345... into the .Renviron file and save
GITHUB_PAT = '12345...'
#to reset earlier things
usethis::use_git_remote("origin", url = NULL, overwrite = TRUE)
#to upload the current repository:
use_github(protocol ='https', auth_token = Sys.getenv("GITHUB_PAT"))
usethis::use_git_remote("origin", url = NULL, overwrite = TRUE)
#now making another change. Checking whether the button PUSH automatically uses PAT
#it does not. have to enter PAT in two consecutive windows.
#RStudio pull worked without entering anything. Displays line 22.
#Second push worked without entering PW again.
