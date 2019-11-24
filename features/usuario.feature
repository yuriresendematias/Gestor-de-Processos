#Feature: Usuario
#  As a usuario do sistema
#  I want to cadastrar, log in, alterar senha e log out
#  so that eu possa usar o sistema de gestor de processos
#
#  Scenario: Cadastrando uma conta
#    Given Eu estou na tela de log in
#    When Eu clico no link Sign up
#    And Eu preencho o campo email com "marcos@hotmail.com"
#    And Eu preencho o campo senha com "111111"
#    And Eu confirmo a senha "111111"
#    And Eu clico no botao Sign up
#    Then Eu vejo uma mensagem indicando que o cadastro foi realizado com sucesso
#
#  Scenario: Logando no sistema
#    Given Eu estou na tela de log in
#    And Existe um cadastro com o email "marcos@hotmail.com" e a senha "111111"
#    When Eu preencho o campo email com "marcos@hotmail.com"
#    And Eu preencho o campo senha com "111111"
#    And Eu clico no botao log in
#    Then Eu vejo que o login foi bem  sucedido
#
#  Scenario: Log out do sistema
#    Given eu estou logado no sistema
#    When Eu clico em Sair
#    Then Eu retorno para a tela de Log in
#
#  Scenario: Alterando a senha
#    Given Eu estou na tela de log in
#    And Existe um cadastro com o email "marcos@hotmail.com" e a senha "111111"
#    When Eu clico em Forgot your password
#    And Eu preencho o campo email com "marcos@hotmail.com"
#    And Clico em Send me reset password instructions
#    Then Eu recebo a notificacao no email e volto para tela Log in
#
#  Scenario: Cadastrando email existente
#    Given Eu estou na tela de log in
#    And Existe um cadastro com o email "marcos@hotmail.com" e a senha "111111"
#    When Eu clico no link Sign up
#    And Eu preencho o campo email com "marcos@hotmail.com"
#    And Eu preencho o campo senha com "111111"
#    And Eu confirmo a senha "111111"
#    And Eu clico no botao Sign up
#    Then E vejo uma tela de erro indicando que o email ja esta cadastrado