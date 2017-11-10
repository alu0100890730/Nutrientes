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
      nodo[:anterior] = @cola
      @queue[:siguiente] = nodo
      @queue = nodo
    end
    
    @tamanio = @tamanio + 1
  end
  
  def empty
    if tamanio == 0
      true
    else
      false
    end
  end

end  