Scenario: Atualização de aluno com sucesso.
GIVEN  Eu estou logado como “Professor”.
AND  Eu estou na página “Lista de Alunos”.
AND Vejo que o aluno ''Eduardo'' tem CPF "828.585.977-09'' e email "ejdr@cin.ufpe.br".
WHEN Eu modifico o email de "Eduardo" para "ejdr2@cin.ufpe.br"
THEN Eu vejo uma mensagem de confirmação.
AND  Ainda estou na página “Lista de Alunos”
AND  Vejo que  o aluno ''Eduardo'' tem CPF "828.585.977-09'' e email "ejdr2@cin.ufpe.br".

Scenario: Tentativa falha de atualização por motivo de CPF duplicado.
GIVEN  Eu estou logado como “Professor”.
AND  Eu estou na página “Lista de Alunos”.
AND Vejo que o aluno ''Eduardo'' tem CPF "828.585.977-09'' e email "ejdr@cin.ufpe.br".
AND Vejo que o aluno ''João'' tem CPF "828.585.977-10'' e email "joao@cin.ufpe.br".
WHEN Eu tento modificar o CPF de "Eduardo" para "828.585.977-10".
THEN Eu vejo uma mensagem de erro informando que o CPF está duplicado.
AND  Ainda estou na página “Lista de Alunos”
AND  Vejo que  o aluno ''Eduardo'' tem CPF "828.585.977-09'' e email "ejdr2@cin.ufpe.br".
AND Vejo que o aluno ''João'' tem CPF "828.585.977-10'' e email "joao@cin.ufpe.br".


Scenario: Tentativa falha de atualização por motivo de CPF inválido.
GIVEN  Eu estou logado como “Professor”.
AND  Eu estou na página “Lista de Alunos”.
AND Vejo que o aluno ''Eduardo'' tem CPF "828.585.977-09'' e email "ejdr2@cin.ufpe.br"
WHEN Eu tento modificar o CPF de "Eduardo" para "0800".
THEN Eu vejo uma mensagem de erro informando que o CPF em questão é inválido.
AND  Ainda estou na página “Lista de Alunos”
AND  Vejo que  o aluno ''Eduardo'' tem CPF "828.585.977-09'' e email "ejdr2@cin.ufpe.br".


Scenario: Tentativa falha de atualização por motivo de campos não preenchidos.
GIVEN  Eu estou logado como “Professor”.
AND  Eu estou na página “Lista de Alunos”.
AND Vejo que o aluno ''Eduardo'' tem CPF "828.585.977-09'' e email 
WHEN Eu tento modificar o CPF de "Eduardo" para "095.585.977-09" e apago o que está escrito no campo email.
THEN Eu vejo uma mensagem de erro informando que a atualização não pode ser realizada enquanto há campos a serem preenchidos.
AND  Ainda estou na página “Lista de Alunos”
AND  Vejo que  o aluno ''Eduardo'' tem CPF "828.585.977-09'' e email "ejdr2@cin.ufpe.br".


Scenario: Tentativa falha de atualização por motivo de CPF inválido (exemplo 2).
GIVEN  Eu estou logado como “Professor”.
AND  Eu estou na página “Lista de Alunos”.
AND Vejo que o aluno ''Eduardo'' tem CPF "828.585.977-09'' e email "ejdr2@cin.ufpe.br"
WHEN Eu tento modificar o CPF de "Eduardo" para "828.585.977".
THEN Eu vejo uma mensagem de erro informando que o CPF em questão é inválido.
AND  Ainda estou na página “Lista de Alunos”
AND  Vejo que  o aluno ''Eduardo'' tem CPF "828.585.977-09'' e email "ejdr2@cin.ufpe.br".

Scenario: Tentativa falha de atualização por motivo de email inválido.
GIVEN  Eu estou logado como “Professor”.
AND  Eu estou na página “Lista de Alunos”.
AND Vejo que o aluno ''Eduardo'' tem email "ejdr2@cin.ufpe.br"
WHEN Eu tento modificar o email de "Eduardo" para "ejdr2@".
THEN Eu vejo uma mensagem de erro informando que o email em questão é inválido.
AND  Ainda estou na página “Lista de Alunos”
AND  Vejo que  o aluno ''Eduardo'' tem email "ejdr2@cin.ufpe.br".
AND  Vejo que o CPF de Eduardo continua o mesmo.

Scenario: Atualização de aluno com sucesso.
GIVEN  Eu estou logado como “Professor”.
AND  Eu estou na página “Lista de Alunos”.
AND Vejo que o aluno ''David'' tem CPF "828.585.977-10'' e email "david@cin.ufpe.br".
WHEN Eu modifico o CPF de "David" para "828.585.977-09''
THEN Eu vejo uma mensagem de confirmação.
AND  Ainda estou na página “Lista de Alunos”
AND  Vejo que  o aluno ''David'' tem CPF "828.585.977-09'' e email "david@cin.ufpe.br".


Scenario: Tentativa falha de atualização por motivo de campos não preenchidos. (Exemplo 2)
GIVEN  Eu estou logado como “Professor”.
AND  Eu estou na página “Lista de Alunos”.
AND Vejo que o aluno ''Eduardo'' tem CPF "828.585.977-20'' e email ejdr2@cin.ufpe.br
WHEN Eu tento modificar o email de "Eduardo" para "eduzinho@cin" e apago o que está escrito no campo CPF.
THEN Eu vejo uma mensagem de erro informando que a atualização não pode ser realizada enquanto há campos a serem preenchidos.
AND  Ainda estou na página “Lista de Alunos”
AND  Vejo que  o aluno ''Eduardo'' tem CPF "828.585.977-20'' e email "ejdr2@cin.ufpe.br".

