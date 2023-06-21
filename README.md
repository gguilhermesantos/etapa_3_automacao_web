<a name="readme-top"></a>

# Etapa III - Automação de Teste Web II

Este projeto tem o intuito de desenvolver automação do site Trivago em Ruby com framework Selenium e Capybara para demonstrar conhecimentos em automação.

## Inicializando

Estas instruções fornecerão um passo a passo da instalação do projeto em sua máquina local para fins de avaliação.
Essa automação foi desenvolvida no sistema Windows (Windows 10) e os comandos abaixo podem não ser específicos para este sistema.

### Pré requisitos

* Ter inicializado e configurado o repositório, neste caso, github
* Ter conhecimentos prévios do site a ser testado: http://www.trivago.com.br
* Ter instalado [Google Chrome](https://www.google.com/intl/pt-BR/chrome/)
* Ter instalado gerenciador de versões Ruby [RubyInstaller](https://rubyinstaller.org/downloads/).

#### Instale o Cmder (Opcional)

Caso tenha dificuldade da ultilização do sistema Windows, é possível utilizar esta aplicação para simular comandos de de sistemas Unix.

[Download Cmder](https://cmder.app/).

#### Instale o Ruby (Alternativa)

Para baixar utilizando linha de comando, basta utilizar o comando:

`sudo apt-get install ruby-full`

#### Cabybara, Cucumber e Selenium

Para baixar as dependências utilize os comandos:

```sh
gem install bundler
bundle install
```
Note que elas foram especificadas no arquivo 'Gemfile.lock'.
Caso dê erro ao instalar as dependências, delete o arquivo 'Gemfile.lock' e repita a operação anterior.

## Rodando o teste

Para rodar o teste, foi criado a seguinte tag `cucumber --tags @FluxoCritico`. Dessa forma, basta digitar essa tag na linha de comando que o teste será iniciado.

## Observações

A escrita dos passos do arquivo .feature foi feita em Português, porém, por padrão, eles são feitos em Inglês e, para funcionar corretamente, note que o comando `#language: pt` foi inserido no arquivo.

Foram utilizados algumas funções de pausa `sleep` por conta do site Trivago demonstrar instabilidade em buscas realizadas por automação (que ocorrem muito rápida).

<p align="center">(<a href="#readme-top">Voltar ao topo</a>)</p>