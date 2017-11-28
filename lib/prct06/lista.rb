#@author Cristina Garrido Amador
#@date November 2017
#@class Lista
#@brief This class is for have a list of aliments, which have next and previous, and the value

#Includes a new class which is node, fot conteins the information of the each value of the list
Nodo = Struct.new(:valor, :siguiente, :anterior)

class Lista
  
  #Includes the module Enumerable
  #It have tres values, head of the list, queue of the list and size of the list
  attr_accessor :head, :queue, :tamanio
  include Enumerable
  
  #@return Lista type of the class
  #@brief this method is for insert a new head at the list
  def initialize
    @head = nil
    @queue = nil
    @tamanio = 0
  end
  
  #@param nodo [Nodo]
  #@return head of the node
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
  
  #@param nodo [Nodo]
  #@return queue of the node
  #@brief the method is for insert a new queue at the list
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
  
  #@param nodo, index [Nodo], [Number]
  #@return nodo
  #@brief this method is for insert a new node at the list
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
  
  #@return head of the list
  #@brief return the head of the list and pass the second value at the position of the head
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
  
  
  #@return queue of the list
  #@brief return the queue of the list and pass the penultimate value at the position of the head
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
  
  #@return [String] the resulting of join all the information, value, next and previous
  def to_s
        aux = @head
        s = ""
        while aux.siguiente != nil
            s += aux.valor.to_s + "\n"
            aux =  aux.siguiente
        end
        s += aux.valor.to_s
        
    end 
    
  #return array
  #@brief get a list this method convert that into an array
    
    def convertirArray(lista)
      lista.map{ |y| y}
    end
    
    #return array
    #@brief get a list and return an array in order
    #@param lista
    
    def ordenarArray lista
      auxiliar = lista.convertirArray(lista)
      for i in 0..(auxiliar.length)do
	for j in 0..(auxiliar.length-2) do
	  if auxiliar[j] > auxiliar[j+1]
	      temporal = auxiliar[j]
	      auxiliar[j] = auxiliar[j+1]
	      auxiliar[j+1] = temporal
	    end
	end
      end
      
      return auxiliar
    end
    
    #return array
    #@brief get a list and return an array in order
    
    def ordenandoEach(lista)
      auxiliar = lista.convertirArray(lista)
      indice = 0
      auxiliar.each do |x|
	auxiliar.each do |y|
	  if (indice < auxiliar.length-1)
	    if (auxiliar[indice] > auxiliar[indice+1])
	      temporal = auxiliar[indice]
	      auxiliar[indice] = auxiliar[indice+1]
	      auxiliar[indice+1] = temporal
	    end
	  end
	  
	  indice = indice+1
	end
	
	indice = 0
      end
            
      return auxiliar
    end
    
    
  #return true or false
  #@brief tell the programmer if the list is empty or not
  def empty
    if tamanio == 0
      true
    else
      false
    end
  end
  
  #return node
  def each
        aux = @head
        while aux != nil
            yield aux.valor
            aux = aux.siguiente
        end 
    end 

end  