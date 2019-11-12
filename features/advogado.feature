Feature: Advogado
  As a usuario do sistema
  I want to adicionar, exibir detalhes, editar e remover advogados no sistema
  so that eu possa associá-los aos processos

  Scenario: Adicionando um advogado
    Given Eu estou logado no sistema
    When Eu clico no link New Advogado
    And Eu preencho o campo nome com "Marcos"
    And Eu preencho o campo email com "marcos@hotmail.com"
    And O campo n_OAB com "111111"
    And Eu clico no botao Create Advogado
    Then Eu vejo "Advogado was successfully created." e o Advogado foi criado com sucesso

  Scenario: Adicionando um advogado invalido
    Given Eu estou logado no sistema
    When Eu clico no link New Advogado
    And Eu preencho o campo nome com "Jr"
    And Eu preencho o campo email com "marcos@hotmail.com"
    And O campo n_OAB com "11111"
    And Eu clico no botao Create Advogado
    Then Eu vejo os erros "Nome is too short (minimum is 4 characters)", "Email has already been taken" e "N oab is the wrong length (should be 6 characters)"


  Scenario: Editando um advogado
    Given Eu estou logado no sistema
    And And existe um advogado com o nome "Marcos"
    When Eu clico no link Edit
    And Eu preencho o campo nome com "Marcos Vinicius"
    And Eu preencho o campo email com "marcos@hotmail.com"
    And O campo n_OAB com "111111"
    And Eu clico no botao Update Advogado
    Then Eu vejo "Advogado was successfully updated." e o Advogado foi editado com sucesso

  Scenario: Exibindo um advogado
    Given Eu estou logado no sistema
    And And existe um advogado com o nome "Marcos Vinicius"
    When Eu clico no link Show no advogado "Marcos Vinicius"
    Then Eu acesso a pagina desse advogado e vejo os detalhes de seu cadastro

  Scenario: Removendo um advogado
    Given Eu estou logado no sistema
    And And existe um advogado com o nome "Marcos Vinicius"
    When Eu clico no link Destroy no advogado "Marcos Vinicius"
    And Eu clico no botao OK
    Then Eu vejo "Advogado was successfully destroyed." e o Advogado foi removido com sucesso