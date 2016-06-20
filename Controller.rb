require_relative 'Model'
require_relative 'View'



class Controller
  def initialize()
    @lista = List.new
    @view = View.new
    index
    @lista.index.each_with_index do |item, index|
      mostrar_pregunta(index)
      check_answer(index)
    end
  end
  
  def index
    @view.index
  end

  def mostrar_pregunta(num_pregunta)
    @view.mostrar_pregunta(@lista.mostrar_pregunta(num_pregunta))
  end

  def check_answer(index)
    @view.check_answer(@lista.comparar_respuesta(index, @view.obtener_respuesta))
  end
end

cont = Controller.new
cont.index
cont.mostrar_pregunta
cont.check_answer

cont.mostrar_pregunta
cont.check_answer


