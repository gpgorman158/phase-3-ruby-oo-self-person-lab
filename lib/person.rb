class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    #attr_writer

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(rating)
        if rating > 10
            @happiness = 10
        elsif rating < 0
            @happiness = 0
        else
            @happiness = rating
        end
    end

    def hygiene=(rating)
        if rating > 10
            @hygiene = 10
        elsif rating < 0
            @hygiene = 0
        else
            @hygiene = rating
        end
    end

    def clean? 
        if @hygiene > 7
            true
        else @hygiene <= 7
            false
        end
    end

    def happy? 
        if @happiness > 7
            true
        else @happiness <= 7
            false
        end
    end
    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
        self.happiness +=2
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

end

p1=Person.new("Gerald")
p2=Person.new("Rob")
puts p1.name
puts p1.happiness
p1.happiness = 11
puts p1.happiness
puts p1.clean?
p1.get_paid(20)
puts p1.bank_account
puts p1.call_friend(p2)
