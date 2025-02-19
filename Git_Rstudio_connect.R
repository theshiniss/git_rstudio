## guarda questo: https://gist.github.com/Z3tt/3dab3535007acf108391649766409421
## su linux non funziona sempre la memorizzazione permanente delle credenziali con l'opzione https

# verificare se git e' installato
# su Terminal: git --version

# verificare il file di configurazione di git
# su Terminal: 
#   per l'utente:      git config --global --list  
#   per il progetto:   git config --local --list 
#   per il PC:         git config --system --list 



# collegare Rstudio a Github

install.packages("usethis")
library(usethis)
use_git_config(user.name = "TheShinISS", user.email = "marco.massari@iss.it")
create_github_token()
gitcreds::gitcreds_set()

## Note for Linux users:
## credentials::set_github_pat() (in line 34) might store your PAT in a memory cache that
## expires after 15 minutes or when the computer is rebooted. You thus may wish to do 
## extend the cache timeout to match the PAT validity period:
usethis::use_git_config(credential.helper="cache --timeout=2600000") #> cache timeout ~30 days


# Per collegare un progetto Rstudio già esistente a un nuovo appena creato repository Github:
# https://www.carlosivanrodriguez.com/guides/workflow/connect-an-existing-rstudio-project-to-github/


# Nel caso di problemi a mnemorizzare in modo permanente il PAT su Linux vedere:
# https://usethis.r-lib.org/articles/git-credentials.html
usethis::edit_r_environ()
# e inserire il PAT come specificato nel link sopra specificato
