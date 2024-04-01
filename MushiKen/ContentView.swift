import SwiftUI

struct ContentView: View {
    @State var mushikenNumber = 0

    var body: some View {
        VStack {
            if mushikenNumber != 0 {
                HStack {
                    Button(action: {
                        mushikenNumber = 0
                    }) {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.blue)
                            .padding()
                    }
                    Spacer()
                }
            }
            
            Spacer()

            if mushikenNumber == 0 {
                Image("title")
                    .resizable()
                    .scaledToFit()
            } else if mushikenNumber == 1 {
                Image("hebi")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("蛇")
                    .padding(.bottom)
            } else if mushikenNumber == 2 {
                Image("kaeru")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("蛙")
                    .padding(.bottom)
            } else {
                Image("namekuji")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("蛞蝓")
                    .padding(.bottom)
            }

            Button("虫拳をなす！") {
                mushikenNumber = Int.random(in: 1...3)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .font(.title)
            .background(.green)
            .foregroundColor(.white)

            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
