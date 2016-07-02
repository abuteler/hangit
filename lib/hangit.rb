class Hangit

	def create_word
		@word = "bartulos"	
	end

	def render_masked
		("_ "*@word.length).strip
	end
end


