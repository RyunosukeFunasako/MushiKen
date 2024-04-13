import SwiftUI
import AVFoundation
import UIKit

// BGMと効果音を再生するクラス
class SoundPlayer: NSObject {
    // BGMの音源データを読み込み
    let bgmData = NSDataAsset(name: "PlayfulRivals")!.data
    
    // BGM用プレイヤーの変数
    var bgmPlayer: AVAudioPlayer!
    
    // BGMを再生する関数
    func playBGM() {
        do {
            bgmPlayer = try AVAudioPlayer(data: bgmData)
            bgmPlayer.numberOfLoops = -1  // BGMを無限にループさせる
            bgmPlayer.play()
        } catch {
            print("BGMでエラーが発生しました！")
        }
    }
}

struct ContentView: View {
    // SoundPlayerのインスタンスを作成
    let soundPlayer = SoundPlayer()
    
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
                            Text("虫拳をはじめる！")
                                .font(.title)
                        }
                    }
                }
            }
        }
        .onAppear {
            soundPlayer.playBGM()
        }
    }
}

#Preview {
    ContentView()
}
