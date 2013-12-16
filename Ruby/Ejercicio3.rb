#!/usr/bin/ruby

puts "Ejercicio 3"
array1 = ['Esto', 'es', 1, 'matriz']
array2 = [1, 2, 3, 4]
array3 = ['Hola', 'que', 'tal']
array4 = [5, 6, 7, 8]

hashArrays = {
	"primero" => array1, 
	"segundo" => array2,
	"tercero" => array3,
	"cuarto" => array4
}

puts hashArrays.to_s