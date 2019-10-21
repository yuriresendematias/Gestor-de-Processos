Feature: Processo
  As a usuario do sistema
  I want to adicionar, remover, editar, ver o historico e ver os detalhes dos processos
  So that eu possa ter um controle maios em relacao aos processos

  Scenario: criando um novo processo
    Given eu estou logado no sistema
    And eu estou na pagina de processos
    When eu eu escolho a opcao de adicionar processo
    And eu preencho o campo de cliente com "nome do cliente"
    And eu preencho o campo de Ex adversa com "nome da parte opositora"
    And eu preencho o campo de Natureza com "Empresarial"
    And eu preencho o campo de Assunto com "Assunto da ação"
    And eu preencho o campo de Tipo acao com "Monitória"
    And eu preencho o campo de Juizo com "2ª vara cívil - GUS"
    And eu preencho o campo de numero com "123456-789.0"
    And eu preencho o campo de Ultima movimentacao com "Aguardando despacho"
    And eu preencho o campo de Ultimo contato cliente com a data "2019-08-01"
    And eu preencho o campo de Contato agendado com a data "2019-12-01"
    And eu preencho o campo de Adv principal com "nome do advogado"
    And eu preencho o campo de Adv assistente com "nome do advogado assistente"
    And eu clico em adicionar processo
    Then eu vejo que o processo com o numero "123456" foi criado corretamente

