describe 'CASE 2: Criar Login de Acesso', :case2 do

    it 'Login Criado Com Sucesso' do

        visit 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
        within 'form'
        fill_in id: 'email_create', with: 'usuarioteste1@gmail.com'
        click_button 'SubmitCreate'

        choose id: 'id_gender2'
        fill_in 'customer_firstname', with: 'Usuário Teste'
        fill_in 'customer_lastname', with: 'Um'
        fill_in 'passwd', with: 'teste@123'

        #select('1', from: 'days')
        #select('2', from: 'months')
        #select('2000', from: 'years')
        
        fill_in 'firstname', with: 'Vetta'
        fill_in 'lastname', with: 'Informmática'
        fill_in 'address1', with: 'Belo Horizonte'
        fill_in 'city', with: 'Phoenix'

        select 'Arizona', from: 'id_state'

        fill_in 'postcode', with: '85001'
        fill_in 'phone_mobile', with: '+5531997765814'
        fill_in 'alias', with: 'Teste1'

        click_button 'submitAccount'

    end

end 