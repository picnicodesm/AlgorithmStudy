//  Created by 김상민 on 2022/06/30.
//
// 10818 최대최소
// N개의 정수가 주어진다. 이때, 최솟값과 최댓값을 구하는 프로그램을 작성하시오.
// 5
// 20 10 35 30 7


import Foundation

let N: Int = Int(readLine()!)!
let array: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }

var min = array.first!
var max = array.first!

for num in array {
    if num < min {
        min = num
    } else if num > max {
        max = num
    }
}

print(min, max)
