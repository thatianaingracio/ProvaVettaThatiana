describe 'Efetuar Login de Acesso', :case3 do

    it 'Login Com Sucesso' do

        visit 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
        within 'form'
        fill_in id: 'email', with: 'usuarioteste1@gmail.com'
        fill_in 'passwd', with: 'teste@123'

        click_button 'SubmitLogin'

        expect(find('#center_column').visible?).to be true
        expect(find('#center_column').text).to include 'Welcome to your account. Here you can manage all of your personal information and orders.'
    end

end
