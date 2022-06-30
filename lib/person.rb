# your code goes here
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    
    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(value)
        @bank_account = value
    end 

    def happiness=(value)
        @happiness = value.clamp(0, 10)
    end

    def hygiene=(value)
        @hygiene = value.clamp(0, 10)
    end

    def clean?
        hygiene > 7 ? true : false
    end

    def happy?
        happiness > 7 ? true : false
    end

    def get_paid amount
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        hygiene= (self.hygiene += 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        hygiene= (self.hygiene -= 3)
        happiness= (self.happiness += 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        happiness= (self.happiness += 3)
        happiness= (friend.happiness += 3)
        
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (friend, topic)
        if topic == "politics"
            happiness= (self.happiness -= 2)
            happiness= (friend.happiness -= 2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            happiness= (self.happiness += 1)
            happiness= (friend.happiness += 1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end