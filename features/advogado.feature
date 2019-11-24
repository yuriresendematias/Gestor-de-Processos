Feature: Advogado
  As a usuario do sistema
  I want to adicionar, exibir detalhes, editar e remover advogados no sistema
  so that eu possa associá-los aos processos


#  exibir
#  editar
#  editar sem n_OAB
#  editar sem nome
#  listar advogados
  Scenario: Editar um advogado
    Given eu estou logado no sistema como o usuario de nome "Marcos"
    And Eu estou na pagina inicial
    When Eu clico em exibir detalhes do advogado
    And Eu clico no link Edit
    And Eu preencho o campo nome com "Marcos"
    And O campo N oab com "111112"
    And Eu clico em confirmar
    Then Eu vejo que o Advogado foi editado com sucesso

  Scenario: Exibir dedalhes do advogado logado no sistema
    Given eu estou logado no sistema como o usuario de nome "Marcos"
    And Eu estou na pagina inicial
    When Eu clico em exibir detalhes do advogado
    Then Eu vejo os detalhes do cadastro do advogado de nome "Marcos"

  Scenario: Editar o advogado logado no sistema com o campo de numero da OAB invalido
    Given eu estou logado no sistema como o usuario de nome "Marcos"
    And Eu estou na pagina inicial
    When Eu clico em exibir detalhes do advogado
    And Eu clico no link Edit
    And Eu preencho o campo nome com "Marcos"
    And O campo N oab com ""
    And Eu clico em confirmar
    Then Eu vejo que o Advogado nao pode ser editado

  Scenario: Editar o advogado logado no sistema com o campo de nome invalido
    Given eu estou logado no sistema como o usuario de nome "Marcos"
    And Eu estou na pagina inicial
    When Eu clico em exibir detalhes do advogado
    And Eu clico no link Edit
    And Eu preencho o campo nome com "M"
    And O campo N oab com "123456"
    And Eu clico em confirmar
    Then Eu vejo que o Advogado nao pode ser editado

  Scenario: listar os advogados cadastrados no sistema
    Given eu estou logado no sistema como o usuario de nome "Marcos"
    And Eu estou na pagina inicial
    When Eu clico em exibir advogados
    Then Eu vejo a lista de advogados cadastrados





#  Scenario: Adicionando um advogado
#    Given eu estou logado no sistema
#    When Eu clico no link New Advogado
#    And Eu preencho o campo nome com "Marcos"
#    And O campo N oab com "111111"
#    And Eu clico em confirmar
#    Then Eu vejo que o advodago "Marcos" foi criado com sucesso
