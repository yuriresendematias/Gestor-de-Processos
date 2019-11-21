Feature: Advogado
  As a usuario do sistema
  I want to adicionar, exibir detalhes, editar e remover advogados no sistema
  so that eu possa associá-los aos processos

  Scenario: Adicionando um advogado
    Given eu estou logado no sistema
    When Eu clico no link New Advogado
    And Eu preencho o campo nome com "Marcos"
    And O campo N oab com "111111"
    And Eu clico em confirmar
    Then Eu vejo que o advodago "Marcos" foi criado com sucesso

  Scenario: Adicionando um advogado invalido
    Given eu estou logado no sistema
    When Eu clico no link New Advogado
    And Eu preencho o campo nome com "Jr"
    And O campo N oab com "11111"
    And Eu clico em confirmar
    Then Eu vejo uma tela de erro indicando que o nome e n_OAB estao invalidos

  Scenario: Editando um advogado
    Given eu estou logado no sistema
    And Existe um advogado com o nome "Marcos"
    And Eu estou na pagina de advogados
    And Eu vejo o advogado com o nome "Marcos"
    When Eu clico no link Edit do advogado de nome "Marcos"
    And Eu preencho o campo nome com "Marcos"
    And O campo N oab com "111112"
    And Eu clico em confirmar
    Then Eu vejo que o Advogado foi editado com sucesso

  Scenario: Exibindo um advogado
    Given eu estou logado no sistema
    And Existe um advogado com o nome "Marcos"
    And Eu estou na pagina de advogados
    And Eu vejo o advogado com o nome "Marcos"
    When Eu clico no em exibir detalhes do advogado com o nome "Marcos"
    Then Eu vejo os detalhes do cadastro do advogado de nome "Marcos"

  Scenario: Removendo um advogado
    Given eu estou logado no sistema
    And Existe um advogado com o nome "Marcos"
    And Eu estou na pagina de advogados
    And Eu vejo o advogado com o nome "Marcos"
    When Eu clico no link Destroy com o advogado de nome "Marcos"
    Then Eu vejo uma mensagem que indica que o advogado foi removido com sucesso