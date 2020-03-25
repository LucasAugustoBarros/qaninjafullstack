


class AvengersHeadQuarter
    attr_accessor :list
    def initialize
        self.list=[]
    end
    def put(avenger)
        puts self.list.class
        self.list.push(avenger)
    end
end
#TDD (Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do
    it 'Deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new
        hq.put('Spider-Man')
        # expect(hq.list).to eql ['Spider-Man']
        expect(hq.list).to include 'Spider-Man'
    end

    it 'Deve adicionar uma lista de Vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Iron-Man')
        res = hq.list.size > 0
        # expect(hq.list.size).to be > 0
        expect(res).to be true
    end

    it 'Thor deve ser o Primeiro da lista' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Iron-Man')

        expect(hq.list).to start_with('Thor')
    end

    it 'Thor deve ser o Primeiro da lista' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Iron-Man')

        expect(hq.list).to end_with('Iron-Man')
    end

    it 'Verifica deve conter o SobreNome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/PParker/)

    end
end