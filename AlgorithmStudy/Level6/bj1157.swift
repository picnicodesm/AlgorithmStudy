// 1157
/*
 알파벳 대소문자로 된 단어가 주어지면, 이 단어에서 가장 많이 사용된 알파벳이 무엇인지 알아내는 프로그램을 작성하시오. 단, 대문자와 소문자를 구분하지 않는다.
 
 입력: 첫째 줄에 알파벳 대소문자로 이루어진 단어가 주어진다. 주어지는 단어의 길이는 1,000,000을 넘지 않는다.
 출력: 첫째 줄에 이 단어에서 가장 많이 사용된 알파벳을 대문자로 출력한다. 단, 가장 많이 사용된 알파벳이 여러 개 존재하는 경우에는 ?를 출력한다.
 */

import Foundation

var count = [Int](repeating: 0, count: 26)

for s in readLine()! {
    var n = Int(s.asciiValue!)
    if n >= 97 { n -= 32 }
    count[n-65] += 1
}

let max = count.max()!
let testing = count.filter {
    $0 == max
}

if testing.count != 1 {
    print("?")
} else {
    print(Character(Unicode.Scalar(65 + count.firstIndex(of: max)!)!))
}

/*
 import Foundation

 var apb = [Int](repeating: 0, count: 26)

 for s in readLine()! {
     var n = ascii(s); if n >= 97 { n -= 32 }
     apb[n-65] += 1
 }

 let maxValue = apb.max()!
 let maxValueIndex = apb.firstIndex(of: maxValue)!
 let maxList = apb.filter{ maxValue == $0 }

 if maxList.count > 1 {
     print("?")
 } else {
     print(Character(UnicodeScalar(65+maxValueIndex)!))
 }

 func ascii(_ n: Character) -> Int {
     Int(n.unicodeScalars.first!.value)
 }
 */
