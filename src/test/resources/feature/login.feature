#language:pt

Funcionalidade: login

  Contexto:
    Dado que a modal esteja sendo exibida

  Cenario: Fechar a modal ao clicar fora da mesma
    Quando for realizado um clique fora da modal
    Entao a janela modal deve ser fechada

  Cenario: Fechar a modal ao clicar no icone fechar
    Quando for realizado um clique no icone fechar
    Entao a janela modal deve ser fechada

  Cenario: Link Create New Account
    Quando for realizado um clique no link Create New Account
    Entao a pagina Create Nem Acoount deve ser exibida

  Esquema do Cenario: Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos as seguintes forma
      | login    | <login>    |
      | password | <password> |
      | remember | <remember> |
    Quando for realizado o clique no botao sign in
    Entao deve ser possivel logar no sistema

    Exemplos:
      | identificao         | login   | password | remember |
      | campos obrigatorios | chronos | senha    | false    |
      | todos os campos     | chronos | senha    | true     |

  Esquema do Cenario: Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos as seguintes forma
      | login    | <login>    |
      | password | <password> |
      | remember | <remember> |
    Quando for realizado o clique no botao sign in
    Entao o sistema devera exibir uma mensagem de erro

    Exemplos:
      | identificao      | login    | password | remember |
      | usuario invalido | invalido | senha    | false    |
      | senha invalida   | chronos  | invalida | false    |


  Esquema do Cenario: Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos as seguintes forma
      | login    | <login>    |
      | password | <password> |
      | remember | <remember> |
    Entao o botao sing in deve permanecer desabilitado

    Exemplos:
      | identificao       | login   | password | remember |
      | usuario em branco |         | senha    | false    |
      | senha em branco   | chronos |          | true     |
