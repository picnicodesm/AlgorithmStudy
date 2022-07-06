//  Created by 김상민 on 2022/07/03.
//
// 1546
/*
 세준이는 기말고사를 망쳤다. 세준이는 점수를 조작해서 집에 가져가기로 했다. 일단 세준이는 자기 점수 중에 최댓값을 골랐다. 이 값을 M이라고 한다. 그리고 나서 모든 점수를 점수/M*100으로 고쳤다.

 예를 들어, 세준이의 최고점이 70이고, 수학점수가 50이었으면 수학점수는 50/70*100이 되어 71.43점이 된다.

 세준이의 성적을 위의 방법대로 새로 계산했을 때, 새로운 평균을 구하는 프로그램을 작성하시오.
 */

// 중요한 점: 연산에 따라 값의 타입을 잘 정해줘야 함.

import Foundation

var N = Int(readLine()!)!
var scoreArr = readLine()!.split(separator: " ").map { Double(String($0))! }
// 값을 나눠야 하기 때문에 Double로 만들어준다.
let maxValue = scoreArr.max()!
var sum = 0.0 // 0으로 하면 Int로 추론하기 때문에 Double로 추론할 수 있도록 0.0으로 한다.
scoreArr = scoreArr.map { $0 / maxValue * 100 }
for num in scoreArr {
    sum += num
}
print(sum / Double(scoreArr.count))
