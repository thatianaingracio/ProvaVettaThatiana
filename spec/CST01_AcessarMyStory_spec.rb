
describe 'CASE 1: Acessar Página My Story', :case1 do

    it 'Acessar o Site' do

        visit 'http://automationpractice.com/index.php'
        expect(page.title).to eql 'My Store'
    end

end