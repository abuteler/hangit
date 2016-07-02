require './lib/hangit'

describe "Hangit" do
	it "When the game starts the secret word should be bartulos" do
		@hangit = Hangit.new

		expect(@hangit.show_current).to eq "_ _ _ _ _ _ _ _"
	end

	it "When user inputs letter a find matches" do
		@hangit = Hangit.new
		@hangit.find_match("a")

		expect(@hangit.unmask("a")).to eq "_ a _ _ _ _ _ _"
	end
end
