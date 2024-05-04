#  <#Title#>

import UIKit

/// Generic
/// Contoh bagaimana menulis fungsi terrpisah untuk tipe data yang berbeda
///
func addInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func addDoubles(_ a: Double, _ b: Double) -> Double {
    return a + b
}

/// Bisa di solve dengan penggunaan Generic
/// Operasi penjumlahan dibuat ke dalam satu fungsi
/// T merupakan placeholder standar konversi untuk penyebutan Generic di bahasa pemrograman Swift
func addNumbers<T: Numeric>(_ a: T, _ b: T) -> T {
    return a + b
}

/// Kesimpulan
/// Generic bukanlah tipe data primitif seperti Int, Double, String, dll
/// Generic adalah placeholder untuk tipe data yang sebenarnya
/// Dengan begitu kita dapat menulis kode yang lebih umum (Generic) yang dapat digunakan kembali (reusable) tanpa terikat pada tipe data yang spesifik

/// Protocol
/// Sama seperti class dan struct, dia mendefinisikan suatu blueprint dari meethod, property, atau fungsi
/// Lalu apa yang membedakan?

protocol FullName {
    var userFullName: String {
        get
    }
}

struct Person: FullName {
    var userFullName: String
}

let dira = Person(userFullName: "Dira Sanjaya")

// Class masih ingat? analogi mobil dan kunci mobil?

/// Cocoknya untuk membangun objek yang bisa dimodifikasi oleh anak-anak dari class (inheritance)

// Struct

/// Cocok untuk bikin duplikat objek yang berdiri sendiri sehingga integritas datanya lebih valid
///
///

protocol Shape {
    func calculateArea() -> Double
    func calculatePerimeter() -> Double
    
}

struct Circle: Shape {
    func calculatePerimeter() -> Double {
        2 * .pi * radius
    }
    
    let radius: Double
    
    func calculateArea() -> Double {
        return .pi * radius * radius
    }
    
    
}


// Kalau di project
protocol JSONDecoderType {
    func decode<T: Decodable>(_ type: T.Type, from data: Data) -> T?
}

struct JSONDecoderService: JSONDecoderType {
    func decode<T: Decodable>(_ type: T.Type, from data: Data) -> T? {
        let decoder = JSONDecoder()
        
        do {
            let decodedObject = try
            decoder.decode(T.self, from: data)
            return decodedObject
        } catch {
            return nil
        }
        
    }
}

// Kesimpulan:
/// 1. protocol dengan fungsi generic dapat digunakan untuk operasi yang sangat fleksible (dalam contoh ini untuk decoding data JSON ke model (mapping data) pokoknya yang tipenya Decodable
/// 2. proses decoding dapat digunakan dengan berbagai jenis model data tanpa harus menulis kode decoding yang spesifik untuk setiap model
