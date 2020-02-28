# language: pt

@buscar @produto
Funcionalidade: Buscar livros em e-commerces diferentes

Contexto:
    Dado que eu esteja no site do Submarino
    Quando eu entro na categoria Livros
    E seleciono o primeiro livro da lista
    Então eu vou para a página de detalhes do produto
    E armazeno o ISBN e o nome do autor

Cenário: Buscar pelo ISBN na Americanas
    Quando eu entro no site da Americanas
    E pesquiso pelo ISBN armazenado no campo de busca da Americanas
    E seleciono o livro retornado na página de resultados da Americanas
    Então eu comparo o ISBN e o nome do autor nos detalhes do produto da Americanas

Cenário: Buscar pelo ISBN na Amazon
    Quando eu entro no site da Amazon
    E pesquiso pelo ISBN armazenado no campo de busca da Amazon
    E seleciono o livro retornado na página de resultados da Amazon
    Então eu comparo o ISBN e o nome do autor nos detalhes do produto da Amazon