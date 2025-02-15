# collegare Rstudio a Github

install.packages("usethis")
library(usethis)
use_git_config(user.name = "TheShinISS", user.email = "marco.massari@iss.it")
create_github_token()
gitcreds::gitcreds_set()
