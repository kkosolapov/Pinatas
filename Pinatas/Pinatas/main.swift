import Foundation

func maxCandies(_ pinatas: [Int]) -> Int {
    
    var maxCandies = 0
    
    var candies = 0
    var left_pinatas = 0
    var right_pinatas = 0
    
    for i in 0...pinatas.count-1{
        
        if (i - 1 >= 0 && i+1 < pinatas.count){
            left_pinatas = pinatas[i-1]
            right_pinatas = pinatas [i+1]
            
        }
        
        else {
            left_pinatas = 1
            right_pinatas = 1
        }
        
        candies = left_pinatas * pinatas[i] * right_pinatas;
        maxCandies = max(maxCandies,candies)
        
    }
    
    return maxCandies
}

func getInputArrayNums() -> [Int] {
    print("Enter array of nums (separated by spaces): ")
    if let input_arr_nums = readLine() {
        return input_arr_nums.split(separator: " ").compactMap { Int($0) }
    } else {
        return []
    }
}

var arr_nums: [Int] = []

repeat {
    arr_nums = getInputArrayNums()
    if (arr_nums.isEmpty || arr_nums.contains { $0 <= 0 }) {
        print("Incorrect input array of nums\n")
    }
} 
while (arr_nums.isEmpty || arr_nums.contains { $0 <= 0 })

print("Max amount of candies: ", maxCandies(arr_nums))
