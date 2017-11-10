Nodo = Struct.new(:valor, :siguiente, :anterior)

class Lista
  
  attr_accessor :head, :queue, :tamanio
  
  def initialize
    @head = nil
    @queue = nil
    @tamanio = 0
  end
  
  def insert_head(nodo)
    if empty
      nodo[:siguiente] = nil
      nodo[:anterior] = nil
      @head = nodo
      @queue = nodo
    else
      nodo[:siguiente] = @head
      @head[:anterior] = nodo
      nodo[:anterior] = nil
      @head = nodo
    end
    
    @tamanio = @tamanio + 1
    
  end
  
  def insert_queue(nodo)
    if empty
      nodo[:siguiente] = nil
      nodo[:anterior] = nil
      @head = nodo
      @queue = nodo
    else
      nodo[:siguiente] = nil
      nodo[:anterior] = @queue
      @queue[:siguiente] = nodo
      @queue = nodo
    end
    
    @tamanio = @tamanio + 1
  end
  
  def insert_plus(nodos, index)
    #si el indice es 1, insertara por la cabeza
    if(index == 1)
      for i in 0..(nodos.length-1)
	insert_head(nodos[i])
      end
    end
      #Si el indice es 2, insertara por la cola
    else if(index == 2)
      for i in 0..(nodos.length-1)
	insert_queue(nodos[i])
      end
    end
  end	
  
  def pop_head
    if !empty
      if @head == @queue
	aux = @head
	@head = nil
	@queue = nil
      else
	aux = @head
	@head = @head.siguiente
	@head[:anterior] = nil
      end
      
      @tamanio = @tamanio -1
      aux
    end
  end
  
  def pop_queue
    if !empty
      if @queue == @head
	aux = @queue
	@head = nil
	@queue = nil
      else
	aux = @queue
	@queue =aux.anterior
	@queue[:siguiente] = nil
      end
     
      @tamanio = @tamanio - 1
      aux
    end
  end
  
  def to_s
        aux = @head
        s = ""
        while aux.siguiente != nil
            s += aux.valor.to_s + "\n"
            aux =  aux.siguiente
        end
        s += aux.valor.to_s
        
    end 
    
  def empty
    if tamanio == 0
      true
    else
      false
    end
  end

end  