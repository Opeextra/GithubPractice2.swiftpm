import SwiftUI

struct ContentView: View {
    @State var  number1: Int?
    @State var number2: Int?
    @State var answer = 0
    var body: some View {
        HStack{
            TextField("Enter Number 1", value: $number1, format: .number)
                .textFieldStyle(.roundedBorder)
            TextField("Enter Number 2", value: $number2, format: .number)
                .textFieldStyle(.roundedBorder)
                
        }
        VStack{
            HStack{
                Button("Add"){
                    answer = (number1 ?? 0) + (number2 ?? 0)
                }
                Button("Subtract"){
                    answer = (number1 ?? 0) - (number2 ?? 0)
                }
            }
                HStack{
                    Button("Multiply"){
                        answer = (number1 ?? 0) * (number2 ?? 0)
                    }
                    Button("Divide"){
                        answer = (number1 ?? 0) / (number2 ?? 0)
                    }
                }
            
             


            

        }
        Text("Answer: \(answer)")
            .font(.custom("Verdana", size: 30))
            
    }
}
