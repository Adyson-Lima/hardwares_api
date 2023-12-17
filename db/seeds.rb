puts 'Gerando hardwares...'

5.times do |i|
  Hardware.create(
    part: ["ssd", "memoria ram", "cabo sata"].sample ,
    function: "part do pc"
    )
end

puts 'hardwares gerados com sucesso!'