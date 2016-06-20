

class View 

  def index
    puts "Bienvenido a Maratón. Te daremos una pregunta y deberás adivinar la respuesta correcta."
    puts "Listo?  Arranca el juego!"
    3.times do
      sleep(1)
      print "*"
    end
  end

  def mostrar_pregunta(pregunta_objeto)
    puts "Pregunta:"
    puts pregunta_objeto
  end

  def obtener_respuesta
    puts "Intento:"
    user_answer = gets.chomp
    user_answer
  end

  def check_answer(string)
    puts string
  end
end
