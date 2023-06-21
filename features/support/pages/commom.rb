class Commom
    include Capybara::DSL

    def acessar_site
        visit 'http://www.trivago.com.br'
    end

    def preenche_campo(local)
        assert_selector(:xpath, EL['campo_busca'], visible: true)
        find(:id, EL['campo_busca_2']).set local
    end

    def clicar_campo(campo)
        sleep(1)
        assert_selector(:xpath, campo, visible: true)
        find(:xpath, campo).click
        sleep(1)
    end

    def selecionar_ordem(opcao)
        find(:xpath, EL['campo_ordenar']).click
        assert_selector(:xpath, EL['opcao_ordenar'], visible: true)
        find(:xpath, EL['opcao_ordenar']).click
    end

    def valida_campo(dado)
        text_dado = "text_" + dado
        campo_dado = 'titulo_' + dado
        if ((find(:xpath, EL[campo_dado]).text.to_s).include?  EL[text_dado]) == true
            p(dado + " verificado com sucesso")
        else
            raise "Erro ao validar " + dado
        end
    end

    def clica_data(data)
        sleep(1)
        if data == 'hoje'
            date =  Date.today.strftime('%Y-%m-%d')
        elsif data == 'amanha'
            date = Date.today.next.strftime('%Y-%m-%d')
        end
        Commom.new.clicar_campo('//time[@datetime="'+date+'"]')
        sleep(1)
    end

    def aguardando_carregar
        sleep(5)
        assert_selector(:xpath, EL['texto_ordenar'], visible: true)
        sleep(2)
    end
end