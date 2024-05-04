import UIKit

var greeting = "Hello, playground"
var additionalGreet = "From the other side"

if greeting == "hello"{
    // String inpetpolation
    print("\(greeting),\(additionalGreet)")
    
} else{
    print(greeting)
}

// Hello World

var name1 = "Diva"
var language = "Swift"

var message = "\(name1),Wellcome to the \(language)world"

print(message)

var name2 = "Diva2"
var name3 = "Diva3"
var name4 = "Diva4"
var name5 = "Diva5"

print(name1,name2,name3,name4,name5,separator:", ")

//Array
var names = ["Jon","Kim","Ara","Ucup"]
print(names.joined(separator: ", "))

// Solve problem
// 1. buat sebuah array yang berisi nama nama hewan,
// 2. gabungkan nama hewan hewan tersebut menjadi sebuah string dengan separator koma

//3. kemudian buatlah sebuah string dengan output seperti ini:
//Selamat datang, Sena!
//Hewan favoritmu dari daftar adalah Kucing, Kura-Kura, Kuda

var animals = ["Kucing","Kura-Kura","Kuda"]
var gabung = (animals.joined(separator: ", "))

var nama = "Sena"
var utup = "Selamat datang, "
var favorite = "Hewan favoritmu dari daftar adalah"

print("Selamat datang, \(nama)!, Hewan favoritmu dari daftar adalah ,\(gabung)")

// MARK: - CONSTANT
// let memiliki memori yang lebih kecil karena variablenya fixed
let freezeTemp = 0, speedOfSound = 2000
let speedOfLight = 30000
var thisbacktick = 21
`thisbacktick`
//untuk variabel yang namanya sama

//1. Tidak boleh spasi (harus camel case)
//2. Tidak boleh ada simbol matematika
//3. Tidak boleh dimulai dengan number
//4. Jika menggunakan reserve keyword, misalnya internal

// MARK: - VARIABLE
var currentTemp = 22, currentSpeed = 213
currentTemp = 28

// MARK: - TYPE SAFETY
var age = "25"
age = "dua lima"

// MARK - TYPE INFERENCE
var x: Double = 3.14
var y: String = "Hello Everyone"
var z: Bool = true

print(type(of:x))
print(type(of:y))
print(type(of:z))


// MARK: - DATA TYPES
// Numeric
// Integer -> bilangan negatif, bilangan positif, atau bilangan bulat

var i = 95
print(type(of:i))

// FLOAT atau floating-point
// Bilangan desimal
// Merepresentasikan 32-Bit nilai

// let f: Float = 0.123_456 + 0.222_222_222

// DOUBLE
// Merepresentawsikan 64-bit nilai
// atau setara dengan 15 digit desimal
// let d: Double = 0.123_456 + 0.222_222_222

// Case jika melakukan kalkulasi dengan beda tipe data
// var a: Int = 6
// var b: Double = 1.14
// var c = Double(a) + b

// MARK: - BOOLEAN
let isLearning = false
var isReading: Bool = true

if isLearning{
  print("I am still learning swift")
} else {
  print("I am finish with swift")
}

// Ternary operator
let currentState = isReading ? "I am reading Swift":"I am reading another books"

// MARK: - STRING
// string adalah sekumpulan karakter yang berurutan
// biasanya memiliki makna
var greetings: String = "Hello, Swift"
var messages = """
Hello, you are listening thirty days of lunch, You can get weekly dose of inspiration, like the host says "You do you"
"""

// Iterasi perulangan
var stringMessages = "This is your host"

for char in stringMessages{
  print(char)
}

/// Map method
stringMessages.map{ print ($0)}

/// Menggabungkan 2 string atau lebih
var concatenateString = "Hello, \(name1)"
var emptyString = ""
print(concatenateString + ". " + stringMessages)

concatenateString.uppercased()
concatenateString.lowercased()

emptyString.isEmpty
concatenateString.isEmpty

concatenateString.hasPrefix("Hello")
emptyString.hasSuffix("h")

var username = "Rizki"
print(username.replacingOccurrences(of:"Rizki",with:"Rizky"))

// MARK: - VARIABLE OPTIONAL

///untuk handle nil Value, gunakan Swift Optional
var nonOptionalString: String
var optionalString: String?

optionalString = "ayam"
// nonOptionalString = nil

var userName: String?
userName = "Ferro"

if userName != nil {
    // nil coalescing
    print("Hello, \(userName ?? "N/A")")
}

// Optional Binding
if let temp = optionalString {
    print(temp)
    print("You cannot use temp variable outside this scope")
} else {
    print("optionalString was nil")
}

// MARK: - ENUMERATION
enum Colors {
    case redwine, blackjack, skyblue, bloodmoon
    case holywhite, turkishgreen
}
// enum memungkinkan kita untuk mengelompokan beberapa data yang bertipe sama
// ada yang disebut dengan rawValue yaitu actual value dari setiap nilai di dalam color

var vibrantColor = Colors.skyblue
var monochromeColor = Colors.blackjack

switch vibrantColor {
case .redwine:
    print("win is wine")
case .blackjack:
    print("gg black jack")
case .skyblue:
    print("the day is goooood")
default:
    print("What is you favorite color?")
}

// Enum with Values
enum Devices: String {
    case MusicPlayer = "iPod"
    case Phone = "Iphone"
    case Tablet = "iPad"
}

/// akses raw value dari enum Devices
let devicesMessage = "We are using an \(Devices.Tablet.rawValue)"
print(devicesMessage)

// Enum with Associated Values
enum Product {
    case Book(Double,Int,Int)
    case Tablet(Double,Int)
    
}

var ecourseSwift = Product.Book(49.123, 2024, 500)

switch ecourseSwift {
case .Book(let price, let year, let pages):
    print("eCourse Swift was published in \(year) for the price of \(price) in total have \(pages)")
case .Tablet(let price, let pieces):
    print("We have \(pieces) tablet with \(price) for the pirce")
}

// MARK: - OPERATOR
if vibrantColor == .redwine {
    print("Vivid Red wine")
}

/// Asignment operator
var vibrantColorOrange = Colors.turkishgreen
var monochromColor = Colors.holywhite

/// Comparison Operator -> true atau false
var myFavNumber = 8
var myLessFavNumber = 10

/// Equality
myFavNumber == myLessFavNumber
/// Not Equal
myFavNumber != myLessFavNumber
/// Greater than
myFavNumber > myLessFavNumber
/// Less than
myFavNumber < myLessFavNumber
/// Greater than or Equal To
myFavNumber >= myLessFavNumber
/// Less than or Equal To
myFavNumber <= myLessFavNumber

/// Arithmetic Operator
var x1 = 10
var x2 = 14
// Addition
var tambah = x1 + x2
// Substraction
var kurang = x2 - x1
// Multiplication
var kali = x1 * x2
// Division
var bagi = x2 / x1
// Remainder atau module
var mod = x1 % x2

/// Compound Assignment Operator
x1 += 2  // x1 = x1 + 2
x1 -= 2
x1 *= 2
x1 /= 2

/// Logical not Operator
var isReadingNovel = true
var reading = !isReadingNovel





