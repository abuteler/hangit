Feature: Initial game screen

Scenario: User opens the app
	When The user opens the app
	Then The user should see a welcome message: "Welcome to Hangit !"
	And The user should see a button "Start Game"

Scenario: User starts the game
	Given The user opens the app
	When The user starts the game
	Then The user should see the secret word "_ _ _ _ _ _ _"

Scenario: User can track his remaining lifes
	Given The user opens the app
	When The user starts the game
	Then The user sees the life counter with "5/5"
	
#Scenario: User loses a life
#	Given The user opens the app
#		And The user starts the game
#	When The user enters the letter "z", which is not present in the secret word "bartulos"
#	Then The user should see its life counter decreased by one
