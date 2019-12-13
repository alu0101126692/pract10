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
	before(:all) do
                @lista = Listas.new()
		@lista2 = Listas.new()
		@lista3 = Listas.new()
		@lista4 = Listas.new()
		@vaquita = Alimentos.new("Carne de vaca",21.0,0,3.1,50.0,164.0)
		@huevos = Alimentos.new("Huevos",13.0,1.1,11,4.2,5.7)
		@cordero = Alimentos.new("Cordero",18.0,0.0,17.0,20.0,185.0)
		@camarones = Alimentos.new("Camarones",17.6,1.5,0.6,18.0,2.0)
		@leche = Alimentos.new("Leche",3.3,4.8,3.2,3.2,8.9)
		@chocolate = Alimentos.new("Chocolate",5.3,47.0,30.0,2.3,3.4)
		@lentejas = Alimentos.new("Lentejas",23.5,52.0,1.4,0.4,3.4)
		@cerdo = Alimentos.new("Cerdo",21.5,0.0,6.3,7.6,11.0)
		@queso = Alimentos.new("Queso",25.0,1.3,33.0,11.0,41.0)
		@cafe = Alimentos.new("Cafe",0.1,0.0,0.0,0.4,0.3)
		@nuez = Alimentos.new("Nuez",20.0,21.0,54.0,0.3,7.9)
		@esp = Listas.new()
                @esp.insert_head_var(@chocolate,@chocolate)
                @esp.insert_head_var(@lentejas,@lentejas)
                @esp.insert_head_var(@leche,@leche)
                @esp.insert_head_var(@cerdo,@cerdo)
                @esp.insert_head_var(@chocolate,@chocolate)
                @esp.insert_head_var(@lentejas,@lentejas)
                @esp.insert_head_var(@leche,@leche)
                @esp.insert_head_var(@cerdo,@cerdo)
                @esp.insert_head_var(@queso,@queso)
                
                @vas = Listas.new()
                @vas.insert_head_var(@chocolate,@chocolate)
                @vas.insert_head_var(@chocolate,@chocolate)
                @vas.insert_head_var(@lentejas,@lentejas)
                @vas.insert_head_var(@cordero,@cerdo)
                
                @veg = Listas.new()
                @veg.insert_head_var(@chocolate,@chocolate)
                @veg.insert_head_var(@lentejas,@lentejas)
                @veg.insert_head_var(@leche,@leche)
                @veg.insert_head_var(@cafe,@nuez)
                @veg.insert_head_var(@queso,@queso)
                
                @veg2 = Listas.new()
		@veg2.insert_head_var(@chocolate,@chocolate)
                @veg2.insert_head_var(@chocolate,@chocolate)
                @veg2.insert_head_var(@lentejas,@lentejas)
                @veg2.insert_head_var(@cafe,@nuez)
                
                @carne = Listas.new()
                @carne.insert_head_var(@cerdo,@cordero)
                @carne.insert_head_var(@vaquita,@cerdo)
                @carne.insert_head_var(@lentejas,@lentejas)
                @carne.insert_head_var(@cafe,@nuez)
		@chocolate.cval_en()
		@huevos.cval_en()
		@vaquita.cval_en()
		@queso.cval_en()
		@nuez.cval_en()
		@cafe.cval_en()
		@cerdo.cval_en()
		@lentejas.cval_en()
		@leche.cval_en()
		@cordero.cval_en()


		@enum = Listas.new()
                @enum.insert_head_var(@queso,@cafe)
		@enum.insert_head(@nuez)
		
		@listp = Listas.new()
		@listp.insert_head_var(@queso,@nuez)
		@listgr = Listas.new()
		@listgr.insert_head_var(2500,1000)
		@plato1 = Plato.new("plato1",@listp,@listgr)
		@subplato = Subplato.new("plato1",@listp,@listgr)
		
		@ingesp = Listas.new()
		@ingesp.insert_head_var(@cerdo,@queso)
                @ingesp.insert_head_var(@lentejas,@leche)
                @espgr = Listas.new()
		@espgr.insert_head_var(500,200)
                @espgr.insert_head_var(250,100)
		
		@platoesp = Subplato.new("Española",@ingesp,@espgr)
		
		@ingvas = Listas.new()
                @ingvas.insert_head_var(@cerdo,@chocolate)
                @ingvas.insert_head_var(@lentejas,@leche)
                @vasgr = Listas.new()
                @vasgr.insert_head_var(400,350)
                @vasgr.insert_head_var(100,100)
                
		@platovas = Subplato.new("Vasca",@ingvas,@vasgr)
		
		@ingveg = Listas.new()
                @ingveg.insert_head_var(@huevos,@queso)
                @ingveg.insert_head_var(@nuez,@cafe)
                @veggr = Listas.new()
                @veggr.insert_head_var(200,200)
                @veggr.insert_head_var(100,100)
                
		@platoveg = Subplato.new("Vegetaria",@ingveg,@veggr)
			
		@ingveg2 = Listas.new()
                @ingveg2.insert_head_var(@lentejas,@chocolate)
                @ingveg2.insert_head_var(@nuez,@cafe)
                @veg2gr = Listas.new()
                @veg2gr.insert_head_var(200,150)
                @veg2gr.insert_head_var(100,100)
                
		@platoveg2 = Subplato.new("Vegetaliana",@ingveg2,@veg2gr)
		
		@ingcar = Listas.new()
                @ingcar.insert_head_var(@cerdo,@cordero)
                @ingcar.insert_head_var(@lentejas,@leche)
                @cargr = Listas.new()
                @cargr.insert_head_var(250,200)
                @cargr.insert_head_var(100,100)
                
		@platocar = Subplato.new("Carne",@ingcar,@cargr)

		@listaesp = Listas.new()
		@ingesp2 = Listas.new()
		@ingesp2.insert_head_var(@cerdo,@cerdo)
                @ingesp2.insert_head_var(@lentejas,@leche)
                @espgr2 = Listas.new()
                @espgr2.insert_head_var(500,200)
                @espgr2.insert_head_var(250,100)
                
		@platoesp2 = Subplato.new("Española",@ingesp,@espgr2)

		@listaesp.insert_head_var(@platoesp,@platoesp2)
		
		@listavas = Listas.new()
		@ingvas2 = Listas.new()
                @ingvas2.insert_head_var(@cerdo,@leche)
                @ingvas2.insert_head_var(@lentejas,@leche)
                @vasgr2 = Listas.new()
                @vasgr2.insert_head_var(400,350)
                @vasgr2.insert_head_var(100,100)
                
		@platovas2 = Subplato.new("Vasca",@ingvas2,@vasgr2)
		
		@listavas.insert_head_var(@platovas,@platovas2)
		@listaveg = Listas.new()
		@ingveg2 = Listas.new()
                @ingveg2.insert_head_var(@huevos,@queso)
                @ingveg2.insert_head_var(@queso,@cafe)
                @veggr2 = Listas.new()
                @veggr2.insert_head_var(200,200)
                @veggr2.insert_head_var(100,100)
                
		@platoveg3 = Subplato.new("Vegetaria",@ingveg2,@veggr2)
		
		@listaveg.insert_head_var(@platoveg,@platoveg3)	
		@listaveg2 = Listas.new()
                @ingveg4 = Listas.new()
                @ingveg4.insert_head_var(@lentejas,@chocolate)
                @ingveg4.insert_head_var(@nuez,@cafe)
                @veg4gr = Listas.new()
                @veg4gr.insert_head_var(200,150)
                @veg4gr.insert_head_var(100,100)
                
		@platoveg2 = Subplato.new("Vegetaliana",@ingveg2,@veg2gr)

		@listaveg2.insert_head_var(@platoveg2,@platoveg4)
		
		
		@menudiet = [@platoesp,@platoesp2]
		@ingex = Listas.new()
		@ingex.insert_head_var(@lentejas,@chocolate)
                @ingex.insert_head_var(@nuez,@cafe)
		@ingex.insert_head_var(@cerdo,@cordero)
                @ingex.insert_head_var(@lentejas,@leche)
		@grex = Listas.new()
		@grex.insert_head_var(5000,5000)
		@grex.insert_head_var(5000,5000)
		@grex.insert_head_var(2000,2000)
		@grex.insert_head_var(2000,2000)
		
		@platoex = Subplato.new("Platazo",@ingex,@grex) 
		@menudiet2 = [@platovas,@platoex]
		@menudietprice = [10,40]


        end
        it "Existe nodo de la lista con sus datos, su siguiente y su previo" do
               
        end
	it "Debe existir una Lista con su cabeza y su cola" do
		expect(@lista.head).to eq(nil)
		expect(@lista.tail).to eq(nil)
	end
	it "Se puede insertar un elemento en la lista" do
		@lista2.insert_head(@vaquita)
		expect(@lista2.head.value).to eq(@vaquita)
		@lista2.insert_tail(@camarones)
		expect(@lista2.tail.value).to eq(@camarones)
		@lista2.insert_tail(@vaquita)
                expect(@lista2.tail.value).to eq(@vaquita)
		@lista2.insert_head(@camarones)
                expect(@lista2.head.value).to eq(@camarones)			 
	end	
	it "Se pueden insertar varios elementos" do
		
		@lista3.insert_head_var(@vaquita,@camarones)
		expect(@lista3.head.value).to eq(@camarones)
		expect(@lista3.head.prev.value).to eq(@vaquita)
		@lista4.insert_tail_var(@cordero,@huevos)
		expect(@lista4.tail.value).to eq(@huevos)
                expect(@lista4.tail.next.value).to eq(@cordero)

	end
	it "Se extrae el ultimo elemento de la Lista" do
		@lista5 = Listas.new()
		@lista5.insert_head_var(@vaquita,@camarones)
		expect(@lista5.head.value).to eq(@camarones)
		@lista5.pop_head()
		expect(@lista5.head.value).to eq(@vaquita)
	end 
	it "Se extrae el primer elemento de la lista" do
		@lista6 = Listas.new()
                @lista6.insert_tail_var(@vaquita,@camarones)
                expect(@lista6.tail.value).to eq(@camarones)
                @lista6.pop_tail()
                expect(@lista6.tail.value).to eq(@vaquita)

	end
	it "Crear expectativas para estimar emisiones de gases diarias de cada lista" do
		expect(@esp.gei.round).to eq(76)
		expect(@vas.gei.round).to eq(38) 
		expect(@veg.gei.round).to eq(34)
		expect(@veg2.gei.round).to eq(11)
		expect(@carne.gei.round).to eq(87)
	end
	it "Crear expectativas para estimar emisiones de gases anuales de cada dieta" do
		expect(@esp.gei.round*365).to eq(27740)
                expect(@vas.gei.round*365).to eq(13870)
                expect(@veg.gei.round*365).to eq(12410)
                expect(@veg2.gei.round*365).to eq(4015)
                expect(@carne.gei.round*365).to eq(31755)
	end
	it "Crear expectativas para estimar uso de terreno anual de cada dieta" do
                expect(@esp.terr.round).to eq(189)
                expect(@vas.terr.round).to eq(216) 
                expect(@veg.terr.round).to eq(122)
                expect(@veg2.terr.round).to eq(29)
                expect(@carne.terr.round).to eq(386)
        end
	context "Comparaciones" do
        	it "Utilizar modulo Comparable para comparar la eficencia energetica" do
                	expect(@vaquita > @huevos).to eq(false)
        	end
		it "Comparar info ambiental y nutricional" do
			expect(@vaquita < @huevos).to eq (true)
			expect(@huevos == @huevos).to eq (true)
			expect(@huevos.between?(@vaquita,@chocolate)).to eq(true)
			expect(@huevos.clamp(@vaquita,@chocolate)).to eq(@huevos)
		end
	end
	context "Enumerable" do
		it "Enumerar listas de alimentos" do
			expect(@enum.collect { |i| i }).to eq([@nuez,@cafe,@queso])
			expect(@enum.select { |num| num > @cafe }).to eq ([@nuez,@queso])
			expect(@enum.max).to eq(@nuez)
			expect(@enum.min).to eq(@cafe)
			expect(@enum.sort).to eq([@cafe,@queso,@nuez])
		end

	end
	context "Plato" do
		it "Obteniendo el nombre de un plato" do	
			expect(@plato1.nombre).to eq("plato1")
		end
		it "Existe un conjunto de alimentos" do
			expect(@plato1.lista).to eq(@listp)
		end
		it "Existe un conjunto de cantidades alimentos" do
                        expect(@plato1.listagr).to eq(@listgr)
                end
		it "Porcentaje de proteinas del conjunto de alimentos" do
			
			expect(@plato1.prot.round()).to eq(2)
		end
		it "Porcentaje de lipidos del conjunto de alimentos" do
			expect(@plato1.lip.round()).to eq(4)
		end
		it "Porcentaje de lipidos del conjunto de alimentos" do
                        expect(@plato1.carbo.round()).to eq(1)
                end
		it "Valor calorico total en kilocalorias" do
			
			expect(@plato1.vct.round()).to eq(1656)
		end
		it "Se obtiene el plato formateado" do
			expect(@plato1.to_s()).to eq("plato1,Alimentos: Nuez 1000 gr Queso 2500 gr ")
		end
		

	end

	context "Subclase que hereda de plato" do
	
		it "Emisiones de gases diarias" do
			
			expect(@subplato.emisiones()).to eq(27.8)
		end
		it "Uso de terreno" do
			expect(@subplato.terreno()).to eq(110.4)
		end
		it "Eficencia energetica" do
			expect(@subplato.to_s()).to eq("Gases 27.8 Uso de terreno anual 110.4")
		end
		it "Clase de un objeto" do
			expect(@subplato.class).to eq(Subplato)
			expect(@plato1.class).to eq(Plato)
			expect(@subplato.instance_of?Plato).to eq(false)

		end
		it "Jerarqia de un objeto" do
			expect(@subplato.is_a?Plato).to eq(true)
			
			
		end		
		it "Tipo de un objeto" do
			expect(@subplato.respond_to?:terreno).to eq(true)
			expect(@plato1.respond_to?:nombre).to eq(true)
		end
		it "Comparable" do
                        expect(@platoesp > @platoveg).to eq(true)
                        expect(@platovas == @platovas).to eq(true)
                        expect(@platoesp.between?(@platoveg2,@platocar)).to eq(false)
                        expect(@platocar.clamp(@platoveg2,@platoesp)).to eq(@platoveg2)
                end
                it "Enumerar listas de platos" do
                        expect(@listaesp.collect { |i| i }).to eq([@platoesp2,@platoesp])
                        expect(@listavas.select { |num| num > @platovas }).to eq([])
                        expect(@listaveg.max).to eq(@platoveg)
                        expect(@listaveg.min).to eq(@platoveg3)
                        expect(@listaveg.sort).to eq([@platoveg3,@platoveg])
                end

	end
	context "Practica 09" do
		it "Se consigue la huella nutricional" do
			expect(@platoesp.huella).to eq(1)
			expect(@platoesp2.huella).to eq(1)
			vct = 0
			emisiones = 0
			@menudiet.each { |n| vct += n.vct } 
			@menudiet.each { |n| emisiones += n.emisiones }
			 indice1 = 0
	                if vct < 670
        	                indice1 = 1

                	elsif vct > 830
                        	indice1 = 3
                	else
                        	indice1 = 2
               		 end
               		 indice2 = 0
               		 if emisiones < 800
                       		 indice2 = 1
              		 elsif emisiones > 1200
                       		 indice2 = 3
               		 else
                       		 indice2 = 2
                	end
               		huellanut = (indice1+indice2)/2
 			expect(huellanut).to eq(1)
		end
		it "Pruebas para obtener huella nutricional max" do
			menudiet2max = @menudiet2.max
			expect(menudiet2max).to eq(@platoex)


		end
		it "Multiplicar precios" do
			menudiet2max = @menudiet2.max
			f = 0
			price = @menudietprice.map {|n| n = n*menudiet2max.huella}
			expect(price).to eq([20,80])

		end
	end
end	



