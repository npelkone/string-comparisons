import Foundation
import Glibc
import Dispatch


let times_file = URL(fileURLWithPath: "../times-file.txt")
let text_file = "../string-10k.txt"
var s = try! String(contentsOf: URL(fileURLWithPath: text_file))

var start = clock()

// --------- regex 1 ---------
// let regex = try NSRegularExpression(pattern: "bab{3}")
// // --------- regex 2 ---------
// let regex = try NSRegularExpression(pattern: "bbbba+")
// // --------- regex 3 ---------
// let regex = try NSRegularExpression(pattern: "bbbbb|aaaaa")
// // --------- regex 4 ---------
// let regex = try NSRegularExpression(pattern: "bab{3}|bbbba+")
// // --------- regex 5 ---------
// let regex = try NSRegularExpression(pattern: "(bbbbb|aaaaa)+")
// regex.matches(in:s, range: (NSMakeRange(0, s.length)))

// --------- concat ---------
// s.append("a")

// --------- replace/modify ---------
// s.replacingOccurrences(of: "abba", with: "CCCC")

// --------- equals ---------
// var s2 = s.copy() as! String
// s.append("a")
// // s == s2
// s.elementsEqual(s2)
// var s2 = s
// s2.append("a")

// if (s == s2) {
// } else {
// }
// print(bool)

// --------- uppercase ---------
// s = s.uppercased()

// --------- reverse ---------
// String(s.reversed())

// --------- duplicate: shallow copy ---------
// var s2 = s
// s2.count
// --------- sort: returns an array, np? ---------
// s.sorted()

var end = clock()
var duration = ((Double) (end - start)) / 1000
var str = String(duration)

do {
    let fileHandle = try FileHandle(forWritingTo: times_file)
        fileHandle.seekToEndOfFile()
        fileHandle.write(str.data(using: .utf8)!)
        fileHandle.write("\n".data(using: .utf8)!)
        fileHandle.closeFile()
} catch {
    print("Error writing to file \(error)")
}
