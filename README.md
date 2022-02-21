# coisas_emprestadas

## Stack usada
- Ruby
- Rails
- Postgresql
- RVM

## Instalando o RVM

Rode o comando

```curl
\curl -sSL https://get.rvm.io | bash -s stable --ruby
```

## Instalando o ruby

Depois que instalamos o RVM, agora podemos ter múltiplas versões do ruby e mudarmos quando  quiser. Para instalar uma nova versão, use o comando:

```bash
rvm install 3.1.0
```

Depois, basta escolher qual versão usar:
```
rvm use 3.1.0
```

## Instalando o Bundler
Para gerenciar dependências no ruby, usamos o Bundler
````
gem install bundler
````

## Instalando o Rails
````
gem install rails
````

## Instalando o Postgresql
Siga esse tutorial detalhado https://www.postgresqltutorial.com/install-postgresql-macos/

## Colocando pra rodar
Feito tudo isso, entre na pasta do projeto e use o comando
```
bundle
```
Isso irá baixar todasd as dependências que estão listadas no arquivo `Gemfile` e criar um novo arquivo `Gemfile.lock`, que mantém as versões usadas em cada dependência.

Se estiver tudo certo, basta rodar o comando 
```
rails s
```
e a aplicação rails estará rodando no seguinte endereço: http://localhost:3000/