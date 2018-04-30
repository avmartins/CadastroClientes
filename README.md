# PROVA JAVA DBC

Desenvolva um sistema para manter cadastros de clientes, seu rendimento mensal e realizar uma simulação do cálculo de juros para uma operação de empréstimo. Desenvolva a camada visual (front-end), um serviço para salvar o cadastro de clientes e realizar o cálculo de juros. Fique à vontade para definir a arquitetura da aplicação. Crie testes unitários para garantir o bom funcionamento do código. Documente seu código e crie um arquivo Readme para orientar o avaliador como iniciar e testar a sua solução.

## Tecnologias Utilizadas

- JAVA, Spring MVC, Hibernate, Injeção de Dependência, Tiles, JSP, Maven e MYSQL

## Prerequisitos

E necessario as ferramentas maven, git e wildfly 8 estejam instalado na maquina.

## Fontes do Projeto
Esta no diretorio CadastroClientes-master ( aplicacao gerada no modelo de IDE Eclipse )

Executar por dentro do Eclipse ( IDE )
-------------------------------------------------------------------
	1) Instalar o Eclipse
	
	2) Baixar o fonte da aplicacao :
	   git clone https://github.com/avmartins/CadastroClientes.git
	   
	3) Importar e abrir o projeto no eclipse   
	   
Compilar a aplicacao
-------------------------------------------------------------------

	1) Pelo Eclipse
	
		- Executar mvn install
	   
	2) Entrar no diretorio onde baixou o projeto e executar 
	   mvn clean install  	
	   
Executar a aplicacao
-------------------------------------------------------------------

	1) Mapear o wildfly ( servidor )

		1) Fazer deploy para o servidor
		
		2) Subir o container 			
	
		3) Executar a url e  autenticar 
			http://localhost:8080/CadastroClienntes 
	
			User : admin Senha : admin - autentica com admin
			
Telas da aplicação em Execução
-------------------------------------------------------------------	

	O arquivo Telas_Execução_Aplicação.docx é o print das telas do sistema em execução para o usuário poder seguir com o teste.
		
	
## Autor

* **Anderson Virginio Martins** - (https://github.com/avmartins/CadastroClientes.git)

