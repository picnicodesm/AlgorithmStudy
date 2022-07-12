//  Created by 김상민 on 2022/07/07.
//
// 1065
/*
 어떤 양의 정수 X의 각 자리가 등차수열을 이룬다면, 그 수를 한수라고 한다. 등차수열은 연속된 두 개의 수의 차이가 일정한 수열을 말한다. N이 주어졌을 때, 1보다 크거나 같고, N보다 작거나 같은 한수의 개수를 출력하는 프로그램을 작성하시오.
 
 입력:
 첫째 줄에 1,000보다 작거나 같은 자연수 N이 주어진다.
 
 출력:
 첫째 줄에 1보다 크거나 같고, N보다 작거나 같은 한수의 개수를 출력한다.
 */


import Foundation

let input = Int(readLine()!)!

func getNumber(num: Int) -> Int {
    var count = 0
    if num < 100 {
        return num
    } else {
        count = 99
        for n in 100...num {
            let units = n % 10
            let tens = (n / 10) % 10
            let hundreds = (n / 10) / 10
            if (hundreds - tens) == (tens - units) { count += 1 }
        }
    }
    
    return count
}

print(getNumber(num: input))

