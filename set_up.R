#https://beatrizmilz.com/talk/2021-blogdown-apero/

# 1) instalar o blogdown
remotes::install_github('rstudio/blogdown')

# 1.1) Verifique a versão instalada do Hugo. 
blogdown::hugo_version()
# > [1] ‘0.83.1’

# 1.2) Caso não tenha o Hugo instalado, instale com a função:
blogdown::install_hugo()

# Caso tenha dificuldades em instalar o Hugo, veja esse site: 
# https://gohugo.io/getting-started/installing/

# 2) Criar um projeto no RStudio. Como primeiro argumento, 
# informar o caminho até o projeto, e o nome do projeto
usethis::create_project("~/Desktop/live-blogdown")

# 3) Criar o blog com blogdown, e tema Apero
blogdown::new_site(theme = "hugo-apero/hugo-apero", 
                   format = "toml",
                   sample = FALSE,
                   empty_dirs = TRUE)

# 4) Serve site: 
blogdown::serve_site()

# 5) Criar um post:
blogdown::new_post(title = "Olá mundo!", 
                   ext = '.Rmarkdown', 
                   subdir = "blog")

# 6) Iniciar o controle de versão neste projeto                     
usethis::use_git()   

# 7) Criar um repositório no GitHub conectado à este projeto
usethis::use_github()