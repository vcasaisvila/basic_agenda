# CONSTANTES

# VARIABLES
contacts = Hash.new
input = ""
exit_program = false

# MÉTODOS
def add_contact(contacts)
  save_contact = true
  puts "Nombre: "
  nombre = gets.chomp
  if contacts[nombre]
    puts "Ese contacto ya existe. Si quieres modificarlo, pulsa 1. Si no, pulsa otra tecla."
    answer = gets.chomp
    save_contact = (answer == "1")
  end
  if save_contact
    puts "Numero: "
    numero = gets.chomp
    contacts["#{nombre}"] = "#{numero}"
    puts "Has guardado este contacto: "
    puts nombre,  numero
  end
end

def search_contact(contacts)
    puts "¿Qué contacto quieres buscar?"
    busca = gets.chomp
    if contacts[busca]
        puts "El número es #{contacts[busca]}" 
    else
        puts "Ese contacto no existe."
    end
end
        
def delete_contact(contacts)
    puts "¿Qué contacto quieres borrar?"
    borrado = gets.chomp
    if contacts[borrado]
        contacts.delete(borrado)
        puts "Has borrado el contacto."
    else
        puts "Ese contacto no existe."
    end
end

# PROGRAMA PRINCIPAL
until exit_program do 
    puts "Elige una opción e introduce el número correspondiente: 
    1. Crear contacto. 
    2. Buscar contacto. 
    3. Borrar contacto 
    4. Salir
    ¿Qué quieres hacer?: "

    input = gets.chomp

    case input
    when "1"
        add_contact(contacts)
    when "2"
        search_contact(contacts)
    when "3"
        delete_contact(contacts)
    when "4"
        exit_program = true
    end

end
