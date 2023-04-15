class Menu < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    #Aqui é mapeado os elementos que iremos usar na automação mais alguns exemplos de chegar no mesmo elemento
    element :btn_sobre_nos, 'a[href="/#sobre-nos"]'
    element :session_menu, '//h3[text()="Sobre nós"]'

    element :btn_depoimentos, 'a[href="/#depoimentos"]'
    element :session_depoimentos, '//[text()="O Qa.Coders é feito para os alunos"]'

    element :btn_parceiros, 'a[href="/#parceiros"]'
    element :session_parceiros, '//h3[text()="Parceiros"]'

    element :btn_fale_conosco, 'a[href="/#faleConosco"]'
    element :session_fale_conosco, '//h3[text()="Fale Conosco"]'

    #Aqui verificamos se a variavel btn_name corresponde com o valor determina e caso sim clicamos no elemento que foi mapeado anteriormente
    def click_button(btn_name)
      if btn_name == "Sobre nós"
          btn_sobre_nos.click
          elsif btn_name == "Depoimentos"
          btn_depoimentos.click 
          elsif btn_name == "Parceiros"
          btn_parceiros.click
          else btn_name == "Fale_Conosco"
          btn_fale_Conosco.click
      end
    end

    def click_button(btn_name)
        find("a[href='/##{btn_name}']").click
    end

    #Aqui verificamos se há um elemento do tipo h3 com o texto que contem a variavel sessao_name, poderiamos também verificar utilizando os elementos mapeados acima que estão comentados
    def validate_test(sessao_name)
       find('h3', text:sessao_name).text
       sleep 2
    end
end