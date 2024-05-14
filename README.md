# Pizzaria Calabreso's

# O que é?
Nosso projeto acadêmico do Terceiro Semestre consiste em uma pizzaria delivery totalmente online. A Pizzaria Calabresos vem com a ideia inical de não haver atendimento humanizado ao público apenas automático.

# Descrição do Projeto
O sistema é baseado em JAVA mas claro que utilizamos outras linguagens como JavaScript e SQL. 

# A Lógica

- O **admin** tem acesso total;
    - Ele é o responsável pelo cadastramento das pizzas, funcionários e colaboradores e tem acesso aos usuários cadastrados, por tanto, o **admin** tem acesso total ao Banco de Dados.
  
- O **usuário** acessa o site por qualquer interface (pc, ou mobile), se cadastra usando o seu CPF como login, cria a sua senha e, a partir disso, entra com os demais dados necessários para a entrega da pizza;
    - Assim que o **usuário** conclui o seu cadastro, ele deve se logar para acessar o menu de sabores das pizzas e fazer o seu pedido;
- Pedido concluído, o **usuário** entra na sessão de pagamento determinando a forma de sua preferência naquele momento (crédito ou pix). Independente da forma escolhida, o pagamento será online, isto é, o entregador não terá acesso à máquina de cartão ou dinheiro para uma maior segurança do usuário.

# Técnicas de Programação

* Padronização MVC (Model, View e Controller)
    * Model - Responsável pela criação de classes onde determinamos o tipo de variaveis do Objeto
        * Dao - Classe responsavel pelas funçoes relacionadas com o banco de dados fazendo o CRUD (Create,Read,Update e Delete)
    * View - Telas aonde são as interações do usuário com a aplicação
    * Controller - Responsável por fazer o controle entre as requisições e respostas do usuario pegando os dados e criando um objeto da model e realizando os setters para cadastrar por exemplo
* Utilizando a controller como API para retorno de Objetos Json para consultas dinâmicas nas views com JS

