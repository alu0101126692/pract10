#Permite crear listas
class Listas
#La cabeza de la lista (el extremo de la derecha)                
attr_reader :head
#La cola de la lista (el extremo de la izquierda)
attr_reader :tail
include Enumerable 
Node = Struct.new(:value, :next, :prev)
	#Inicializa la lista con la head y la tail en nil
	def initialize
		@head = nil
                @tail = nil

	end
	#Permite insertar un nodo en head
	def insert_head(value)
		#si la cabeza es nula la lista esta vacia, por lo que
		#si añadimos un nodo, este sera cabeza y cola  
                if(@head == nil)
                        @node = Node.new(value,nil,nil)
                        @head = @node
                        @tail = @node
                else
		#si no esta vacia, hay que hacer que la cabeza anterior tenga
		#como siguiente el nodo nuevo
                         @node = Node.new(value,nil,@head)
                         @head.next = @node 
                         @head = @node
                end
        end
	#Permite insertar un node en tail
	def insert_tail(value)  
		#si la lista esta vacia
                if(@tail == nil)
                        @node = Node.new(value,nil,nil)
                        @head = @node
                        @tail = @node
                else
		#si la lista no esta vacia, la cola previa tendra como 
		#anterior el nuevo nodo
                         @node = Node.new(value,@tail,nil)
                         @tail.prev = @node 
                         @tail = @node
                end
        end
	#Permite insertar dos node en la cabeza. El segundo node sera la cabeza y el primero el nodo antes de la cabeza
	  def insert_head_var(value,value2)
		#usa insert head 2 veces
                insert_head(value)
		insert_head(value2)
  	  end
	  def insert_tail_var(value,value2)
		#usa insert tail dos veces
                insert_tail(value)
                insert_tail(value2)
          end
	#Permite extraer el node en la cabeza
	  def pop_head
		#si la lista esta vacia, hay que dejar a nil la cola tambien
		if (@head == @tail)
			@head = nil
			@tail = nil
		else
		#si la lista no esta vacia
			@head = @head.prev
			@head.next = nil
		end
	  end
	#Permite extraer el node en la cola
	  def pop_tail
		#si la lista esta vacia
                if (@head == @tail)
                        @head = nil
                        @tail = nil
                else
		#si no esta vacia
                        @tail = @tail.next
                        @tail.prev = nil
                end
          end
	#Devuelve los gases totales emitidos por todos los alimentos en la lista
	  def gei
		sum = 0
		#crea un nodo y lo iguala a la cabeza
		@node1 = Node.new(nil,nil,nil)
		@node1 = @head
		#recorre la lista hasta que nodo sea cola y va sumando
		until @node1 == @tail do 
			sum += @node1.value.gases
			@node1 = @node1.prev
					
		end
		sum += @tail.value.gases
	  end
	#Devuelve el total de terreno usado por todos los alimentos en la lista
	  def terr
                sum = 0
		#crea un nodo y lo iguala a la cabeza
                @node1 = Node.new(nil,nil,nil)
                @node1 = @head
		#recorre la lista hasta que cabeza sea cola y va sumando
                until @node1 == @tail do
                        sum += @node1.value.terreno
                        @node1 = @node1.prev

                end
                sum += @tail.value.terreno
          end
	#Permite recorrer la lista usando los metodos del modulo Enumerable
	  def each(&block)
		puntero = @head
		while(puntero!=nil) do
			yield puntero.value  #la lista se recorre alreves
			puntero = puntero.prev
		end
	  end
	 




end
