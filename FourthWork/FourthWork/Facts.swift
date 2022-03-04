//
//  Facts.swift
//  FourthWork
//
//  Created by Andrey Novikov on 03.03.2022.
//

import UIKit
import AVKit

class Facts: UIViewController {
    
    @IBOutlet weak var first: UILabel!
    @IBOutlet weak var firstFact: UILabel!
    @IBOutlet weak var second: UILabel!
    @IBOutlet weak var secondFact: UILabel!
    @IBOutlet weak var third: UILabel!
    @IBOutlet weak var thirdFactOne: UILabel!
    @IBOutlet weak var thirdFactTwo: UILabel!
    @IBOutlet weak var Steve: UILabel!
    @IBOutlet weak var facts: UILabel!
    
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var firstImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lightTheme = UIColor(rgb: 0xDAFFF0)
        self.view.backgroundColor = lightTheme
        
        if let url = URL(string: "https://images2.minutemediacdn.com/image/upload/c_fit,f_auto,fl_lossy,q_auto,w_728/v1614267185/shape/mentalfloss/642714-gettyimages-80823058.jpg"){
            if let data = try? Data(contentsOf: url){
                firstImage.image = UIImage(data: data)
            }
        }
        
        if let url = URL(string: "https://images2.minutemediacdn.com/image/upload/c_fit,f_auto,fl_lossy,q_auto,w_728/v1614267392/shape/mentalfloss/642714-gettyimages-1411772.jpg?itok=5cFalm_x"){
            if let data = try? Data(contentsOf: url){
                secondImage.image = UIImage(data: data)
            }
        }
    }
    
    @IBAction func player(_ sender: UIButton) {
        if let url = URL(string: "https://www.youtube.com/watch?v=D4pIe35nTUg"){
            let avPlayer = AVPlayer(url: url)
            
            let playerViewController = AVPlayerViewController()
            playerViewController.player = avPlayer
            
            present(playerViewController, animated: true){
                avPlayer.play()
            }
        }
    }
    
    func setColor(_ colorTheme:UIColor,_ colorText:UIColor){
        view.backgroundColor = colorTheme
        self.facts.textColor = colorText
        self.Steve.textColor = colorText
        self.first.textColor = colorText
        self.firstFact.textColor = colorText
        self.second.textColor = colorText
        self.secondFact.textColor = colorText
        self.third.textColor = colorText
        self.thirdFactOne.textColor = colorText
        self.thirdFactTwo.textColor = colorText
    }

}
