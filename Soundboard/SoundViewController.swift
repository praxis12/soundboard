//
//  SoundViewController.swift
//  Soundboard
//
//  Created by Josh Arntz on 4/13/17.
//  Copyright © 2017 Mr. Bear. All rights reserved.
//

import UIKit
import AVFoundation

class SoundViewController: UIViewController {
    
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    var audioRecorder : AVAudioRecorder?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpRecorder()
        
        
    }
    
    
    func setUpRecorder() {
        
        //Create an audio session
        do {
            let session = AVAudioSession.sharedInstance()
            try session.setCategory(AVAudioSessionCategoryPlayAndRecord)
            try session.overrideOutputAudioPort(.speaker)
            try session.setActive(true)
            
            
            //Create URL for the audio file
            
            //Create Settings for the audio recorder
            
            //Create AudioRecorder Object
            audioRecorder = AVAudioRecorder(url: , settings: <#T##[String : Any]#>)
        } catch let error as NSError {
            print(error)
        } catch {}
    }
    
    @IBAction func playTapped(_ sender: Any) {
    }
    
    
    @IBAction func addButtonTapped(_ sender: Any) {
    }
    
    @IBAction func recordTapped(_ sender: Any) {
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
