require 'foodie'

RSpec.describe Foodie do
  	before(:all) do
    		@vaquita = Alimentos.new("Carne de vaca",21.0,0.0,3.1,50.0,164.0)
  		@huevos = Alimentos.new("Huevos",13.0,1.1,11,4.2,5.7)
	end 
  	it "Existe un metodo para obtener el nombre del Alimento" do
  		expect(@vaquita.nombre).to eq("Carne de vaca")
	end
	it "Se ha podido introducir la cantidad de gases" do
    		@vaquita.gases = 50.0
  	end
  	it "Se puede obtener la cantidad de gases" do
  		expect(@vaquita.gases).to eq(50.0)
	end
	it "Se ha podido introducir la cantidad de terreno usado" do
    		@vaquita.terreno = 164.0
 	end
	it "Se puede obtener la cantidad de terreno usado" do
	      expect(@vaquita.terreno).to eq(164.0)
	end
	


end
RSpec.describe Listas do 
                	
	context "DSL" do
		it "DSL de plato" do 
			plato = Plato.new("Hamburguesa") do
				alimento :descripcion => "carne de vaca", 
					:gramos => 100,
					:prot => 21.1, :carbo => 0.0, :lip => 3.1, :gases => 50.0, :terreno => 164.0
				alimento :descripcion => "huevo", 
					:gramos => 20,
					:prot => 13.0, :carbo => 1.1, :lip => 11.0, :gases => 4.2, :terreno => 5.7 
			end
			expect(plato.to_s()).to eq("Hamburguesa ,Ingredientes: huevo 20 gr carne de vaca 100 gr ")
		end
		it "DSL de menu" do
			menu = Menu.new("Combinado no. 1") do
				descripcion "hamburguesa, papas, refresco"
				componente  :descripcion => "Hamburguesa especial de la casa",:precio => 4.25
				componente  :descripcion => "Papas peque~nas",:precio => 1.75
				componente  :descripcion => "Refrescos de lata",:precio => 1.50
				preciototal 7.50
			end
			expect(menu.to_s()).to eq("Combinado no. 1\nhamburguesa, papas, refresco\nIngredientes\nRefrescos de lata Precio: 1.5\nPapas peque~nas Precio: 1.75\nHamburguesa especial de la casa Precio: 4.25\nPrecio total: 7.5")
		end
	end
end	



