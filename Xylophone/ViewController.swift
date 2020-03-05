

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func KeyPress(_ sender: UIButton) {
        sender.alpha = 0.5
        let keyPressOption = sender.titleLabel!.text!
        playSound(keyPressOption: keyPressOption)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            sender.alpha = 1.0
        }
    }
    
    func playSound(keyPressOption: String) {
        let url = Bundle.main.url(forResource: keyPressOption, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

}

