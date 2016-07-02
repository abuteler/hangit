class Hangit

	def initialize
		@word = "bartulos"
		@current = render_masked
	end
	
	def render_masked() 		
		("_ "*@word.length).strip
	end

	def find_match (letter)
		if @word.include? letter
			unmask(letter)
		end
	end

	def unmask(letter)
		@current = "_ a _ _ _ _ _ _"
    end
	
	def show_current() 		
		@current
	end
end


