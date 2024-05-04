import UIKit

var greeting = "Hello, playground"

/// Closure sebagai parameter
/// Sering digunakan sebagai callback untuk menangani aksi yang terjadi (misal; async throws)
///
func fetchData(completion: (String)-> Void)
{
    let data = "Get data from somewhere"
    completion(data)
}

fetchData { data in
    print("Data received: \(data)")
    
}

/// Closure untuk manipulasi data dalam array
///  methodnya ada map, filter, dan reduce
let numbers = [1, 2, 3, 4, 5]

// gandakan array number dengan closure
let  doubledNumbers = numbers.map { item in
    item * 2
}

print(doubledNumbers)

/// Closure sebagai pengganti fungsi
let greet = {(name:String) in
    print("hello, \(name)")
}
greet("affan")

/// Closure dengan method filter
let names = ["Affan", "Dita", "Dira", "Riza", "Jessen" , "Dicky", "Aula", "Maya", "Ridwan"]

/// misalkan ingin mencari nama yang menggandung huruf i
let filteredNames = names.filter { nama in
    nama.contains("i")
}

print(filteredNames)


let searchText = "s"
let searchResults = names.filter {
    $0.lowercased().contains(searchText.lowercased())
}

