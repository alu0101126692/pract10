#Plato que contiene ingredientes
class Plato
include Comparable
include Enumerable
	#Nombre de la lista
	attr_reader :nombre
	#Lista que contiene los platos
	attr_reader :lista
	#Lista que contiene los gramos de cada plato
	attr_reader :listagr
	#Inicializa el plato con tres argumentos: El nombre del plato, la lista de alimentos y la lista del peso de estos alimentos
	def initialize (nombre,lista,listagr) 
		@nombre = nombre
		@lista = lista
		@listagr = listagr
	end
	#Devuelve el porcentaje de proteinas de los alimentos en la lista
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
	#Devuelve el porcentaje de lipidos de los alimentos en la lista
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
	#Devuelve el porcentaje de carbohidratos de los alimentos en la lista
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
	#Devuelve el valor energetico total, siendo este la suma de todos los valores energeticos de los alimentos
	def vct
                grtotal = 0
                sum = 0
                @lista.zip(@listagr).each do |normal, gr|
                        cant = gr/1000.0
                        sum += normal.val_en*cant
                end
                sum
        end
	#Devuelve el plato formateado
	def to_s
		string = @nombre + ",Alimentos: "
		@lista.zip(@listagr).each do |normal, gr|
                        string += normal.nombre + " " + gr.to_s + " gr "
                end
		string
	end
	#Permite comparar platos por su valor energetico total
	def <=> (other)
		vct <=> other.vct
	end
	

		


end

#Clase que hereda de plato y especifica los gases usados y el terreno
class Subplato < Plato
#Cantidad de gases emitidos por todos los ingredientes del plato
attr_reader :gei
#Cantidad de terreno usado por todos los ingredientes del plato
attr_reader :terreno
	#Inicializa subplato usando el initialize de la clase plato
        def initialize(nombre,lista,listagr)
                super(nombre,lista,listagr)
                @gei = 0
		@terreno = 0
        end
	#Devuelve las emisiones de gases totales del plato
        def emisiones
                grtotal = 0
                sum = 0
		
                @lista.zip(@listagr).each do |normal, gr|
                        cant = gr/1000.0
                        sum += normal.gases*cant
                end
                @gei = sum

        end
	#Devuelve la cantidad de terreno usado total del plato
	def terreno
                grtotal = 0
                sum = 0

                @lista.zip(@listagr).each do |normal, gr|
                        cant = gr/1000.0
                        sum += normal.terreno*cant
                end
                @terreno = sum

        end
	#Devuelve el subplato formateado
	def to_s
		string = "Gases " + @gei.to_s + " Uso de terreno anual " + @terreno.to_s
	end
	#Permite calcular la huella energetica de cada subplato
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









