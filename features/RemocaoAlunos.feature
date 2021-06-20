Scenario: Remoção de aluno com sucesso.
    Given Eu estou logado como "Professor".
    And Eu estou na página "Lista de Alunos".
    And Vejo que o aluno "Eduardo" tem CPF "828.585.977-09" e email "ejdr@cin.ufpe.br".
    When Eu preparo o aluno "Eduardo" para remoção.
    And Removo os alunos.
    Then Eu vejo uma mensagem que confirma a remoção.
    And  Ainda estou na página "Lista de Alunos".
    And Não vejo mais as informações do aluno "Eduardo".

Scenario: Tentativa de remoção vazia.
    Given Eu estou logado como "Professor".
    And Eu estou na página "Cadastrar Aluno"
    And Não há aluno preparado para remoção.
    When Eu removo os alunos.
    Then Eu vejo uma mensagem de aviso de que se precisa preparar alunos para remoção.
    And Ainda estou na página "Cadastrar Aluno"

Scenario: Desfazer remoção de aluno logo após a remoção.
    Given Removi um aluno recentemente.
    And Eu estou logado como "Professor".
    And Eu estou na página "Cadastrar Aluno"
    And Não vejo que o aluno "Eduardo" tem CPF "828.585.977-09" e email "ejdr@cin.ufpe.br".
    When Desfaço a remoção.
    Then Eu vejo uma mensagem que confirma a reversão da remoção.
    And Ainda estou na página "Lista de Alunos".
    And Vejo que o aluno "Eduardo" tem CPF "828.585.977-09" e email "ejdr@cin.ufpe.br".

Scenario: Remoção de aluno com sucesso. (SERVIÇO)
    Given Eu estou logado como "Professor".
    And O aluno com CPF "828.585.977-09" está armazenado no sistema.
    When Eu solicito ao sistema o cadastro do aluno "Eduardo" tem CPF "828.585.977-09" e email "ejdr@cin.ufpe.br".
    Then O sistema retorna uma mensagem de sucesso.
    And O aluno com CPF "828.585.977-09" foi removido do sistema.
