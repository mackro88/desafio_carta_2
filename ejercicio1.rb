## Crear las clases Usuario y CuentaBancaria
class Usuario 
    def initialize (nombre)
    end

    def saldo_total
    end
end

class CuentaBancaria 
    ##attr_reader :banco, :numero_de_cuenta
    attr_accessor :saldo
    banco = banco.to_s
    numero_de_cuenta = numero_de_cuenta.to_s

    ## Crear el constructor de la clase CuentaBancaria que reciba el nombre del banco, el número de cuenta y el saldo (el saldo por defecto será cero)
    def initialize (banco, numero_de_cuenta, saldo = 0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end

    ## Crear el método transferir en la clase Cuenta que reciba un monto y otra cuenta. Este método restará del saldo actual el monto y aumentará el saldo de la otra cuenta en el mismo monto
    def transferir (monto, cuenta2)
        @saldo -= monto
        cuenta2.saldo += monto
    end
end

## Probar creando dos cuentas cada una con un saldo de 5000 y transferir el total de una cuenta a la otra.

cuenta01 = CuentaBancaria.new('rojo','01',5000)
cuenta02 = CuentaBancaria.new('rojo','02',5000)

cuenta01.transferir(cuenta01.saldo, cuenta02)

puts "Saldo cuenta01 = $#{cuenta01.saldo}" 
puts "Saldo cuenta02 = $#{cuenta02.saldo}" 


