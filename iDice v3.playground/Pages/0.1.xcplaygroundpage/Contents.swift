import UIKit
import PlaygroundSupport
import Foundation

// Peter, Stefan, Luiz

class mainView: UIViewController{
    
    var display = UILabel()
    var rollDice = true
    
    var d_06 = UIButton()
    var clear = UIButton()
    var roll = UIButton()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .green
        self.view = view
        
        display.translatesAutoresizingMaskIntoConstraints = false
        display.backgroundColor = .white
        display.text = ""
        display.layer.masksToBounds = true
        display.layer.cornerRadius = 10
        display.layer.borderWidth = 1
        display.textAlignment = NSTextAlignment.right     
        display.font = UIFont(name: "Arial", size:40)
        self.view.addSubview(display)
        
        func Number(tag: Int, title: String) -> UIButton { 
            
            let NUM = UIButton()
            NUM.tag = tag
            NUM.backgroundColor = UIColor.white
            NUM.layer.cornerRadius = 35
            NUM.setTitle(title, for: [])
            NUM.setTitleColor(UIColor.darkGray, for: UIControlState.normal)
            NUM.setTitleColor(UIColor.cyan, for: UIControlState.highlighted)
            NUM.titleLabel!.font = UIFont(name: "Arial", size: 25)
            NUM.addTarget(self, action: #selector(act(_:)), for: .touchUpInside);  
            NUM.translatesAutoresizingMaskIntoConstraints = false
            return NUM
        }
        
        func X(tag: Int, title: String) -> UIButton { 
            
            let sOpr = UIButton()
            sOpr.tag = tag
            sOpr.backgroundColor = UIColor.red
            sOpr.layer.cornerRadius = 25
            sOpr.setTitle(title, for: [])
            sOpr.setTitleColor(UIColor.clear, for: UIControlState.highlighted)
            sOpr.titleLabel!.font = UIFont(name: "Arial", size: 40)
            sOpr.addTarget(self, action: #selector(act(_:)), for: .touchUpInside);  
            sOpr.translatesAutoresizingMaskIntoConstraints = false
            return sOpr
        }
        
        d_06 = Number(tag: 1, title: "Dado.")
        self.view.addSubview(d_06)
        
        clear = X(tag: 11, title: "Clear")
        self.view.addSubview(clear)
        
        
        NSLayoutConstraint.activate([
            
            display.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            display.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant: -20),
            display.widthAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.16),
            display.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.16),
            
            d_06.topAnchor.constraint(equalTo: display.bottomAnchor, constant: 20),
            d_06.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            d_06.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),
            d_06.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1),
            
            clear.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            clear.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            clear.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.20),
            clear.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.20)
            
            ])
        
        
        
        
    }
    
    @IBAction func act(_ sender: UIButton){
        switch sender.tag {
        case 1:
            var randomNumber_6 = Int(arc4random_uniform(6) + 1)
            display.text = ""
            display.text = " " + String(randomNumber_6) + "  "
            
        case 11:
            display.text = ""
        default:
            break
        }
        
    }
    
}

PlaygroundPage.current.liveView = mainView()

