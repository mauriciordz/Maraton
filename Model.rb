require 'csv'

class Carta
  attr_accessor :pregunta, :respuesta
  
  def initialize(pregunta, respuesta)
    @pregunta = pregunta
    @respuesta = respuesta
  end

end

class List

  attr_reader :lista
  
  def initialize
    @lista = []
    @correctas_cont = 0
    @incorrectas_cont = 0
  end

  def index(caso)
    case caso
    when "1"
    CSV.foreach("Preguntas.csv") do |pregunta|
      @lista << Carta.new(pregunta[0],pregunta[1])
    end
    @lista
    when "2"
    CSV.foreach("Matematicas.csv") do |pregunta|
      @lista << Carta.new(pregunta[0],pregunta[1])
    end
    @lista
  end
  end

  def mostrar_pregunta(num_pregunta) ##falta que se haga un loop

    nueva_pregunta = @lista[num_pregunta].pregunta
    nueva_pregunta
  end

  def comparar_respuesta(num_carta, user_answer)
    if user_answer == @lista[num_carta].respuesta
          @correctas_cont += 1   
          "Correcto!"  
    
    else
      @incorrectas_cont += 1
      "Incorrecto!"
    end
  end

  def cuenta_final
    [@correctas_cont, @incorrectas_cont]
  end




  # def ultima_pregunta
  #   if pregunta
  # end

end