class Meal
    attr_accessor :customer, :waiter, :total, :tip

    @@all = Array.new

    def initialize(waiter, customer, total, tip = 0)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self
    end

    def self.all
        @@all
    end
end

vince = Customer.new("Vince", 28)
tenshi = Customer.new("Tenshi", 19)
raven = Customer.new("Raven", 21)

alice = Waiter.new("Alice", 2)
lillian = Waiter.new("Lillian", 6)
edilyn = Waiter.new("Edilyn", 7)

vince.new_meal(alice, 30, 10)
vince.new_meal(lillian, 20, 5)
vince.new_meal(edilyn, 20, 10)

tenshi.new_meal(alice, 50, 15)
tenshi.new_meal(edilyn, 50, 10)
tenshi.new_meal(edilyn, 50, 11)

raven.new_meal(edilyn, 30, 12)

Waiter.display