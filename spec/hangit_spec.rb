require './lib/hangit'

describe "Hangit" do
	it "When the game starts the secret word should be bartulos" do
		@hangit = Hangit.new
		@hangit.create_word

		expect(@hangit.render_masked).to eq "_ _ _ _ _ _ _ _"
	end
end
