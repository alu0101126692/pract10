#Plato que contiene ingredientes
class Plato
require 'foodie'
include Comparable
include Enumerable
	#Nombre de la lista
	attr_reader :nombre
	#Lista que contiene los platos
	attr_accessor :lista
	#Lista que contiene los gramos de cada plato
	attr_accessor :listagr
	#Inicializa el plato con tres argumentos: El nombre del plato, la lista de alimentos y la lista del peso de estos alimentos
	def initialize (nombre,&block) 
		@nombre = nombre
		@lista = Listas.new()
		@listagr = Listas.new()
		if block_given?  
      			if block.arity == 1
        			yield self
      			else
       				instance_eval(&block) 
      			end
    		end
	end
	#Devuelve el porcentaje de proteinas de los alimentos en la lista
	def prot
		grtotal = 0
		sum = 0
		#itera en las dos listas a la vez para poder calcular las
		#proteinas dependiendo de la cantidad y tambien suma
		#todas las cantidades para poder calcular el porcentaje
		#despues
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
		#itera en las dos listas a la vez para poder calcular las     
                #lipidos dependiendo de la cantidad y tambien suma
                #todas las cantidades para poder calcular el porcentaje
                #despues
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
		#itera en las dos listas a la vez para poder calcular las     
                #cabrohidratos dependiendo de la cantidad y tambien suma
                #todas las cantidades para poder calcular el porcentaje
                #despues
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
		#recorre las dos listas a la vez para sacar el valor
		#nutricional de cada ingrediente segun el peso de este
                @lista.zip(@listagr).each do |normal, gr|
                        cant = gr/1000.0
                        sum += normal.val_en*cant
                end
                sum
        end
	#Devuelve el plato formateado
	def to_s
		string = @nombre + " ,Ingredientes: "
		@lista.zip(@listagr).each do |normal, gr|
                        string += normal.nombre + " " 
			string += gr.to_s + " gr "
                end
		string
	end
	#Permite comparar platos por su valor energetico total
	def <=> (other)
		vct <=> other.vct
	end
	
	def alimento(options = {})
    		aliname = options[:descripcion] if options[:descripcion]
    		a1 = options[:prot] if options[:prot]
		a2 = options[:carbo] if options[:carbo]
		a3 = options[:lip] if options[:lip]
                a4 = options[:gases] if options[:gases]
                a5 = options[:terreno] if options[:terreno]
		alimento = Alimentos.new(aliname,a1,a2,a3,a4,a5)
		@lista.insert_head(alimento)
		gr = options[:gramos] if options[:gramos]
  		@listagr.insert_head(gr)
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
		#recorre las dos listas a la vez para sacar los gases emitidos
		# de cada ingrediente segun el peso de este
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
		#recorre las dos listas a la vez para sacar el terreno
                #usado de cada ingrediente segun el peso de este
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
		#dependiendo del vct de cada ingrediente, se le pone un indice
		if vct < 670
			indice1 = 1
			
		elsif vct > 830
			indice1 = 3
		else 
			indice1 = 2
		end 
		indice2 = 0
		#dependiendo de los gases emitidos de cada ingrediente, 
		#se le pone un indice
		if emisiones < 800
			indice2 = 1
		elsif emisiones > 1200
			indice2 = 3
		else 
			indice2 = 2
		end
		#hace la media de los indices sacados
		indiceres = (indice1+indice2)/2
		

	end	

end









