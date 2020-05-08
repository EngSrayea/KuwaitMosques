//
//  MusicPlayer.swift
//  KuwaitMosques
//
//  Created by Eng. Norii on 5/9/20.
//  Copyright © 2020 EngSrayea. All rights reserved.
//

import Foundation
import AVFoundation

class MusicPlayerKandary {
static let kandary = MusicPlayerKandary()
var audioPlayer: AVAudioPlayer?

func startBackgroundMusic() {
    if let bundle = Bundle.main.path(forResource: "kandary", ofType: "mp3") {
        let backgroundMusic = NSURL(fileURLWithPath: bundle)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
            guard let audioPlayer = audioPlayer else { return }
            audioPlayer.numberOfLoops = 0
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            //audioPlayer.stop()
        } catch {
            print(error)
        }
    
}
}
}

