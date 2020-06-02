describe 'CASE 2: Criar Login de Acesso', :case2 do

    it 'Login Criado Com Sucesso' do

        visit 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
        within 'form'
        fill_in id: 'email_create', with: 'usuarioteste7@gmail.com'
        click_button 'SubmitCreate'

        choose id: 'id_gender2'
        fill_in 'customer_firstname', with: 'Usuário Teste'
        fill_in 'customer_lastname', with: 'Sete'
        fill_in 'passwd', with: 'teste@123'

        #select('1', from: 'days')
        #select('2', from: 'months')
        #select('2000', from: 'years')
        
        fill_in 'firstname', with: 'Vetta'
        fill_in 'lastname', with: 'Informática'
        fill_in 'address1', with: 'Belo Horizonte'
        fill_in 'city', with: 'Phoenix'

        select 'Arizona', from: 'id_state', visible: false

        fill_in 'postcode', with: '85001'
        fill_in 'phone_mobile', with: '+5531997765814'
        fill_in 'alias', with: 'Teste7'

        click_button 'submitAccount'

        expect(page.title).to eql 'My account - My Store'

    end

end 