# Casos de Teste
## Login

* **Caminhos E Perfis**
  * *Caminho*
    - Login
  * *Perfil*
    - Perfis: Rede, Regional, Instituição e Professor

* **Varrer Tela de Login**
  * *Realizar varredura de todos os elementos que possuem interação na aplicação*

* **Casos de Sucesso**
  1. Realizar login na plataforma
  2. Digitar Login Válido
  3. Digitar Senha Válido
  4. Clicar em Login
  5. Retornar a home
  6. Clicar em 'Voltar para Página Inicial'

* **Casos de Falha**
  * *Login errado – Não preencher Login*
    1. Não Digitar Login 
    2. Digitar Senha 
    3. Clicar em Login

  * *Login errado – Não preencher Senha*
    1. Digitar Login 
    2. Não Digitar Senha 
    3. Clicar em Login

  * *Login errado – Não preencher Login e Senha*
    1. Não Digitar Login
    2. Não Digitar Senha 
    3. Clicar em Login

  * *Login errado – Preencher Login errado*
    1. Digitar Login inválido
    2. Digitar Senha Válido
    3. Clicar em Login

  * *Login errado – Preencher Senha errada*
    1. Digitar Login Válido
    2. Digitar Senha inválido
    3. Clicar em Login



* **Painel**
  * *Caminho: Login/Login*
    1. Varrer Tela de Login

  * *Perfis: Rede e Regional*
    1. Acessar Calendário
    2. Acessar Cadernos
    3. Acessar Resultados Parciais

  * *Perfis: Instituição e Professor*
    1. Acessar Calendário
    2. Acessar Status das Aplicações
    3. Acessar Resultados Parciais

* **Simulados**

  * *Caminhos E Perfis*
    1. Caminho: Login/Login/Simulados
    2. Perfis: Instituição e Professor

Validar Filtros
        ◦ Validar Filtro por Segmentos
        ◦ Validar Filtro por Anos
        ◦ Validar Filtro por Disciplina
        ◦ Validar Limpar Filtros

Validar Inserir Respostas
Validar Ver Resultados
Validar Download



    * Lançamento de Resposta
Caminho: Login/Login/Simulados/Inserir Respostas
Perfis: Instituição e Professor

Filtrar por Disciplina
Filtrar por Ano Escolar
Filtrar por Simulado
Filtrar por Turma

Validar se existe Lista de Alunos

Validar se existe resposta para lançar
        ◦ Validar resposta OK
        ◦ Validar resposta NOK

Validar Ver questão

Validar Próximo Aluno


    * Status das Aplicações
Caminho: Login/Login/Status das Aplicações
Perfis: Rede, Regional, Instituição e Professor
Filtrar resultados por Segmentos
Filtrar resultados por Disciplina
Selecionar Simulados
Selecionar Instituição
Selecionar Turmas
Selecionar Aluno
Imprimir PDF


    * Turmas e Alunos
Caminho: Login/Login/Turmas e Alunos
Perfis: Instituição

Validar Filtro Ano Escolar
Validar Turma
Validar se existe aluno na lista
Validar criação de aluno
    * Validar campos obrigatórios de preenchimento (ver quais são para testar)
    * Validar não preenchimento dos campos obrigatórios
Validar exclusão de aluno
Validar Edição de turma (regra de preenchimento)
Validar Edição de nome (regra de preenchimento)
Validar Edição de código (regra de preenchimento)
Validar Edição de Sexo (regra de preenchimento)
Validar Edição de NEE (regra de preenchimento)
Validar Edição de data de nascimento (regra de preenchimento)






    * Resultados Gerais

    * Resultado por Habilidades
    * Relatório por alunos
    * Relatório por habilidade
    * Relatório comparação
    * Relatório questões abertas
    * Calendário
    * Progressão de Turmas
    * Logout