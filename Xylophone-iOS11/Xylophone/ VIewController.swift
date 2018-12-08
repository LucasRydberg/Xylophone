//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    

    // variables and classes
    var player : AVAudioPlayer!
    let arrayOfSounds = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func notePressed(_ sender: UIButton) {
        
        // get filename from array and run function to play
        playAudio(nameOfFile: arrayOfSounds[sender.tag - 1])
        
    }
    
    
    // plays the audio file
    func playAudio(nameOfFile : String){
        
        // set selected audio file as name for url
        let url = Bundle.main.url(forResource: nameOfFile, withExtension: "wav")!

        do {
            player = try AVAudioPlayer(contentsOf: url)
        } catch {
            print(error)
        }
        
        player.play()
        
    }
    
}
