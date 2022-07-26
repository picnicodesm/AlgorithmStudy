// 1978
/*
 주어진 수 N개 중에서 소수가 몇 개인지 찾아서 출력하는 프로그램을 작성하시오.
 
입력: 첫 줄에 수의 개수 N이 주어진다. N은 100이하이다. 다음으로 N개의 수가 주어지는데 수는 1,000 이하의 자연수이다.
출력: 주어진 수들 중 소수의 개수를 출력한다.
 */

import Foundation

let C = Int(readLine()!)!

let numbers = readLine()!.split(separator: " ").map{ Double(String($0))! }
var count = 0

func isPrime(n: Double) -> Bool {
    var i = 2
    if n == 1 {
        return false
    }
    if n != 2 && Int(n) % 2 == 0 { return false }
    i = 3
    while i <= Int(sqrt(n)) {
        if Int(n) % i == 0 { return false }
        i += 2
    }
    return true
}

for i in numbers {
    if isPrime(n: i) { count += 1}
}

print(count)
