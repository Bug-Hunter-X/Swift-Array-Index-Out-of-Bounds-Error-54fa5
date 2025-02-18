let array = [1, 2, 3]
if array.indices.contains(3) {
    let element = array[3] 
    print(element) //this will not be executed
} else {
    print("Index out of range") //this will be printed
}

//Alternative solution using optional binding
let element = array[safe: 3]
print(element ?? "Index out of range") //Prints "Index out of range"

//Extension for safe array access
 extension Array {
    subscript(safe index: Int) -> Element? {
        guard index >= 0 && index < count else { return nil }
        return self[index]
    }
}