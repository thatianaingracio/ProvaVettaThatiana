describe 'Efetuar Login de Acesso' :case3 do

    it 'Login Com Sucesso' do

        visit 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
        within 'form'
        fill_in id: 'email', with: 'tatiana.ingracio@gmail.com'
        fill_in 'passwd', with: 'teste@123'

        click_button 'SubmitLogin'

        expect(find('#center_column').visible?).to be true
    end

end
