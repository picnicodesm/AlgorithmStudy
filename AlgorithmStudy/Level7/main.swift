// 10757
/*
 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
 
 입력: 첫째 줄에 A와 B가 주어진다. (0 < A,B < 1010000)
 출력: 첫째 줄에 A+B를 출력한다.
 
 에제 입력: 9223372036854775807 9223372036854775808
 예제 출력: 18446744073709551615
 
 UInt64를 쓰면 런타임 에러 발생
 */
import Foundation

let input = readLine()!.split(separator: " ")
var num1 = input[0].map{ Int(String($0))! }
var num2 = input[1].map{ Int(String($0))! }
while num1.first == 0 {
    num1.removeFirst()
}
while num2.first == 0 {
    num2.removeFirst()
}
num1.reverse()
num2.reverse()
var minN = num1
var maxN = num1
if num1.count >= num2.count {
    minN = num2
    maxN = num1
} else {
    minN = num1
    maxN = num2
}
var answer = [String]()
var add = 0
for index in 0..<maxN.count {
    if index < minN.count {
        answer.append(String((maxN[index]+minN[index] + add ) % 10 ))
        add = (maxN[index]+minN[index] + add) / 10
    } else {
        answer.append(String((maxN[index] + add) % 10))
        add = (maxN[index]+add) / 10
    }
}
if add == 1 {
    answer.append(String(add))
}
answer.reverse()
print(answer.joined())
