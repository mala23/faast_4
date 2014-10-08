require 'seats'

class PassengerSeats; include Seats; end

describe Seats do

	let(:seats) { PassengerSeats.new }
	# let(:seats_full) { :seats full?: true }
	let(:passenger) { double :passenger }

	it "should initialize empty" do
		expect(seats.passengers.count).to eq(0)
	end

	it "should accept a passenger" do
		expect{seats.accept(passenger)}.to change{seats.passengers.count}.by 1
	end

	it "should release a passenger" do
		seats.accept(passenger)
		expect{seats.release(passenger)}.to change{seats.passengers.count}.by -1
	end

	it "should not know when all seats are occupied" do
		40.times {seats.accept(passenger)}
		expect(seats).to be_full
	end

end