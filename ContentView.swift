import SwiftUI

struct ContentView: View {
    @State var  number1: Int?
    @State var number2: Int?
    @State var answer = 0
    var body: some View {
        HStack{
            TextField("Enter Number 1", value: $number1, format: .number)
               
            TextField("Enter Number 2", value: $number2, format: .number)
                
                
        }
        Button("Calculate"){
            answer = (number1 ?? 0) + (number2 ?? 0)
        }
        Text("Answer: \(answer)")
            .bold()
            
    }
}
