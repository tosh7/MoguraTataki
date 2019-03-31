//
//  GameSceneViewController.swift
//  MoguraTataki
//
//  Created by Satoshi Komatsu on 2019/03/23.
//  Copyright © 2019 Satoshi Komatsu. All rights reserved.
//

import UIKit

final class GameSceneViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var hole1Button: UIButton!
    @IBOutlet weak var hole2Button: UIButton!
    @IBOutlet weak var hole3Button: UIButton!
    @IBOutlet weak var hole4Button: UIButton!
    @IBOutlet weak var hole5Button: UIButton!
    @IBOutlet weak var hole6Button: UIButton!
    @IBOutlet weak var hole7Button: UIButton!
    @IBOutlet weak var hole8Button: UIButton!
    @IBOutlet weak var hole9Button: UIButton!
    
    var timerCount = 60
    var score = 0
    var timer = Timer()
    var moguraSpot: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTimer()
    }
    
    @IBAction func hole1(_ sender: Any) {
        if moguraSpot == 1 {
            score += 1
            hole1Button.setImage(UIImage(named:("pikopiko_hummer.png")), for: .normal)
            scoreLabel.text = String(score)
        }
    }
    
    @IBAction func hole2(_ sender: Any) {
        if moguraSpot == 2 {
            score += 1
            hole2Button.setImage(UIImage(named:("pikopiko_hummer.png")), for: .normal)
            scoreLabel.text = String(score)
        }
    }
    
    @IBAction func hole3(_ sender: Any) {
        if moguraSpot == 3 {
            score += 1
            hole3Button.setImage(UIImage(named:("pikopiko_hummer.png")), for: .normal)
            scoreLabel.text = String(score)
        }
    }
    
    @IBAction func hole4(_ sender: Any) {
        if moguraSpot == 4 {
            score += 1
            hole4Button.setImage(UIImage(named:("pikopiko_hummer.png")), for: .normal)
            scoreLabel.text = String(score)
        }
    }
    
    @IBAction func hole5(_ sender: Any) {
        if moguraSpot == 5 {
            score += 1
            hole5Button.setImage(UIImage(named:("pikopiko_hummer.png")), for: .normal)
            scoreLabel.text = String(score)
        }
    }
    
    @IBAction func hole6(_ sender: Any) {
        if moguraSpot == 6 {
            score += 1
            hole6Button.setImage(UIImage(named:("pikopiko_hummer.png")), for: .normal)
            scoreLabel.text = String(score)
        }
    }
    
    @IBAction func hole7(_ sender: Any) {
        if moguraSpot == 7 {
            score += 1
            hole7Button.setImage(UIImage(named:("pikopiko_hummer.png")), for: .normal)
            scoreLabel.text = String(score)
        }
    }
    
    @IBAction func hole8(_ sender: Any) {
        if moguraSpot == 8 {
            score += 1
            hole8Button.setImage(UIImage(named:("pikopiko_hummer.png")), for: .normal)
            scoreLabel.text = String(score)
        }
    }
    
    @IBAction func hole9(_ sender: Any) {
        if moguraSpot == 9 {
            score += 1
            hole9Button.setImage(UIImage(named:("pikopiko_hummer.png")), for: .normal)
            scoreLabel.text = String(score)
        }
    }
}

extension GameSceneViewController {
    
    func setUpTimer() {
        timer = Timer.scheduledTimer (
            timeInterval: 1.0,
            target: self,
            selector: #selector(self.countDown),
            userInfo: nil,
            repeats: true
        )
    }
    
    @objc func countDown() {
        timerCount -= 1
        timerLabel.text = String(timerCount)
        moguraSpot = Int.random(in: 1...9)
        setUpMogura()
        
        if timerCount <= 0 {
            timer.invalidate()
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    func setUpMogura() {
        resetMogura()
        switch moguraSpot {
        case 1:
            hole1Button.setImage(UIImage(named:("mogura2.png")), for: .normal)
            break
        case 2:
            hole2Button.setImage(UIImage(named:("mogura2.png")), for: .normal)
            break
        case 3:
            hole3Button.setImage(UIImage(named:("mogura2.png")), for: .normal)
            break
        case 4:
            hole4Button.setImage(UIImage(named:("mogura2.png")), for: .normal)
            break
        case 5:
            hole5Button.setImage(UIImage(named:("mogura2.png")), for: .normal)
            break
        case 6:
            hole6Button.setImage(UIImage(named:("mogura2.png")), for: .normal)
            break
        case 7:
            hole7Button.setImage(UIImage(named:("mogura2.png")), for: .normal)
            break
        case 8:
            hole8Button.setImage(UIImage(named:("mogura2.png")), for: .normal)
            break
        case 9:
            hole9Button.setImage(UIImage(named:("mogura2.png")), for: .normal)
            break
        default:
            break
        }
    }
    
    func resetMogura() {
        hole1Button.setImage(UIImage(named:("hole.png")), for: .normal)
        hole2Button.setImage(UIImage(named:("hole.png")), for: .normal)
        hole3Button.setImage(UIImage(named:("hole.png")), for: .normal)
        hole4Button.setImage(UIImage(named:("hole.png")), for: .normal)
        hole5Button.setImage(UIImage(named:("hole.png")), for: .normal)
        hole6Button.setImage(UIImage(named:("hole.png")), for: .normal)
        hole7Button.setImage(UIImage(named:("hole.png")), for: .normal)
        hole8Button.setImage(UIImage(named:("hole.png")), for: .normal)
        hole9Button.setImage(UIImage(named:("hole.png")), for: .normal)
    }
}
