import UIKit
import PlaygroundSupport

// Segunda classe - NavigationController
class SecondViewController: UIViewController {
    var imageName: String = ""
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
            Logo.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor, constant: -150),
            Logo.widthAnchor.constraint(equalToConstant: 600),
            Logo.heightAnchor.constraint(equalToConstant: 250),
            
            lb_sonic.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 700),
            lb_sonic.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor, constant: 150),
            lb_sonic.widthAnchor.constraint(equalToConstant: 550),
            
            Game1.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 700),
            Game1.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor, constant: -150),
            Game1.widthAnchor.constraint(equalToConstant: 600),
            Game1.heightAnchor.constraint(equalToConstant: 250),
            lb_vrtx.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 1400),
            lb_vrtx.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor, constant: 150),
            lb_vrtx.widthAnchor.constraint(equalToConstant: 550),
            
            Game2.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 1400),
            Game2.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor, constant: -150),
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
        self.view.backgroundColor = .blue
        
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
        
        let megaDrive = Button(image: #imageLiteral(resourceName: "IMG_0071.PNG"), tag: 1)
        let segaSaturn = Button(image: #imageLiteral(resourceName: "IMG_0076.PNG"), tag: 4)
        let dreamCast = Button(image: #imageLiteral(resourceName: "IMG_0083.PNG"), tag: 2)
        let masterSystem = Button(image: #imageLiteral(resourceName: "IMG_0064.PNG"), tag: 3)
        
        
        view.addSubview(megaDrive)
        view.addSubview(segaSaturn)
        view.addSubview(dreamCast)
        view.addSubview(masterSystem)
        
        // Layout
        NSLayoutConstraint.activate([
            megaDrive.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -150),
            megaDrive.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            megaDrive.widthAnchor.constraint(equalToConstant: 300),
            megaDrive.heightAnchor.constraint(equalToConstant: 200),
            
            segaSaturn.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 150),
            segaSaturn.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            segaSaturn.widthAnchor.constraint(equalToConstant: 300),
            segaSaturn.heightAnchor.constraint(equalToConstant: 200),
            
            dreamCast.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -150),
            dreamCast.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 180),
            dreamCast.widthAnchor.constraint(equalToConstant: 300),
            dreamCast.heightAnchor.constraint(equalToConstant: 200),
            masterSystem.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 150),
            masterSystem.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 180),
            masterSystem.widthAnchor.constraint(equalToConstant: 300),
            masterSystem.heightAnchor.constraint(equalToConstant: 200),
            
            ])
        
    }
    
    @objc func openWithNavigation(_ sender: UIButton){
        switch sender.tag {
        case 1:
            let newVC = SecondViewController()
            
            newVC.imageName = "IMG_0052.JPG"
            
            newVC.lb_Main = "::Sobre:: \nMega Drive (メガドライブ, Mega Doraibu?), conhecido como Sega Genesis na América do Norte, é um console de video game de 16 bits da Sega concorria diretamente com o Super Nintendo Entertainment System. O console fez grande sucesso na década de 1990."
            
            newVC.lb_game1 = " :: Jogo Indicado 1# :: \n Em 1995 a Sega lança uma coletânea com os três primeiros jogos do Sonic para Mega Drive. Ou seja: Sonic the Hedgehog, Sonic the Hedgehog 2 e Dr. Robotnik's Mean Bean Machine."
            
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
            
            newVC.lb_game2 = " :: Jogo Indicado 2# :: \n Ikaruga é um jogo eletrônico de shoot 'em up desenvolvido pela Treasure. É o sucessor espiritual de Radiant Silvergun e foi originalmente lançado para os arcades Japoneses e para o Dreamcast em Dezembro de 2001. "
            
            newVC.logo.setImage(#imageLiteral(resourceName: "IMG_0062.PNG"), for: .normal)
            newVC.logo.isUserInteractionEnabled = false 
            
            newVC.game1.setImage(#imageLiteral(resourceName: "IMG_0063.PNG"), for: .normal)
            newVC.game1.isUserInteractionEnabled = false 
            
            newVC.game2.setImage(#imageLiteral(resourceName: "IMG_0059.JPG"), for: .normal)
            newVC.game2.isUserInteractionEnabled = false 
            
            self.navigationController?.pushViewController(newVC, animated: true)
            
        case 3:
            let newVC = SecondViewController()
            
            newVC.imageName = "Imagem JPEG-4A1D8BE9E478-1.jpeg"
            
            newVC.lb_Main = "::Sobre:: \n Lançado inicialmente no Japão em 1986, com o nome Sega Mark III, ele enfrentou grandes dificuldades devido à forte concorrência do NES da Nintendo.O Master System original aceita jogos em cartuchos e cartões. O tamanho máximo de um jogo em cartão é de 32KBits, enquanto o maior jogo lançado em cartucho possui 8MBits."
            
            newVC.lb_game1 = " :: Jogo Indicado 1# :: \n Alex Kidd in Miracle World foi o primeiro jogo da série Alex Kidd, lançado em 1986 para o console Sega Master System. Se tornou muito popular entre os jogos para Master System, sendo um dos motivos que o levaram a vir na memória do console."
            
            newVC.lb_game2 = " :: Jogo Indicado 2# :: \n Então em 1992 o Master System foi agraciado com um dos melhores “clones” já vistos de um jogo da famosa série vampiresca da Konami: Master of Darkness. Este jogo para muitos, pode até ser considerado uma cópia sem vergonha da série Castlevania, mas os donos do ótimo console Master System enfim puderam ter, mesmo que não de forma oficial, um jogo que para ser mais “Castlevania” do que era, só faltou ser feito pela própria Konami! "
            
            newVC.logo.setImage(#imageLiteral(resourceName: "IMG_0065.PNG"), for: .normal)
            newVC.logo.isUserInteractionEnabled = false 
            
            newVC.game1.setImage(#imageLiteral(resourceName: "IMG_0068.JPG"), for: .normal)
            newVC.game1.isUserInteractionEnabled = false 
            
            newVC.game2.setImage(#imageLiteral(resourceName: "IMG_0069.PNG"), for: .normal)
            newVC.game2.isUserInteractionEnabled = false 
            
            self.navigationController?.pushViewController(newVC, animated: true)
        case 4:
            let newVC = SecondViewController()
            
            newVC.imageName = "IMG_0079.JPG"
            
            newVC.lb_Main = "::Sobre:: \n O Sega Saturn é um console de videogame de 32 bits lançado primeiramente pela Sega em 22 de Novembro de 1994 no Japão, em 11 de Maio de 1995 na América do Norte e em 8 de Julho na Europa e Austrália. O console foi descontinuado na Europa e Austrália em 1998, em Abril de 1999 na América do Norte e em 23 de Dezembro de 2000 no Japão."
            
            newVC.lb_game1 = " :: Jogo Indicado 1# :: \n Nights into Dreams... (ナイツ,, Naitsu?) (registrado como - NiGHTS into Dreams...) é um jogo eletrônico lançado pela Sega em 1996 para o console Sega Saturn. O jogo mostra duas crianças entrando num mundo de sonho, onde elas são ajudadas pelo personagem principal, NiGHTS. NiGHTS foi desenvolvido pela Sonic Team, com Yuji Naka como produtor e líder de programação, e Naoto Oshima como diretor e designer de personagem. A intenção dos desenvolvedores era fazer a sensação de voar o elemento central da jogabilidade."
            
            newVC.lb_game2 = " :: Jogo Indicado 2# :: \n Shinobi X é uma espécie de um reboot da série, contando a história de um novo ninja chamado Sho e é também um jogo que utiliza actores reais em cutscenes e mesmo no próprio jogo, um pouco como foi feito nos primeiros Mortal Kombat."
            
            newVC.logo.setImage(#imageLiteral(resourceName: "IMG_0077.PNG"), for: .normal)
            newVC.logo.isUserInteractionEnabled = false 
            
            newVC.game1.setImage(#imageLiteral(resourceName: "IMG_0081.JPG"), for: .normal)
            newVC.game1.isUserInteractionEnabled = false 
            
            newVC.game2.setImage(#imageLiteral(resourceName: "IMG_0082.JPG"), for: .normal)
            newVC.game2.isUserInteractionEnabled = false 
            
            self.navigationController?.pushViewController(newVC, animated: true)
        default:
            break 
        }
        
    }
    
}

let firstViewController = FirstViewController()

PlaygroundPage.current.liveView = UINavigationController(rootViewController: firstViewController)



