/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

class SpaceAdventure {
    
    func start() {
        displayIntroduction()
        greetAdventurer()
        print("Let's go on an adventure!")
        determineDestination()
    }
 
    fileprivate func displayIntroduction() {
        let numberOfPlanets = 8
        let diameterOfEarth = 24859.82 // In miles, from pole to pole.
        print("Welcome to our solar system!")
        print("There are \(numberOfPlanets) planets to explore.")
        print("Your are currently on Earth, which has a circumference of \(diameterOfEarth) miles.")
    }
    
    fileprivate func responseToPrompt(_ prompt: String) -> String {
        print(prompt)
        return getln()
    }

    fileprivate func greetAdventurer() {
        let name = responseToPrompt("What is your name?")
        print("Nice to meet you, \(name). My name is Eliza, I'm an old friend of Siri.")
    }
    
    fileprivate func determineDestination() {
        var decision = "" // Start with empty String
        while !(decision == "Y" || decision == "N") {
            decision = responseToPrompt("Shall I randomly choose a planet for you to visit? (Y or N)")
            if decision == "Y" {
                print("Ok! Traveling to...")
                // TOOD: travel to random planet
            } else if decision == "N" {
                print("Ok, name the planet you would like to visit...")
                // TODO: let the user select a planet to visit
            } else {
                print("Sorry, I didn't get that.")
            }
        }
    }

}
