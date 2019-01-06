# shell.enviroment

O shell.enviroment é um repositório de scripts para a configuração de ambientes linux.
Ele está dividido em categorias e, em cada arquivo, há uma sequência de comandos que serão executados quando o arquivo bash for chamado.

### Executar

No seu terminal, execute os seguintes comandos:

```bash
$ git clone https://github.com/julianyraiol/RNA-Works.git
$ cd shell.enviroment
$ chmod +x init.sh
$ sh init.sh
$ sh dev.sh
```

### Categorias()

O arquivo init.sh é referente às configurações básicas do sistema. Por meio dele, é realizado a instalação e configuração do:

- [VIM](https://www.vim.org/about.php)
- [GIT](https://git-scm.com/)
- [Spotify](https://www.spotify.com/br/)
- [Bash-It](https://github.com/Bash-it/bash-it)

O arquivo dev.sh é referente à instação de pacotes essenciais para o desenvolvimento de software. Por meio dele, é realizado a instalação e configuração do:

- [Filezilla](https://filezilla-project.org/)
- [Apache2](https://httpd.apache.org/)
- [MySQl] (https://www.mysql.com/)
- [PHPMyAdmin] (https://www.phpmyadmin.net/)
- [Java] (https://www.java.com/pt_BR/download/)

### Extras

Caso o phpmyadmin não esteja disponível após a instalação, faça:

```bash
$ sudo -H vim /etc/apache2/apache2.conf

# adicione a seguinte linha

Include /etc/phpmyadmin/apache.conf

# após isso, faça:

$ /etc/init.d/apache2 restart

```

