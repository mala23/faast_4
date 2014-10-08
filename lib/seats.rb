module Seats

	attr_reader :passengers

	DEFAULT_CAPACITY = 40

	def initialize
		@passengers = []
	end

	def capacity
		@capacity = DEFAULT_CAPACITY
	end

	def accept(passenger)
		passengers << passenger
	end

	def release(passenger)
		passengers.delete(passenger)
	end

	def full?
		passengers.count == capacity
	end

end