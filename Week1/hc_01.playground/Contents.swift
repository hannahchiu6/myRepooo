import Cocoa
//Remote Learning Assignment - Week 1
//Basic

//# Question 1
let Pi: Double = 3.14159

//# Question 2
let x: Int = 8
let y: Int = 10
var average = x + y

//# Question 3
var Newaverage = Double(average)
// 因為 10 和 3 都是整數，所以系統認為兩個 integer 的計算答案也會是 integer。如果要進行這類型的計算，可以寫 10.0 / 3.0，以 Double 形式運算，便可以讀到想要的結果。

//# Question 4
var flag: Bool = true
var inputString: String = "​Hello world."
let ​bitsInBite: Int = 8
let averageScore: Float = 86.8

//# Question 5
var salary = 22000
salary += 28000

//# Question 6
print("==")

//# Question 7
let w = 3
let z = 10
let remain = w + z

//# Question 8
print("\n--- Basic # Question 8 ---\n")
print("var 用來宣告可變的常數")
print("let 用來宣告不可變的常數")

//# Question 9
print("\n--- Basic # Question 9 ---\n")
print("- 宣告方法和變數的首字母使用小寫字元，若為一句話，第二個單字的首字母為大寫。ex: FamilyName.\n"+"- 常量使用 let，變數使用 var ，如果變數的值不需要改變，儘量使用 let 關鍵字。\n"+"-當可能有 nil 值是產生時，定義變數和函式返回值為可選型別(?)")

//# Question 10
print("\n--- Basic # Question 10 ---\n")
print("Type Inference: 如果沒有特別的標註類型的話，Swift 會透過型別推論找出合適的型別給變數。")

//# Question 11
print("\n--- Basic # Question 11 ---\n")
print("第二行已經宣告 var​phoneNumber 是一組可變的數字串，第二行則複寫值為一組字串 String，和第一行的 Int 衝突。")


//Collection
//# Question 1
var myFriends = [String]()

//# Question 2
myFriends = ["Ian","Bomi","Kevin"]

//# Question 3
myFriends.append("Michael")

//# Question 4
myFriends.swapAt(2, 0)

//# Question 5
print("\n--- Collection # Question 5 ---\n")
for friend in myFriends{
    print(friend)
}

//# Question 6
print("\n--- Collection # Question 6 ---\n")
print("沒有 index 5 這個值。我使用 print(myFriends[5]) 搜尋位在 Array 裡第五順位的值，回送的結果為 error，若有值就會列印出。")

//# Question 7
myFriends.first

//# Question 8
myFriends.last

//# Question 9
var ​myCountryNumber = [String : Int]()

//# Question 10
​myCountryNumber = [ "US":1,"GB":44,"JP":81 ]

//# Question 11
​myCountryNumber["GB"] = 0

//# Question 12
print("\n--- Collection # Question 12 ---\n")
var ​emptyDictionary = [String : Int]()
print("在陣列裡宣告 [key : value] 的變數型態即可宣告空白的 Dictionary。" + "\n------\n" + "要清空 Dictionary 則使用下列語法：​emptyDictionary.removeAll()")
​emptyDictionary.removeAll()

//# Question 13
​myCountryNumber.removeValue(forKey: "GB")



//Control Flow
//# Question 1
print("\n--- Control Flow # Question 1 ---\n")
let lottoNumbers = [10, 9, 8, 7, 6, 5 ]
print("Last three members: \(lottoNumbers.suffix(3))")

//# Question 2
print("\n--- Control Flow # Question 2 ---\n")

var reversedNumbers: [Int] = Array(lottoNumbers.reversed())

for numbers in reversedNumbers{
print(numbers)
}
print("\n")
for numbers in lottoNumbers where numbers % 2 == 0{
print(numbers)
}

//# Question 3
print("\n--- Control Flow # Question 3 ---\n")
var i = 0

while i < reversedNumbers.count {
    print(reversedNumbers [i])
    i += 1
}
print("\n")
var i2 = 0
while i2 < lottoNumbers.count {
    if lottoNumbers[i2] % 2 == 0 {
    print(lottoNumbers[i2])
    }
    i2 += 1
}


//# Question 4
print("\n--- Control Flow # Question 4 ---\n")

var index = 0
repeat{
    print(reversedNumbers[index])
    index += 1
} while index < reversedNumbers.count


print("\n")
var index2 = 0
repeat{
   
    if lottoNumbers[index2] % 2 == 0 {
     print(lottoNumbers[index2])
    }
    index2 += 1
} while index2 < lottoNumbers.count




//# Question 5
print("\n--- Control Flow # Question 5 ---\n")
print("在 repeat 迴圈裡，都會至少先執行一次要被執行的程式碼，執行完之後才會進行 while 的條件檢查。" + "\n在 while 迴圈會在一開始判斷所設定的條件，若為真，持續進行直到不符合條件，才會跳出迴圈。")

//# Question 6
print("\n--- Control Flow # Question 6 ---\n")
var isRainging: Bool = true

if isRainging == true {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

//# Question 7
print("\n--- Control Flow # Question 7 ---\n")
var jobLevel = [ Int():String() ]
jobLevel = [ 1:"Member", 2:"Team Leader", 3 :"Manager", 4:"Director"]

let newJob = jobLevel[5] == "CEO"
if newJob == true {
        print("Welcome to the team!")
    }else{
        print("We don't have this job")
    }


//Function
//# Question 1
print("\n--- Function # Question 1 ---\n")
func greet(person: String) -> String {
   return "Hello, \(person)"
}
greet(person: "Celeste")


//# Question 2
print("\n--- Function # Question 2 ---\n")
func ​multiply​(_ a: Int, b: Int = 10) {
    print(a*b)
}
​multiply​(2)


//# Question 3
print("\n--- Function # Question 3 ---\n")
print("每個 function 都有 argument label 和 parameter name，在 func{} 中存取的參數是 parameter name，若 parameter 有 argument label，則在呼叫 func() 時需要使用 argument label。")

//# Question 4
print("\n--- Function # Question 4 ---\n")
func birthday() -> String{
    return "HBD!" // return 字串常數
}

func payment() -> Double {
    return 3.1415 // return 包含小數點的浮點數
}

