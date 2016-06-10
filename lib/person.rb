require 'pry'
# your code goes here
class Person
  attr_reader :name, :happiness
  attr_accessor :bank_account, :hygiene, :people

@@people=[]

  def initialize(name, bank_account=25, happiness=8, hygiene = 8)
@name = name 
@bank_account = bank_account
@happiness = happiness
@hygiene = hygiene
@@people<<self 
  end

def happiness=(happiness)
  if happiness > 10 
    @happiness = 10 
  elsif happiness < 0
    @happiness = 0
else @happiness = happiness
end
end

def hygiene=(hygiene)
  if hygiene > 10 
    @hygiene = 10 
  elsif hygiene < 0
    @hygiene = 0
else @hygiene = hygiene
end
end

def happy?
   @happiness > 7 
 end

 def clean?
   @hygiene > 7 
 end

 def get_paid(salary)
  @bank_account+=salary
  "all about the benjamins"
 end

def take_bath
  self.hygiene+=4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene-=3
  self.happiness+=2
  "♪ another one bites the dust ♫"
end

def call_friend(person)
self.happiness+=3

  #change someone's happiness from outside the class
  #find the person in the class
person.happiness+=3
 # @@people.find {|dude| dude.name == person}
 # binding.pry
 # dude.happiness=(dude.happiness+=3)

    # .happiness=(
    #   @@people.find {|dude|
    #     binding.pry
    # dude.name == person}.happiness+=3)
"Hi #{person.name}! It's #{self.name}. How are you?"
  end

def start_conversation(person, topic)
  if topic == "politics"
    self.happiness-=2
  person.happiness-=2
  "blah blah partisan blah lobbyist"
elsif topic == "weather"
  self.happiness+=1
  person.happiness+=1
  "blah blah sun blah rain"
else
  "blah blah blah blah blah"
end
end


  end

  jim=Person.new('jim', 10, 8)
  jim.happiness=(100)