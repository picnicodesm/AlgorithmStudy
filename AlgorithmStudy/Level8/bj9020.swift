// 9020
/*
 1보다 큰 자연수 중에서  1과 자기 자신을 제외한 약수가 없는 자연수를 소수라고 한다. 예를 들어, 5는 1과 5를 제외한 약수가 없기 때문에 소수이다. 하지만, 6은 6 = 2 × 3 이기 때문에 소수가 아니다.

 골드바흐의 추측은 유명한 정수론의 미해결 문제로, 2보다 큰 모든 짝수는 두 소수의 합으로 나타낼 수 있다는 것이다. 이러한 수를 골드바흐 수라고 한다. 또, 짝수를 두 소수의 합으로 나타내는 표현을 그 수의 골드바흐 파티션이라고 한다. 예를 들면, 4 = 2 + 2, 6 = 3 + 3, 8 = 3 + 5, 10 = 5 + 5, 12 = 5 + 7, 14 = 3 + 11, 14 = 7 + 7이다. 10000보다 작거나 같은 모든 짝수 n에 대한 골드바흐 파티션은 존재한다.

 2보다 큰 짝수 n이 주어졌을 때, n의 골드바흐 파티션을 출력하는 프로그램을 작성하시오. 만약 가능한 n의 골드바흐 파티션이 여러 가지인 경우에는 두 소수의 차이가 가장 작은 것을 출력한다.
 
 입력: 첫째 줄에 테스트 케이스의 개수 T가 주어진다. 각 테스트 케이스는 한 줄로 이루어져 있고 짝수 n이 주어진다.
 출력: 각 테스트 케이스에 대해서 주어진 n의 골드바흐 파티션을 출력한다. 출력하는 소수는 작은 것부터 먼저 출력하며, 공백으로 구분한다.
 */

import Foundation

func isPrime(n: Double) -> Bool {
    var i = 2
    if n == 1 {
        return false
    }
    if n != 2 && Int(n) % 2 == 0 { return false }
    i = 3
    for num in stride(from: i, through: Int(sqrt(n)), by: 2) {
        if Int(n) % num == 0 { return false}
    }
    return true
}

let C = Int(readLine()!)!
var arr = Array<Int>()
for _ in 1...C {
    let n = Int(readLine()!)!
    arr.append(n)
}
var partitions = [[Int]]()
for n in arr {
    for i in 2...n {
        if isPrime(n: Double(i)) && isPrime(n: Double(n-i)){
            partitions.append([i, n-i])
        }
    }
    var minIndex = 0
    for index in 1..<partitions.count {
        if abs(partitions[index][0] - partitions[index][1]) < abs(partitions[minIndex][0] - partitions[minIndex][1]) {
            minIndex = index
        }
    }
    print("\(partitions[minIndex][0]) \(partitions[minIndex][1])")
    partitions.removeAll()
}

/*
 let n = Int(readLine()!)!
 let m = 10000

 var list:[Int] = [Int](0...m)

 for i in 2...m {
     if list[i] == 0 {
         continue
     }
     for j in stride(from:i+i, through: m, by: i) {
         list[j] = 0
     }
 }
 for _ in 1...n {
     let input = Int(readLine()!)!
     var prime1 = input / 2
     var prime2 = input / 2
     while true {
         if list[prime1] + list[prime2] == input {
             print(prime1, prime2)
             break
         }
         else {
             prime1 -= 1
             prime2 += 1
         }
     }
 }
 */
