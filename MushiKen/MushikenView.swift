import SwiftUI

struct MushikenView: View {
    @State var userMushikenNumber = 0
    @State var cpuMushikenNumber  = 0
    @State var result = -1
    
    var userHand: String {
        switch userMushikenNumber {
        case 1:
            return "hebi"
        case 2:
            return "kaeru"
        case 3:
            return "namekuji"
        default:
            return "null"
        }
    }
    
    var cpuHand: String {
        switch cpuMushikenNumber {
        case 1:
            return "cpu_hebi"
        case 2:
            return "cpu_kaeru"
        case 3:
            return "cpu_namekuji"
        default:
            return "null"
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            if userMushikenNumber == 0 {
                Image("mushiken")
                    .resizable()
                    .scaledToFit()
            } else {
                Image(cpuHand)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
                if result >= 0 {
                    if result == 0 {
                        Text("負け")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    } else if result == 1 {
                        Text("勝ち")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    } else {
                        Text("あいこ")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                }
                
                Image(userHand)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            }
            
            Spacer()
            
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
        }
    }
}

#Preview {
    MushikenView()
}
