
module Bank

    class Account
     attr_accessor :a_balance
    #attr_accessor =:ac_number,:ac_holdername,:ac_ifsccode
     def initialize(a_balance)
             @a_balance = a_balance
         end
         
        
        def deposit
            puts "Enter the amount that yor want to deposit in the account: "
            amount=gets.chomp.to_i
            @a_balance= @a_balance+amount
         
            return @a_balance
        end
         
        def withdraw 
            puts "Enter the amount that you want to withdraw in the account: "
            withdraw=gets.chomp.to_i
            @a_balance= @a_balance - withdraw
           
            return  @a_balance
        end

    end

    class Atm
        def initialize(a)
             @account_balance=a
         end

         def start
             puts "Enter your account pin" 
             @pin=gets.chomp.to_i
             @condition = true
             while(@condition)
            
                 if @pin == 3990 then
                     puts "1.check balance"
                     puts "2.deposit"
                     puts "3.Withdrow"
                     
                     puts "4.Exit"
                     puts "---------------------Enter Your Choice--------------------"
                     choice=gets.chomp.to_i
                     case choice
                     when 1
                    puts @account_balance.a_balance
                    
                     when 2  
                      proc_test = Proc.new { @account_balance.deposit}
                      proc_test.call
                               
                     when 3
                      lambda_demo = lambda {@account_balance.withdraw}
                      lambda_demo.call
                     else
                       @condition = false
                     end
                     else
                     puts "Please enter the correct pin"
                     start
                     break    
                end  
            end
         end
    end
end


account=Bank::Account.new(5000)

atm=Bank::Atm.new(account)
atm.start




