#language: pt
@execute
Funcionalidade: Cadastrar contas com sucesso

  Contexto: 
    Dado que esteja acessando a aplicação
    E que informe o usuário correto
    E a senha correta
    E clique em entrar
    E esteja na tela inicial
    E clique em contas
    E clique em adicionar

  Cenário: Deve inserir uma conta com sucesso
    E informe a conta "Conta de teste"
    Quando clicar em Salvar
    Então a conta será salva com sucesso

  Cenário: Deve falhar inserir conta com mesmo nome
    E informe a conta "Conta de teste"
    Quando clicar em Salvar
    Então devera ser exibido a mensagem que já existe uma conta com o mesmo nome

  Cenário: Deve falhar inserir conta com mesmo nome
    Quando clicar em Salvar
    Então devera ser exibido a mensagem dizendo que não é possivel salvar uma conta sem nome
