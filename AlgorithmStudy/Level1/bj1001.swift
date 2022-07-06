//  Created by 김상민 on 2022/07/06.
//
// 1001
/*
 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
 
 입력:
 첫째 줄에 A와 B가 주어진다. (0 < A, B < 10)
 
 */
import Foundation

let num = readLine()!.split(separator: " ").map { Int(String($0))! }
print("\(num[0] + num[1])")
