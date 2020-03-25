class Veiculo # Super Classe
    attr_accessor :nome, :marca, :modelo
    def initialize (nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end
    def ligar
        puts "#{nome} está pronto para iniciar o trajeto"
    end
    def buzinar
        puts "#{nome} bip bip"
    end
    def vender
        puts "#{nome} Está a venda"
    end
end



class Carro < Veiculo # Sub Classe
    def andar
        puts "#{nome} está se dirigindo ao local determinado"
    end
end

class Moto < Veiculo # Sub Classe
    def pilotar
        puts "#{nome} está sendo pilotada até local"
    end
end

civic = Carro.new('Civic','Honda','JSLW')
civic.ligar
civic.andar
civic.buzinar
civic.vender

lancer = Carro.new('Lancer','Mitsubishi','Evolution')
lancer.ligar
lancer.andar
lancer.buzinar
lancer.vender

fazer = Moto.new('Fazer','Yamaha','250 Flex')
fazer.ligar
fazer.pilotar
fazer.buzinar
fazer.vender