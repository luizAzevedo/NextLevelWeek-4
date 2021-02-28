# Rocketpay

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix


## Instalação do Elixir
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && 
sudo dpkg -i erlang-solutions_2.0_all.deb

sudo apt-get update

sudo apt-get install esl-erlang

sudo apt-get install elixir

## Instalação do Phoenix
mix archive.install hex phx_new 1.5.7

## Criação do projeto
mix phx.new rocketpay --no-webpack --no-html
* criar uma api, não necessita de html e css.

## Verificar se o banco de dados esta executando
mix ecto.setup

#### Se tudo OK
The database for Rocketpay.Repo has been created
19:47:43.340 [info]  Migrations already up


## Instalação do Credo 
Analisador sintatico de codigo

Abrir o arquivo Mix.exs na raiz do projeto
Na parte de "deps", colar
{:credo, "~> 1.5", only: [:dev, :test], runtime: false}

No terminal:
mix deps.get (baixa todas as dependencias da aplicação)

Verificar se está instalado e funcionando.
mix credo gen.config (compila a aplicação, e gera a configuração para o credo)

Após gerar o arquivo credo.exs, abrir e editar linha
{Credo.Check.Readability.ModuleDoc, []},
para 
{Credo.Check.Readability.ModuleDoc, false},

Não criar documentação.

## Checar se aplicação esta rodando
mix phx.server

Resultado:
Compiling 11 files (.ex)
Generated rocketpay app
[info] Running RocketpayWeb.Endpoint with cowboy 2.8.0 at 0.0.0.0:4000 (http)
[info] Access RocketpayWeb.Endpoint at http://localhost:4000

Digitar no navegador http://localhost:4000/dashboard