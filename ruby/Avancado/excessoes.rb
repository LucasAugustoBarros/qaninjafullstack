# begin
#     # Tentar Alguma coisa
#     file = File.open('./ola')
#     if file
#         puts file.read
#     end
# rescue Exception => e
#     # Obter um possivel Erro
#     puts e
#     puts e.message #Força trazer a mensagem de erro
#     puts e.backtrace #Trás onde esta o Erro
# end

def soma(n1, n2)
    n1+n2
rescue Exception => e
    puts 'Favor informar somente números'
end

soma('10',5)