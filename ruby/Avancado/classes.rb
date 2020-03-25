class Conta
    attr_accessor :saldo, :nome
    def initialize(nome)
        self.saldo = 0.00
        self.nome = nome
    end

    def deposita(valor)
        self.saldo += valor
        # puts 'Depositando a quantia de ' + valor.to_s + ' reais. Na conta de #[self.nome]'
        puts "Depositando a quantia de #{valor} reais na conta do #{self.nome}."
    end
end

c = Conta.new('Lucas')
c.deposita(120.33)
puts c.saldo

c.deposita(100.00)
puts c.saldo
puts c.nome