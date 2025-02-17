## guarda questo: https://gist.github.com/Z3tt/3dab3535007acf108391649766409421
## su linux non funziona sempre la memorizzazione permanente delle credenziali con l'opzione https
## quindi si può usare SSH, guarda qui: https://www.youtube.com/watch?v=_Bn78aor_N4

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
use_git_config(user.name = "TheShinISS", user.email = "marco.massari@iss.it", scope = c("project"))
create_github_token()
gitcreds::gitcreds_set()


# Per collegare un progetto Rstudio già esistente a un nuovo appena creato repository Github:
# https://www.carlosivanrodriguez.com/guides/workflow/connect-an-existing-rstudio-project-to-github/


# Nel caso di problemi a mnemorizzare in modo permanente il PAT su Linux vedere:
# https://usethis.r-lib.org/articles/git-credentials.html
usethis::edit_r_environ()
# e inserire il PAT come specificato nel link sopra specificato
