//
//  main.swift
//  Type Casting
//
//  Created by 2lup on 08.10.2021.
//

import Foundation

print("Hello, World!")


//MARK: Определение классовой иерархии для приведения типов
print("\n//Определение классовой иерархии для приведения типов")

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}
 
class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]
// тип "library" выведен как [MediaItem]

print(type(of: library))
print(type(of: library[0]))
print(type(of: library[1]))


//MARK: Проверка типа
print("\n//Проверка типа")

var movieCount = 0
var songCount = 0
 
for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}
 
print("В Media библиотеке содержится \(movieCount) фильма и \(songCount) песни")
// Выведет "В Media библиотеке содержится 2 фильма и 3 песни"
