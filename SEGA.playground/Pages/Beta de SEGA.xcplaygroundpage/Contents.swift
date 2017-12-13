import UIKit
import PlaygroundSupport

// Segunda classe - NavigationController
class SecondViewController: UIViewController {
    var imageName: String = "";
    let logo = UIButton()
    let game1 = UIButton()
    let game2 = UIButton()
    
    var lb_Main: String?
    var lb_game1: String?
    var lb_game2: String?
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        
        imageView.frame = CGRect(x: 0, y: 0, width: 2100, height: 750)

        let scrollView = UIScrollView()
        scrollView.contentSize = imageView.frame.size
        scrollView.isPagingEnabled = true
        scrollView.addSubview(imageView)
        scrollView.flashScrollIndicators()
        scrollView.backgroundColor = .gray
        
        let Logo = logo
        
        let Game1 = game1
        let Game2 = game2
        
        func MD_Label(title: String) -> UILabel { 
            let label = UILabel()
            label.backgroundColor = UIColor.white.withAlphaComponent(0.658)
            label.lineBreakMode = NSLineBreakMode.byWordWrapping
            label.numberOfLines = 8
            label.textAlignment = NSTextAlignment.justified
            label.text = title
            label.textColor = #colorLiteral(red: 0.0901960805058479, green: 0.0, blue: 0.301960796117783, alpha: 1.0)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }
        
        var lb_main = MD_Label(title: lb_Main!)
        var lb_sonic = MD_Label(title: lb_game1!)
        var lb_vrtx = MD_Label(title: lb_game2!)
        
        view.addSubview(scrollView)
        scrollView.addSubview(lb_main)
        scrollView.addSubview(lb_sonic)
        scrollView.addSubview(lb_vrtx)
        scrollView.addSubview(Logo)
        scrollView.addSubview(Game1)
        scrollView.addSubview(Game2)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        Logo.translatesAutoresizingMaskIntoConstraints = false
        Game1.translatesAutoresizingMaskIntoConstraints = false
        Game2.translatesAutoresizingMaskIntoConstraints = false
        
        // Layout
        NSLayoutConstraint.activate([
            scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            scrollView.widthAnchor.constraint(equalToConstant: 700),
            scrollView.heightAnchor.constraint(equalToConstant: 800),
            
            lb_main.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0),
            lb_main.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor, constant: 150),
            lb_main.widthAnchor.constraint(equalToConstant: 550),
            
            Logo.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            Logo.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor, constant: -170),
            Logo.widthAnchor.constraint(equalToConstant: 600),
            Logo.heightAnchor.constraint(equalToConstant: 250),
            
            lb_sonic.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 700),
            lb_sonic.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor, constant: 150),
            lb_sonic.widthAnchor.constraint(equalToConstant: 550),
            
            Game1.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 700),
            Game1.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor, constant: -170),
            Game1.widthAnchor.constraint(equalToConstant: 600),
            Game1.heightAnchor.constraint(equalToConstant: 250),
            lb_vrtx.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 1400),
            lb_vrtx.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor, constant: 150),
            lb_vrtx.widthAnchor.constraint(equalToConstant: 550),
            
            Game2.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 1400),
            Game2.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor, constant: -170),
            Game2.widthAnchor.constraint(equalToConstant: 600),
            Game2.heightAnchor.constraint(equalToConstant: 250),
            ])
        
    }
}

// Classe principal
class FirstViewController : UIViewController {
    
    override func loadView() {
        super.loadView()
        // UI
        self.view.backgroundColor = .white
        
        func Button(image: UIImage, tag: Int) -> UIButton{  
            let button1 = UIButton()
            button1.tag = tag
            button1.setTitle(" MEGA DRIVER", for: .normal)
            button1.setImage(image, for: UIControlState())
            button1.addTarget(self, action: #selector(openWithNavigation), for: .touchUpInside)
            
            // Layout
            button1.translatesAutoresizingMaskIntoConstraints = false
            
            return button1
        }
        
        let megaDrive = Button(image: #imageLiteral(resourceName: "IMG_0049.JPG"), tag: 1)
        
        view.addSubview(megaDrive)
        
        let dreamCast = Button(image: #imageLiteral(resourceName: "IMG_0055.PNG"), tag: 2)
        
        view.addSubview(megaDrive)
        view.addSubview(dreamCast)
        
        
        // Layout
        NSLayoutConstraint.activate([
            megaDrive.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            megaDrive.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60),
            megaDrive.widthAnchor.constraint(equalToConstant: 400),
            megaDrive.heightAnchor.constraint(equalToConstant: 250),
            dreamCast.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -70),
            dreamCast.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 130),
            dreamCast.widthAnchor.constraint(equalToConstant: 200),
            dreamCast.heightAnchor.constraint(equalToConstant: 125),
            
            ])
        
    }
    
    @objc func openWithNavigation(_ sender: UIButton){
        switch sender.tag {
        case 1:
            let newVC = SecondViewController()
            
            newVC.imageName = "IMG_0052.JPG"
            
            newVC.lb_Main = "::Sobre:: \nMega Drive (メガドライブ, Mega Doraibu?), conhecido como Sega Genesis na América do Norte, é um console de video game de 16 bits da Sega concorria diretamente com o Super Nintendo Entertainment System. O console fez grande sucesso na década de 1990."
            
            newVC.lb_game1 = " :: Jogo Indicado 1# :: \n Em 1995 a Sega lança uma coletânea com os três primeiros jogos do Sonic para Mega Drive. Ou seja: Sonic the Hedgehog, Sonic the Hedgehog 2 e Dr. Robotnik's Mean Bean Machine. "
            newVC.lb_game2 = " :: Jogo Indicado 2# :: \n Verytex (ヴェリテックス) é um shoot-'em-up (jogo de nave) da Asmik lançado em 1991 para Sega Mega Drive  exclusivamente no Japão. Uma Excelente pedida para quem gosta de jogos arcades desafiantes. "
            
            newVC.logo.setImage(#imageLiteral(resourceName: "IMG_0061.JPG"), for: .normal)
            newVC.logo.isUserInteractionEnabled = false 
            
            newVC.game1.setImage(#imageLiteral(resourceName: "IMG_0053.GIF"), for: .normal)
            newVC.game1.isUserInteractionEnabled = false 
            
            newVC.game2.setImage(#imageLiteral(resourceName: "IMG_0054.JPG"), for: .normal)
            newVC.game2.isUserInteractionEnabled = false 
            
            self.navigationController?.pushViewController(newVC, animated: true)
        case 2:
            let newVC = SecondViewController()
            
            newVC.imageName = "IMG_0058.JPG"
            
            newVC.lb_Main = "::Sobre:: \n Lançado inicialmente em 1998, O Dreamcast (em japonês: ドリームキャスト; os codinomes foram Blackbelt, Dural e Katana durante o seu desenvolvimento) foi o último console de videogames da Sega e o sucessor do Sega Saturn."
            
            newVC.lb_game1 = " :: Jogo Indicado 1# :: \n Crazy Taxi é um jogo de corrida arcade de mundo aberto criado originalmente para fliperamas pela SEGA no sistema Sega NAOMI em 1999 e possui uma excelente versão para Dreamcast."
            newVC.lb_game2 = " :: Jogo Indicado 2# :: \n Verytex (ヴェリテックス) é um shoot-'em-up (jogo de nave) da Asmik lançado em 1991 para Sega Mega Drive  exclusivamente no Japão. Uma Excelente pedida para quem gosta de jogos arcades desafiantes. "
            
            newVC.logo.setImage(#imageLiteral(resourceName: "IMG_0062.PNG"), for: .normal)
            newVC.logo.isUserInteractionEnabled = false 
            
            newVC.game1.setImage(#imageLiteral(resourceName: "IMG_0063.PNG"), for: .normal)
            newVC.game1.isUserInteractionEnabled = false 
            
            newVC.game2.setImage(#imageLiteral(resourceName: "IMG_0059.JPG"), for: .normal)
            newVC.game2.isUserInteractionEnabled = false 
            
            self.navigationController?.pushViewController(newVC, animated: true)
            
        default:
            break 
        }
        
    }
    
}

let firstViewController = FirstViewController()

PlaygroundPage.current.liveView = UINavigationController(rootViewController: firstViewController)



