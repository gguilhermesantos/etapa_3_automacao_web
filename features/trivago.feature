#language: pt
Funcionalidade:Fluxo principal
    Para verificar o fluxo principal definido
    
    @FluxoCritico
    Cenario: Fluxo de fazer uma busca especifica
        Dado que eu acesse o site
        E digitar o valor "Manaus" no campo de busca
        E clicar no botão "Pesquisar" 
        Quando selecionar a opção ordenar por "Avaliação e Sugestões"
        Então Verifique o dado "nome" do primeiro da lista
        E Verifique o dado "avaliação" do primeiro da lista
        E Verifique o dado "valor" do primeiro da lista