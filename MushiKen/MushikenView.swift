import SwiftUI

struct MushikenView: View {
    @State var userMushikenNumber = 0
    @State var cpuMushikenNumber  = 0
    @State var result = -1
    
    var cpuHand: String {
        switch cpuMushikenNumber {
        case 1:
            return "蛇"
        case 2:
            return "蛙"
        case 3:
            return "蛞蝓"
        default:
            return "未選択"
        }
    }
    
    var body: some View {
        VStack {
            Text("相手の手: \(cpuHand)")
                .font(.title)
                .padding()
            
            Image("mushiken")
                .resizable()
                .scaledToFit()
            
            HStack(spacing: 40) {
                Button(action: {
                    userMushikenNumber = 1
                    cpuMushikenNumber = Int.random(in: 1...3)
                    result = (userMushikenNumber - cpuMushikenNumber + 2) % 3
                }, label: {
                    // グー
                    Text("蛇")
                        .foregroundColor(.white)
                        .padding(30)
                        .background(Circle().fill(Color.red))
                })
                Button(action: {
                    userMushikenNumber = 2
                    cpuMushikenNumber = Int.random(in: 1...3)
                    result = (userMushikenNumber - cpuMushikenNumber + 2) % 3
                }, label: {
                    // チョキ
                    Text("蛙")
                        .foregroundColor(.white)
                        .padding(30)
                        .background(Circle().fill(Color.red))
                })
                Button(action: {
                    userMushikenNumber = 3
                    cpuMushikenNumber = Int.random(in: 1...3)
                    result = (userMushikenNumber - cpuMushikenNumber + 2) % 3
                }, label: {
                    // パー
                    Text("蛞蝓")
                        .foregroundColor(.white)
                        .padding(30)
                        .background(Circle().fill(Color.red))
                })
            }
            .frame(maxWidth: .infinity, maxHeight: 100)
            .padding(.horizontal)
    
            if result >= 0 {
                if result == 0 {
                    Text("負け")
                } else if result == 1 {
                    Text("勝ち")
                } else {
                    Text("あいこ")
                }
            }
        }
    }
}

#Preview {
    MushikenView()
}
