//
//  Character.swift
//  RickAndMortyIntern
//
//  Created by Mirshod Makhmudov on 17/08/23.
//

import Foundation

struct Character: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var image: String
    //info
    var species: String
    var type: String
    var gender: String
    //origin
    var planet: String
}

var characterList = [
    Character(name: "Rick Sanchez", image: "rick", species: "Human", type: "None", gender: "Male", planet: "Earth"),
    Character(name: "Morty Smith", image: "morty", species: "Human", type: "None", gender: "Male", planet: "Earth"),
    Character(name: "Summer Smith", image: "summer", species: "Human", type: "None", gender: "Female", planet: "Earth"),
    Character(name: "Beth Smith", image: "beth", species: "Human", type: "None", gender: "Female", planet: "Earth"),
    Character(name: "Rick Sanchez", image: "rick", species: "Human", type: "None", gender: "Male", planet: "Earth"),
    Character(name: "Morty Smith", image: "morty", species: "Human", type: "None", gender: "Male", planet: "Earth"),
    Character(name: "Summer Smith", image: "summer", species: "Human", type: "None", gender: "Female", planet: "Earth"),
    Character(name: "Beth Smith", image: "beth", species: "Human", type: "None", gender: "Female", planet: "Earth"),
]


struct Episodes: Identifiable, Hashable {
    var id = UUID()
    var episodeCount: UInt16
    var seasonCount: UInt16
    var episodeName: String
    var date: String
    
}

var episodesList = [
    Episodes(episodeCount: 1, seasonCount: 1, episodeName: "Pilot", date: "December 2, 2013"),
    Episodes(episodeCount: 2, seasonCount: 1, episodeName: "Lawnmower Dog", date: "December 9, 2013"),
    Episodes(episodeCount: 3, seasonCount: 1, episodeName: "Anatomy Park", date: "December 16, 2013"),
    Episodes(episodeCount: 4, seasonCount: 1, episodeName: "M.Night Shaym-Aliens!", date: "January 13, 2014"),
    Episodes(episodeCount: 5, seasonCount: 1, episodeName: "Meeseeks and Destroy", date: "January 20, 2014"),
    Episodes(episodeCount: 6, seasonCount: 1, episodeName: "Rick Pation #9", date: "January 27, 2014"),
    Episodes(episodeCount: 7, seasonCount: 1, episodeName: "Raising Gazorpazorp", date: "March 10, 2014"),
    Episodes(episodeCount: 8, seasonCount: 1, episodeName: "Rixty Minutes", date: "March 17, 2014"),
    Episodes(episodeCount: 9, seasonCount: 1, episodeName: "Something Ricked This Way Comes", date: "March 24, 2014"),
    Episodes(episodeCount: 10, seasonCount: 1, episodeName: "Close Rick-countries of the Rick Kind", date: "April 7, 2014"),
    Episodes(episodeCount: 11, seasonCount: 1, episodeName: "Ricksy Business", date: "April 14, 2014"),

]

