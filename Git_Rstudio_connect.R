# collegare Rstudio a Github

install.packages("usethis")
library(usethis)
use_git_config(user.name = "TheShinISS", user.email = "marco.massari@iss.it")
create_github_token()
gitcreds::gitcreds_set()


# Per collegare un progetto Rstudio già esistente a un nuovo appena creato repository Github:
# https://www.carlosivanrodriguez.com/guides/workflow/connect-an-existing-rstudio-project-to-github/