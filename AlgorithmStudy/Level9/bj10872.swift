// 10872
/*
 0보다 크거나 같은 정수 N이 주어진다. 이때, N!을 출력하는 프로그램을 작성하시오.
 
 입력: 첫째 줄에 정수 N(0 ≤ N ≤ 12)이 주어진다.
 출력: 첫째 줄에 N!을 출력한다.
 */
import Foundation

func getPactorial(n: Int) -> Int{
    if n == 0 { return 1}
    return n * getPactorial(n: n-1)
}

let input = Int(readLine()!)!
print(getPactorial(n: input))
