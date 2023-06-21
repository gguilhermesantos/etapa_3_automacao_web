Dado('que eu acesse o site') do
    Commom.new.acessar_site
end

E('digitar o valor {string} no campo de busca') do |local|
    Commom.new.preenche_campo(local)
    Commom.new.clicar_campo(EL['item_busca'])
end

Quando('clicar no botão {string}') do |botao|
    Commom.new.clica_data('hoje')
    Commom.new.clica_data('amanha')
    Commom.new.clicar_campo(EL['confir_pessoas'])
    Commom.new.aguardando_carregar
end

E('selecionar a opção ordenar por {string}') do |opcao|
    Commom.new.selecionar_ordem(opcao)
end

Então('Verifique o dado {string} do primeiro da lista') do |dado|
    Commom.new.clicar_campo((EL[dado]))
    if (dado == "nome")
        Commom.new.clicar_campo((EL['aba_info']))
    end
    Commom.new.valida_campo(dado)
end