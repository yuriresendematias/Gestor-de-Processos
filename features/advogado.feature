Feature: Advogado
  As a usuario do sistema
  I want to cadastrar, logar, alterar senha, listar processos pelo meu numero da OAB e sair do sistema
  so that eu possa usar o sistema de gestor de processos

  Scenario: Cadastrando uma conta
    Given Eu estou na tela de log in
    And Eu nao tenho uma conta cadastrada
    When Eu clico em Sing up
    And Eu preencho os campos nome, email e senha
    And Eu clico em Sing up
    Then Eu vejo que fui cadastrado com sucesso

  Scenario: Cadastrando email existente
    Given Eu estou na tela de log in
    When Eu clico em Sing up
    And Preencho os campos com nome, email e senha
    And Eu clico em Sing up
    Then O erro Email as already been taken foi gerado

  Scenario: Logando no sistema
    Given Eu estou na tela de log in
    And Eu ja estou cadastrado no sistema
    When Eu preencho os campos email e senha
    And Clico em Log in
    Then Eu acesso o sistema com sucesso

  Scenario: Alterando a senha
    Given Eu estou na tela de log in
    And Percebo que eu esqueci minha senha
    When Eu clico em Forgot your password
    And Preencho o campo email
    And Clico em Send me reset password instructions
    Then Eu recebo a notificacao de alteracao de senha no meu email

  Scenario: Listando processos
    Given Eu estou logado no sistema
    And Eu estou na pagina principal do sistema
    When Eu clico em meus processos
    And preencho o campo Numero OAB
    And clico em Buscar
    Then Eu Tenho acesso a todos os processos em meu nome

  Scenario: Manipulando processos
    Given Eu estou logado no sistema
    And Eu estou na pagina principal do sistema
    When Eu clico em Exit
    Then A acao Log out foi realizada com sucesso