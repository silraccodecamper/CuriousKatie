import UIKit


/**
 1.Create a person with name age..
 2.Create interests
 3.Pick those interests and add to the person
 4.Print out the person with interests
 **/
struct Interest {
    let title: String
    let description: String
}
// TODO: define data for interests
var interests = [Interest]()

interests.append(Interest(title: "Coin collection",description: "Collecting coins from different countries"))
interests.append(Interest(title: "Travelling",description: "Travelling new places"))
interests.append(Interest(title: "Reading", description: "Reading books that explains the history of different civilizations"))
interests.append(Interest(title: "Hiking", description: "Hiking different places"))
interests.append(Interest(title: "Watching movies", description: "Watching movies of different genres"))
interests.append(Interest(title: "Sports", description: "Playing ping pong,badminton "))
interests.append(Interest(title: "Cooking", description: "Cooking different cuisines"))
interests.append(Interest(title: "Chess", description: "playing chess"))
interests.append(Interest(title: "Poker", description: "playing poker with family"))
interests.append(Interest(title: "Playing instrument", description: "Instruments like piano,guitar"))

//pick a random num of interests in array and assign to each person
//Todo pick different interests for each person--bug

func generateInterests(numUserInterests: Int) -> [Interest] {
    var userInterests = [Interest]()
    var i = 0
    for _ in 0...numUserInterests {
        
        let pickRandomInterest = Int.random(in: 0...interests.count-1)
        userInterests.append(interests[pickRandomInterest])
        //interests.shuffled()
        i = i + 1
    }
    return userInterests
    
}

class Person {
    let name: String
    let age: Int
    let hometown: String
    var interest: [Interest]
    init(name: String,age: Int,hometown: String,interest: [Interest]){
        self.name = name
        self.age = age
        self.hometown = hometown
        self.interest = interest
    }

    
}
var persons = [Person]()
// TODO: define data for person
let person1 = Person(name: "Adam", age: 30, hometown: "Fremont", interest: generateInterests(numUserInterests: 1))
persons.append(person1)
let person2 = Person(name: "Brad", age: 29, hometown: "Madrid", interest: generateInterests(numUserInterests: 2))
persons.append(person2)
let person3 = Person(name: "Dan", age: 28, hometown: "LA",interest: generateInterests(numUserInterests: 3))
persons.append(person3)
let person4 = Person(name: "Eric", age: 27, hometown: "SFO",interest: generateInterests(numUserInterests: 4))
persons.append(person4)
let person5 = Person(name: "Devin", age: 26, hometown: "Oakland",interest: generateInterests(numUserInterests: 4))
persons.append(person5)
let person6 = Person(name: "Gorge", age: 25, hometown: "Hayward",interest: generateInterests(numUserInterests: 3))
persons.append(person6)
let person7 = Person(name: "Hank", age: 24, hometown: "Czech",interest: generateInterests(numUserInterests: 2))
persons.append(person7)
let person8 = Person(name: "James", age: 23, hometown: "Portland",interest: generateInterests(numUserInterests: 1))
persons.append(person8)
let person9 = Person(name: "kevin", age: 22, hometown: "HYD",interest: generateInterests(numUserInterests: 2))
persons.append(person9)
let person10 = Person(name: "Ram", age: 21, hometown: "Xavier",interest: generateInterests(numUserInterests: 3))
persons.append(person10)
let person11 = Person(name: "Steff", age: 20, hometown: "stockton",interest: generateInterests(numUserInterests: 4))
persons.append(person11)
let person12 = Person(name: "Tim", age: 19, hometown: "Palo",interest: generateInterests(numUserInterests: 1))
persons.append(person12)

// TODO: Print statements for each person
// Format the intrests TODO clearly
func Introduce() {
    for person in persons {
        print("My name is \(person.name). I'm \(person.age) years old. I live in \(person.hometown)")
        print("My interests are ")
        for i in person.interest {
        print("\(i.title), \(i.description)")
        }
    print("\n")
    }
}
//func to pick unique pair of people
func pickPeople() -> Person {
    let pickRandomPeople = persons[(Int.random(in: 0...persons.count-1))]
    return pickRandomPeople
}
Introduce()
pickPeople()

// will partner people with different interests
class Partner {
  
    
}

