require_relative 'Model'
require_relative 'View'



class Controller
  def initialize()
    @lista = List.new
    @view = View.new
    index
    menu
    @lista.lista.each_with_index do |item, index|
      mostrar_pregunta(index)
      check_answer(index)
    end
    cuenta_final
  end
  
  def index
    @view.index
  end

  def menu
    @lista.index(@view.menu)
  end

  def mostrar_pregunta(num_pregunta)
    @view.mostrar_pregunta(@lista.mostrar_pregunta(num_pregunta))
  end

  def check_answer(index)
    @view.check_answer(@lista.comparar_respuesta(index, @view.obtener_respuesta))
  end

  def cuenta_final
    @view.cuenta_final(@lista.cuenta_final[0], @lista.cuenta_final[1])
  end
end

Controller.new
