//
//  ViewController.swift
//  FourthWork
//
//  Created by Andrey Novikov on 03.03.2022.
//

import UIKit

class Settings: UIViewController {
    
    
    @IBOutlet weak var language: UILabel!
    @IBOutlet weak var Theme: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let theme = UIColor(rgb: 0xDAFFF0)
        self.view.backgroundColor = theme
    }

    @IBAction func useLightTheme(_ sender: UISwitch) {
        let facts = storyboard?.instantiateViewController(identifier: "facts") as! Facts // Как же это должно работать
        
        if (sender.isOn == true){
        
            let lightTheme = UIColor(rgb: 0xDAFFF0)
            
            self.view.backgroundColor = lightTheme
            language.textColor = UIColor.black
            Theme.textColor = UIColor.black
            
            facts.setColor(lightTheme, UIColor.black)
            
        }else{
            
            let darkTheme = UIColor(rgb: 0x131313)
            let lightThemeForText = UIColor(rgb: 0xE0D0C2)
            
            self.view.backgroundColor = darkTheme
            language.textColor = lightThemeForText
            Theme.textColor = lightThemeForText
            
        }
    }
    
    @IBAction func useRussianLanguage(_ sender: UISwitch) {
        if (sender.isOn == true){
            
            language.text = "Использовать русский язык"
            Theme.text = "Использовать темную тему"
            
        }else{
            
            language.text = "Use Russian language in the app"
            Theme.text = "Use dark app theme"
            
        }
    }
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}

