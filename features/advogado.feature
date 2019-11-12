Feature: Advogado
  As a usuario do sistema
  I want to adicionar, exibir detalhes, editar e remover advogados no sistema
  so that eu possa associá-los aos processos

  Scenario: Adicionando um advogado
    Given Eu estou logado no sistema
    When Eu clico no link New Advogado
    And Eu preencho o campo nome com "Marcos"
    And Eu preencho o campo email com "marcos@hotmail.com"
    And O campo N oab com "111111"
    And Eu clico no botao Create Advogado
    Then Eu vejo que o advodago "Marcos" foi criado com sucesso

  Scenario: Adicionando um advogado invalido
    Given Eu estou logado no sistema
    When Eu clico no link New Advogado
    And Eu preencho o campo nome com "Jr"
    And Eu preencho o campo email com "jr@hotmail.com"
    And O campo N oab com "11111"
    And Eu clico no botao Create Advogado
    Then Eu vejo uma tela de erro indicando que o nome e n_OAB estao invalidos

  Scenario: Editando um advogado
    Given Eu estou logado no sistema
    And Existe um advogado com o nome "Marcos"
    And Eu acesso o advogado com o nome "Marcos"
    When Eu clico no link Edit com o advogado de nome Marcos
    And Eu preencho o campo nome com "Marcos"
    And Eu preencho o campo email com "marcos@hotmail.com"
    And O campo N oab com "111112"
    And Eu clico no botao Update Advogado
    Then Eu vejo "Advogado was successfully updated." e o Advogado foi editado com sucesso

  Scenario: Exibindo um advogado
    Given Eu estou logado no sistema
    And Existe um advogado com o nome "Marcos"
    And Eu acesso o advogado com o nome "Marcos"
    When Eu clico no link Show com o advogado de nome Marcos
    Then Eu acesso a pagina do advogado "Marcos" e vejo os detalhes de seu cadastro

  Scenario: Removendo um advogado
    Given Eu estou logado no sistema
    And Existe um advogado com o nome "Marcos"
    And Eu acesso o advogado com o nome "Marcos"
    When Eu clico no link Destroy com o advogado de nome Marcos
    Then Eu vejo "Advogado was successfully destroyed." e o Advogado foi removido com sucesso