## Instruções para configurar o ambiente e executar os testes ##

### Instale o RVM ###

```shell
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
```

### Instale o Ruby ###

```shell
rvm install ruby-2.3.1
```

### Instale o bundler ###

```shell
gem install bundler
```

### Instalando as gems ###

```
Acesse a pasta do projeto e digite:
bundle install
```

### Drivers: ###
Efetue a instalação do driver de sua escolha abaixo: (recomendo o chrome)
- [chromedriver](https://sites.google.com/a/chromium.org/chromedriver/)
- [phantomjs](http://phantomjs.org/)
- [internetExplorerDriver](http://www.seleniumhq.org/download/)
- [Firefox Geckodriver](https://developer.mozilla.org/en-US/docs/Mozilla/QA/Marionette/WebDriver)

 [Webdriver Safari extension](http://selenium-release.storage.googleapis.com/2.48/SafariDriver.safariextz).

### Executando os testes ###

Dentro da pasta raiz do projeto de teste

### Executando os testes com o chrome ###
```shell
cucumber username=USERNAME password=PASSWORD
```

### Executando os testes com o Firefox ###
Type this in the tests folder:
```shell
cucumber browser=BROWSER username=USERNAME password=PASSWORD 
```

### Executando somente os testes de api ###

```shell
cucumber --tags @api
```

### Executando somente os testes de front ###

```shell
cucumber --tags @front username=USERNAME password=PASSWORD
```shell