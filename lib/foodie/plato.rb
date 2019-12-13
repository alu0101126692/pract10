class Plato
include Comparable
include Enumerable
	attr_reader :nombre, :lista, :listagr

	def initialize (nombre,lista,listagr) 
		@nombre = nombre
		@lista = lista
		@listagr = listagr
	end
	def prot
		grtotal = 0
		sum = 0
		@lista.zip(@listagr).each do |normal, gr|
			grtotal += gr
			cant = gr/1000.0
			sum += normal.prot*cant 
		end
		(sum*100)/grtotal
	end
	def lip
                grtotal = 0
                sum = 0
                @lista.zip(@listagr).each do |normal, gr|
                        grtotal += gr
                        cant = gr/1000.0
                        sum += normal.lip*cant
                end
                (sum*100)/grtotal
        end
	def carbo   
                grtotal = 0
                sum = 0
                @lista.zip(@listagr).each do |normal, gr|
                        grtotal += gr
                        cant = gr/1000.0
                        sum += normal.carbo*cant
                end
                (sum*100)/grtotal
        end
	def vct
                grtotal = 0
                sum = 0
                @lista.zip(@listagr).each do |normal, gr|
                        cant = gr/1000.0
                        sum += normal.val_en*cant
                end
                sum
        end
	def to_s
		string = @nombre + ",Alimentos: "
		@lista.zip(@listagr).each do |normal, gr|
                        string += normal.nombre + " " + gr.to_s + " gr "
                end
		string
	end
	def <=> (other)
		vct <=> other.vct
	end
	

		


end


class Subplato < Plato

attr_reader :gei, :terreno

        def initialize(nombre,lista,listagr)
                super(nombre,lista,listagr)
                @gei = 0
		@terreno = 0
        end

        def emisiones
                grtotal = 0
                sum = 0
		
                @lista.zip(@listagr).each do |normal, gr|
                        cant = gr/1000.0
                        sum += normal.gases*cant
                end
                @gei = sum

        end
	def terreno
                grtotal = 0
                sum = 0

                @lista.zip(@listagr).each do |normal, gr|
                        cant = gr/1000.0
                        sum += normal.terreno*cant
                end
                @terreno = sum

        end
	
	def to_s
		string = "Gases " + @gei.to_s + " Uso de terreno anual " + @terreno.to_s
	end

	def huella
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
		indiceres = (indice1+indice2)/2
		

	end	

end









