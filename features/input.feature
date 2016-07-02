Feature: hangit reads user input

Scenario: the user enters a letter
	Given a user that inputs letter "a"
	Then hangit should find match letters "_ a _ _ _ _ _ _"

