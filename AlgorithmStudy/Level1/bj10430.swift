//  Created by 김상민 on 2022/07/06.
//
// 10430
/*
 (A+B)%C는 ((A%C) + (B%C))%C 와 같을까?

 (A×B)%C는 ((A%C) × (B%C))%C 와 같을까?

 세 수 A, B, C가 주어졌을 때, 위의 네 가지 값을 구하는 프로그램을 작성하시오.
 
 입력:
 5 8 4
 
 출력:
 1
 1
 0
 0
 */

import Foundation

let num = readLine()!.split(separator: " ").map { Int(String($0))! }
let A = num[0], B = num[1], C = num[2]

print((A+B)%C)
print(((A%C) + (B%C)) % C)
print((A*B)%C)
print(((A%C) * (B%C))%C)
