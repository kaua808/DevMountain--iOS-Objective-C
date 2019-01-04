/*:

## Control Flow

Write a function that prints the numbers from 1 to 100. But for multiples of three print “Dev” instead of the number and for the multiples of five print “Mountain”. For numbers which are multiples of both three and five print “DevMountain”.
*/
func devmountain() {
    for i in 1...100 {
        switch i {
        case _ where i % 15 == 0:
            print("Devmountain")
        case _ where i %  3 == 0:
            print("Dev")
        case _ where i %  5 == 0:
            print("Mountain")
        default:
            print(String(i))
        }
    }
}
//: Demo the use of your function here. Go to View -> Debug Area -> Show Debug Area to see the logged results.

devmountain()

//: [Previous](@previous)
//: [Next](@next)
