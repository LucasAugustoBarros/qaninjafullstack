# Ruby é um linguagem puramente orientada a Objeto
# Por que no Ruby tudo são objeto


# Classe possui atributos e métodos - Caracteristicas e ações

# Carro (Nome, modelo, cor, ano, quantidadeportas ,etc..)
#Ligar, Desligar, Parar, etc..

class Carro
    attr_accessor :nome
    def ligar # método
        'O carro esta pronto para iniciar o trajeto'
    end
end

civic = Carro.new
civic.nome = 'Civic'
puts civic.nome
puts civic.ligar
