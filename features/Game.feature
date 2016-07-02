Feature: Initial game screen

Scenario: User opens the app
	When The user opens the app
	Then The user should see a welcome message: "Welcome to Hangit !"
	And The user should see a button "Start Game"

Scenario: User starts the game
	Given The user opens the app
	When The user starts the game
	Then The user should see the secret word "_ _ _ _ _ _ _"

