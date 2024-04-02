import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack {
                VStack {
                    Image(.title)
                        .resizable()
                        .scaledToFit()
                }
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        NavigationLink {
                            MushikenView()
                        } label: {
                            Text("虫拳をなす！")
                                .font(.title)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
