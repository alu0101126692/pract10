class Menu
 	#Nombre del menu
        attr_reader :nombre
	#lista de platos
	attr_accessor :listapl
	#lista precios
	attr_accessor :listapr
	#descripcion del menu
	attr_accessor :desc
	#precio total
	attr_accessor :precios

	def initialize(nombre,&block)
		@nombre = nombre
		@listapl = Listas.new()
		@listapr = Listas.new()
		@desc = ""
		@precio = ""
	
		if block_given?  
     			if block.arity == 1
       				 yield self
     			else
      				 instance_eval(&block) 
     			 end
   		 end
 	 end
	
	def descripcion (text)
		@desc = text
	end
	def preciototal (num)
		@precio = num
	end
	def componente (options = {})
		plato = options[:descripcion] if options[:descripcion]                                                  
		preciopl = options[:precio] if options[:precio]
		@listapl.insert_head(plato)
		@listapr.insert_head(preciopl)
	end
	def to_s
		output = @nombre
		output << "\n#{desc}\n"
		output << "Ingredientes\n"
		@listapl.zip(@listapr).each do |pl, pr|
                        output << "#{pl.to_s} "
                        output << "Precio: #{pr.to_s}\n"
                end                                                                                                     
        	output << "Precio total: #{@precio}"
	end
end
