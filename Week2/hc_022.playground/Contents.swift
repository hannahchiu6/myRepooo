import Cocoa

import Foundation

//Remote Learning Assignment - Week 2
//Object-Oriented Swift

//# Question 1
print("\n--- Object-Oriented Swift # Question 1-3 ---\n")
class Animal{
    let animal :String
    enum Gender {
        case male
        case female
        case undefined
    }
    init(animal : String) {
        self.animal = animal
    }
        func eat() -> String{
        return("I will eat everything!")
        }
}



class Elephant: Animal{
    override func eat() -> String {
            return ("I will eat trees")
        }
}
class Tiger: Animal{
    override func eat() -> String {
            return ("I will eat Elephant")
        }
}
class Horse: Animal{
    override func eat() -> String {
            return ("I will eat grass")
        }
}



//# Question 3

class Zoo {
    var weeklyHot : Animal
    init(weeklyHot : Animal){
        self.weeklyHot = weeklyHot
    }
}
let zoo = Zoo(weeklyHot: Tiger(animal: "Tiger"))
zoo.weeklyHot



//# Question 4
print("\n--- Object-Oriented Swift # Question 4 ---\n")
print("struct 是值類型，而 class 是引用類型。當複製一個 struct 時，會得到的是兩組獨立的數據，而當複製一個 class 時，最終得到的是同一個實例數據的兩個引用。然後 class 可以繼承，struct 無法。\n")

//# Question 5
print("\n--- Object-Oriented Swift # Question 5 ---\n")
print("instance method 提供訪問和修改實例屬性的方法，不能被 type 呼叫，就像前三題範例，eat 是 instance method 不是 type method，寫 Animal.eat() 則會出現 error。若是在 func 前面加上 static，那就可以成為 type method。")

//# Question 6
print("\n--- Object-Oriented Swift # Question 6 ---\n")
print("透過 Initilizer​  來執行初始化過程，讓 class 和 struct 可以來創建一個特定類型的新 instance。\n")

//# Question 7
print("\n--- Object-Oriented Swift # Question 7 ---\n")
print("在 instance method 中使用 self 來引用當前的 intance。而當 self 在 type method 中被使用時（static func 或 class func），它指的是實際的 type 不是 instance。\n")

//# Question 8
print("\n--- Object-Oriented Swift # Question 8 ---\n")
print("​Value type​：每個 instance 都會保存其唯一的資料。一個 type 在呼叫變量或常量、傳遞給一個函數時，會創建一個新的 instance。\nReference type​：每個 instance 共享一個 data 。在呼叫變量或常量、傳遞給一個函數時，一旦初始化，就會返回對同一個現有的 instance。\nstruct，enum 和 tuple 是 value type，而 class，function 和 closure 則是 reference type。")






//Enumerations and Optionals in Swift
//# Question 1-1
print("\n--- Enumerations and Optionals # Question 1 ---\n")
enum Gasoline​: String{

    case type92 = "92",
         type95 = "95",
         type98 = "98",
         diesel = "diesel"
}

func getPrice(price: Gasoline​) -> Double {
        switch price{
        case .type92:
            return 28.13
        case .type95:
            return 28.75
        case .type98:
            return 29.26
        case .diesel: 26.56
            return 26.5
        }
}

let get92Price = getPrice(price: .type92)
Gasoline​.type92.rawValue


//# Question 1-4

print("在 Enumerations 裡可儲存任何自定類型的 associate value，associate value 可以根據每種不同的 case 做改變。")

//# Question 2
print("\n--- Enumerations and Optionals # Question 2 ---\n")

class Pet{
    let name: String
    init(name: String) {
        self.name = name
    }
}

class People {
    var name: String
    var pet: Pet?
    
    init(name: String) {
        self.name = name
    }
    
    func noPet(){
        if let pet = pet  {
            print("\(name) has a pet named \(pet.name).")
        }
    }
    
    func hasPet(){
        guard let pet = pet else {
            return
        }
        print("\(name) has a pet named \(pet.name).")
    }
}

let jenny = People(name: "Jenny")
let pikachu = Pet(name: "Pikachu")
jenny.pet = pikachu
jenny.hasPet()
jenny.noPet()



//Protocol in Swift

protocol PoliceMan{
   func ​arrestCriminals​()
}
protocol ToolMan{
   func ​fixComputer()
}


struct Person: PoliceMan, ToolMan{
    func ​fixComputer() {
        return
    }
    func ​arrestCriminals​() {
        return
    }
    var name: String
    var toolMan: ToolMan
}



struct ​Engineer​: ToolMan{
    func ​fixComputer(){
        return
    }
    
}

let steven = Person(name: "Steven", toolMan: ​Engineer​())
    

//Error Handling in Swift
print("\n--- Error Handling in Swift ---\n")

enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumberGame {
    
    var targetNumber = 10
    
    func guess (number: Int) throws{

        guard number == targetNumber else{
            throw GuessNumberGameError.wrongNumber
        }
    
        print("Guess the right number:\(targetNumber)")
    }
}
let round1 = GuessNumberGame()
do{
try round1.guess(number: 20)
}catch {
    print("Unexpected error: \(error).")
}
    
  


