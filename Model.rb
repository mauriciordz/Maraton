require 'csv'

class Carta
  attr_accessor :pregunta, :respuesta
  
  def initialize(pregunta, respuesta)
    @pregunta = pregunta
    @respuesta = respuesta
  end

end

class List
  
  def initialize
    @lista = []
    index
    @i = -1
  end

  def index
    CSV.foreach("Preguntas.csv") do |pregunta|
      @lista << Carta.new(pregunta[0],pregunta[1])
    end
    @lista
  end

  def mostrar_pregunta(num_pregunta) ##falta que se haga un loop
    @i += 1
    nueva_pregunta = @lista[num_pregunta].pregunta
    nueva_pregunta
  end

  def comparar_respuesta(num_carta, user_answer)
    if user_answer == @lista[num_carta].respuesta
      "Correcto!"
    else
      "Incorrecto!"
    end
  end

  # def ultima_pregunta
  #   if pregunta
  # end

end