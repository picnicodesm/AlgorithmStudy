// 1929
/*
 M이상 N이하의 소수를 모두 출력하는 프로그램을 작성하시오.
 
 출력: 첫째 줄에 자연수 M과 N이 빈 칸을 사이에 두고 주어진다. (1 ≤ M ≤ N ≤ 1,000,000) M이상 N이하의 소수가 하나 이상 있는 입력만 주어진다.
 입력: 한 줄에 하나씩, 증가하는 순서대로 소수를 출력한다.
 */

import Foundation

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

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

for i in input[0]...input[1] {
    if isPrime(n: Double(i)) {
        print(i)
    }
}
