
require 'colorize'

class View 

  def index
    puts "Bienvenido a Maratón. Te daremos una pregunta y deberás adivinar la respuesta correcta."
    puts "Listo?  Arranca el juego!"
    3.times do
      sleep(1)
      print "*"
    end
  end

  def menu
    puts ""
    puts "*" * 25 
    puts "¿Qué tema quieres hacer hoy? (Temas Generales o Matemáticas)" .colorize(:blue)
    puts "1.- Temas Generales ".colorize(:green)
    puts "2.- Matemáticas ".colorize(:green)
  


    caso = gets.chomp 
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

  def cuenta_final(aciertos, errores)
    puts "Tuviste un total de #{aciertos} aciertos y #{errores} errores."
    puts "Gracias por jugar!"
  end
end
