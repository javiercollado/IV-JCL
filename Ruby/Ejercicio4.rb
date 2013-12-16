#!/usr/bin/ruby
require 'net/http'
puts "Ejercicio IV - Ejercicio 4"

url = ARGV[0]
http = Net::HTTP.new(url, 80)
cabecera = http.request_head('/')
puts "El servidor es: "
puts cabecera['server'].to_s




