import UIKit
import PlaygroundSupport
import Foundation

// Codigo do Stefan
// Peter, Stefan, Luiz

class mainView: UIViewController{
    
    var titulo = UILabel()
    
    var display = UILabel()
    var display2 = UILabel()
    var rollDice = true
    
    let items = ["4", "6", "8", "10", "12", "20", "100"]
    var segments : UISegmentedControl!
    var segments2 :  UISegmentedControl!
    
    var d_06 = UIButton()
    var dado2 = UIButton()
    var clear = UIButton()
    var rollAll = UIButton()
    
    override func viewDidLoad() {
    
        let view = UIView()
        view.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "IMG_0048.JPG"))
        
        titulo.text = "iDice"
        titulo.textAlignment = NSTextAlignment.center     
        titulo.font = UIFont(name: "Arial", size:50)
        titulo.textColor = .green
        
        self.view = view
        
        segments = UISegmentedControl(items: items)
        segments.selectedSegmentIndex = 1
        segments.addTarget(self, action: #selector(updateDice), for: .valueChanged)
        segments.translatesAutoresizingMaskIntoConstraints = false
        segments.tintColor = .green
        view.addSubview(segments)
        
        segments2 = UISegmentedControl(items: items)
        segments2.selectedSegmentIndex = 5
        segments2.addTarget(self, action: #selector(updateDice2), for: .valueChanged)
        segments2.translatesAutoresizingMaskIntoConstraints = false
        segments2.tintColor = .green
        view.addSubview(segments)
        view.addSubview(segments2)
        
        func Display(Tag: Int, title: String) -> UILabel { 
            var RonaldinhoSoccer97 = UILabel()
            
            RonaldinhoSoccer97.tag = Tag
            RonaldinhoSoccer97.backgroundColor = .white
            RonaldinhoSoccer97.text = title
            RonaldinhoSoccer97.layer.masksToBounds = true
            RonaldinhoSoccer97.layer.cornerRadius = 12
            RonaldinhoSoccer97.layer.borderWidth = 1.5
            RonaldinhoSoccer97.textAlignment = NSTextAlignment.center     
            RonaldinhoSoccer97.font = UIFont(name: "Arial", size:35)
            RonaldinhoSoccer97.translatesAutoresizingMaskIntoConstraints = false
            return RonaldinhoSoccer97
            
        }
        
        func Number(tag: Int, title: String) -> UIButton { 
            
            let NUM = UIButton()
            NUM.tag = tag
            NUM.backgroundColor = UIColor.brown
            NUM.layer.cornerRadius = 25
            NUM.setTitle(title, for: [])
            NUM.setTitleColor(UIColor.cyan, for: UIControlState.normal)
            NUM.setTitleColor(UIColor.darkGray, for: UIControlState.highlighted)
            NUM.titleLabel!.font = UIFont(name: "Verdana", size: 20)
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
        self.view.addSubview(titulo)
        titulo.translatesAutoresizingMaskIntoConstraints = false
        
        display = Display(Tag: 21, title: "")
        self.view.addSubview(display)
        display2 = Display(Tag: 22, title: "")
        self.view.addSubview(display2)
        
        d_06 = Number(tag: 1, title: "Roll!")
        self.view.addSubview(d_06)
        dado2 = Number(tag: 2, title: "Roll!")
        self.view.addSubview(dado2) 
        rollAll = Number(tag: 3, title: "Roll All!")
        self.view.addSubview(rollAll)
        
        
        clear = X(tag: 11, title: "Clear")
        self.view.addSubview(clear)
        
        
        NSLayoutConstraint.activate([
            segments.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            segments.bottomAnchor.constraint(equalTo: display.topAnchor, constant: -5),
            segments2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            segments2.bottomAnchor.constraint(equalTo: display2.topAnchor, constant: -5),
            
            titulo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            titulo.topAnchor.constraint(equalTo: view.topAnchor , constant: 13),
            display.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            display.centerYAnchor.constraint(equalTo: view.centerYAnchor , constant: -130),
            display.widthAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.22),
            display.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.22),
            display2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            display2.centerYAnchor.constraint(equalTo: view.centerYAnchor , constant: 95),
            display2.widthAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.22),
            display2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.22),
            d_06.trailingAnchor.constraint(equalTo: display.leadingAnchor, constant: -25),
            d_06.topAnchor.constraint(equalTo: display.topAnchor, constant: 50),
            d_06.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            d_06.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.09),
            
            dado2.trailingAnchor.constraint(equalTo: display2.leadingAnchor, constant: -25),
            dado2.topAnchor.constraint(equalTo: display2.topAnchor, constant: 50),
            dado2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            dado2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.09),
            clear.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            clear.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -155 ),
            clear.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.40),
            clear.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15),
            
            rollAll.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            rollAll.leadingAnchor.constraint(equalTo: clear.trailingAnchor, constant: 35),
            rollAll.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.40),
            rollAll.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15)
            
            ])
    
    }
    @objc func updateDice() -> String { 
        let idx = segments.selectedSegmentIndex
        let current = (idx == UISegmentedControlNoSegment) ? "none" : items[idx]
        return current
    }
    @objc func updateDice2() -> String { 
        let idx = segments2.selectedSegmentIndex
        let current2 = (idx == UISegmentedControlNoSegment) ? "none" : items[idx]
        return current2
    }
    
    @IBAction func act(_ sender: UIButton){
        switch sender.tag {
        case 1:
            var indexString = updateDice()
            var indexInt = UInt32(indexString)
            var randomNumberDice = Int(arc4random_uniform(indexInt!) + 1)
            display.text = ""
            display.text = "•  " + String(randomNumberDice) + "  •"
            return
        case 2:
            var indexString2 = updateDice2()
            var indexInt2 = UInt32(indexString2)
            var randomNumberDice2 = Int(arc4random_uniform(indexInt2!) + 1)
            display2.text = ""
            display2.text = "•  " + String(randomNumberDice2) + "  •"
            return
        case 3:
            var indexString = updateDice()
            var indexInt = UInt32(indexString)
            var randomNumberDice = Int(arc4random_uniform(indexInt!) + 1)
            display.text = ""
            display.text = "•  " + String(randomNumberDice) + "  •"
            
            var indexString2 = updateDice2()
            var indexInt2 = UInt32(indexString2)
            var randomNumberDice2 = Int(arc4random_uniform(indexInt2!) + 1)
            display2.text = ""
            display2.text = "•  " + String(randomNumberDice2) + "  •"
            break
        case 11:
            display.text = ""
            
            display2.text = ""
        default:
            break
        }
        
    }
    
}

PlaygroundPage.current.liveView = mainView()
