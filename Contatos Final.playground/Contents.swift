//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

public var namesArray = ["Fernando Pessoa", "Bruna Marquezine", "Camila Pitanga", "Renato Russo", "Lucious Ale","Gustavo Borges","Dino da Silva Sauro","Kurt Kobain","Zelda Melo","Olivia Palito","Derci Gonçalves","Astolfo Rogéria","Œœź Œœ","Billy Idol", "Mario Bros","Tina Tunner","Zezé Polessa da Silva","Irineu Nãosabenemeu","Jeremias José do Nascimento"]

namesArray.sort { $0 <= $1 }

public var contatos : [(fullNome: String, primerNome :String, sobrNome: String, Telefone: String, email: String)] = Array()

for i in 0 ..< namesArray.count {
    
    let name = namesArray[i]
    let fullName    = name
    let fullNameArr = fullName.components(separatedBy: " ")
    let justName  = fullNameArr[0]
    let surname = fullNameArr[fullNameArr.count-1]
    let string = fullNameArr[0].uppercased()
    let Email = String(namesArray[i].characters.suffix(4)) + "_swift@playground.com.usa"
    let foneInter = (i+1)*1000000 + i*100000 + 2*i*100
    let fone = String(foneInter)
    let newContato = (fullNome: name, primerNome :justName, sobrNome: surname, Telefone: fone, email: Email)
    contatos.append(newContato)
}

public var sections : [(index: Int, length :Int, title: String )] = Array()

class SecondViewController: UIViewController {
    let foto = UIButton()
    
    var lb_FullNome: String?
    var lb_FonNome: String?
    var lb_SurNome: String?
    var lb_Fone: String?
    var lb_Mail: String?
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = #colorLiteral(red: 0.803921580314636, green: 0.803921580314636, blue: 0.803921580314636, alpha: 1.0)
        
        func Contact_Label(title: String) -> UILabel {
            let label = UILabel()
            label.backgroundColor = UIColor.white.withAlphaComponent(0.669)
            label.lineBreakMode = NSLineBreakMode.byWordWrapping
            label.numberOfLines = 8
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 8
            label.layer.borderWidth = 0.8
            label.textAlignment = NSTextAlignment.center
            label.text = title
            label.textColor = #colorLiteral(red: 0.0901960805058479, green: 0.0, blue: 0.301960796117783, alpha: 1.0)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }
        
        func descricaoLabel(tipo: String) -> UILabel {
            let label = UILabel()
            label.backgroundColor = UIColor.white.withAlphaComponent(0.669)
            label.lineBreakMode = NSLineBreakMode.byWordWrapping
            label.layer.masksToBounds = true
            label.textAlignment = NSTextAlignment.center
            label.text = tipo
            label.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
            label.backgroundColor = #colorLiteral(red: 0.803921580314636, green: 0.803921580314636, blue: 0.803921580314636, alpha: 1.0)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }
        
        let image = foto
        let labelNome = Contact_Label(title: lb_FullNome!)
        let labelSurNome = Contact_Label(title: lb_SurNome!)
        let labelFone = Contact_Label(title: lb_Fone!)
        let labelMail = Contact_Label(title: lb_Mail!)
        
        let descNome = descricaoLabel(tipo: "Nome: ")
        _ = descricaoLabel(tipo: "Nome Fonético: ")
        let descSurNome = descricaoLabel(tipo: "Sobrenome: ")
        let descTel = descricaoLabel(tipo: "Telefone: ")
        let desEmail = descricaoLabel(tipo: "E-mail ")
        
        view.addSubview(image)
        
        view.addSubview(labelNome)
        view.addSubview(labelSurNome)
        view.addSubview(labelFone)
        view.addSubview(labelMail)
        
        view.addSubview(descNome)
        view.addSubview(descSurNome)
        view.addSubview(descTel)
        view.addSubview(desEmail)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        
        // Layout
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -120),
            image.widthAnchor.constraint(equalToConstant: 150),
            image.heightAnchor.constraint(equalToConstant: 125),
            
            labelNome.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelNome.widthAnchor.constraint(equalToConstant: 250),
            labelNome.heightAnchor.constraint(equalToConstant: 30),
            labelNome.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            labelSurNome.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelSurNome.widthAnchor.constraint(equalToConstant: 110),
            labelSurNome.heightAnchor.constraint(equalToConstant: 30),
            labelSurNome.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 35),
            
            labelFone.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelFone.widthAnchor.constraint(equalToConstant: 250),
            labelFone.heightAnchor.constraint(equalToConstant: 30),
            labelFone.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant:85),
            labelMail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelMail.widthAnchor.constraint(equalToConstant: 420),
            labelMail.heightAnchor.constraint(equalToConstant: 30),
            labelMail.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant:160),
            
            descNome.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            descNome.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            descNome.widthAnchor.constraint(equalToConstant: 60),
            descNome.heightAnchor.constraint(equalToConstant: 30),
            
            descSurNome.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant:35),
            descSurNome.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            descSurNome.widthAnchor.constraint(equalToConstant: 92),
            descSurNome.heightAnchor.constraint(equalToConstant: 30),
            
            descTel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant:85),
            descTel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            descTel.widthAnchor.constraint(equalToConstant: 70),
            descTel.heightAnchor.constraint(equalToConstant: 30),
            
            desEmail.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant:130),
            desEmail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            desEmail.widthAnchor.constraint(equalToConstant: 70),
            
            desEmail.heightAnchor.constraint(equalToConstant: 30),
            ])
        
    }
}

class ThirdViewController: UIViewController, UITextFieldDelegate{
    
    public var lb_Nome: String?
    var lb_SurNome: String?
    var lb_Fone: String?
    var lb_Mail: String?
    
    public var txtNome : UITextField!
    public var txtSurname : UITextField!
    public var txtTel : UITextField!
    public var txtMail : UITextField!
    
    
    override func loadView() {
        super.loadView()
        
        self.view.backgroundColor = #colorLiteral(red: 0.803921580314636, green: 0.803921580314636, blue: 0.803921580314636, alpha: 1.0)
        
        var foto = UIButton(type: .custom)
        foto.setBackgroundImage(#imageLiteral(resourceName: "IMG_0102.PNG"), for: .normal)
        
        let OKBtn = UIButton(type: .custom)
        OKBtn.setTitle("OK", for: .normal)
        OKBtn.titleLabel?.font = UIFont (name: "helvetica", size: 17)
        OKBtn.setTitleColor(OKBtn.tintColor, for: .normal)
        OKBtn.addTarget(self, action: #selector(addContact(sender:)), for: .touchUpInside)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: OKBtn)
        
        
        func Contact_Label() -> UITextField {
            let txt = UITextField()
            txt.backgroundColor = UIColor.white.withAlphaComponent(0.669)
            txt.layer.masksToBounds = true
            txt.layer.cornerRadius = 8
            txt.layer.borderWidth = 0.8
            txt.textAlignment = NSTextAlignment.center
            txt.text = title
            txt.textColor = #colorLiteral(red: 0.0901960805058479, green: 0.0, blue: 0.301960796117783, alpha: 1.0)
            txt.translatesAutoresizingMaskIntoConstraints = false
            return txt
        }
        
        func descricaoLabel(tipo: String) -> UILabel {
            let label = UILabel()
            label.backgroundColor = UIColor.white.withAlphaComponent(0.669)
            label.lineBreakMode = NSLineBreakMode.byWordWrapping
            label.layer.masksToBounds = true
            label.textAlignment = NSTextAlignment.center
            label.text = tipo
            label.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
            label.backgroundColor = #colorLiteral(red: 0.803921580314636, green: 0.803921580314636, blue: 0.803921580314636, alpha: 1.0)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }
        
        let image = foto
        
        txtNome = Contact_Label()
        txtSurname = Contact_Label()
        txtTel = Contact_Label()
        txtMail = Contact_Label()
        
        lb_Nome = txtNome.text!
        lb_SurNome = txtSurname.text!
        
        
        let descNome = descricaoLabel(tipo: "Nome: ")
        let descSurNome = descricaoLabel(tipo: "Sobrenome: ")
        let descTel = descricaoLabel(tipo: "Telefone: ")
        let desEmail = descricaoLabel(tipo: "E-mail ")
        
        view.addSubview(image)
        
        view.addSubview(txtNome)
        view.addSubview(txtSurname)
        view.addSubview(txtTel)
        view.addSubview(txtMail)
        
        view.addSubview(descNome)
        view.addSubview(descSurNome)
        view.addSubview(descTel)
        view.addSubview(desEmail)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        
        // Layout
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -120),
            image.widthAnchor.constraint(equalToConstant: 150),
            image.heightAnchor.constraint(equalToConstant: 125),
            
            txtNome.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            txtNome.widthAnchor.constraint(equalToConstant: 250),
            txtNome.heightAnchor.constraint(equalToConstant: 30),
            txtNome.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            txtSurname.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            txtSurname.widthAnchor.constraint(equalToConstant: 110),
            txtSurname.heightAnchor.constraint(equalToConstant: 30),
            txtSurname.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 35),
            
            txtTel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            txtTel.widthAnchor.constraint(equalToConstant: 250),
            txtTel.heightAnchor.constraint(equalToConstant: 30),
            txtTel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant:100),
            
            txtMail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            txtMail.widthAnchor.constraint(equalToConstant: 420),
            txtMail.heightAnchor.constraint(equalToConstant: 30),
            txtMail.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant:160),
            descNome.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            descNome.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            descNome.widthAnchor.constraint(equalToConstant: 60),
            descNome.heightAnchor.constraint(equalToConstant: 30),
            descSurNome.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant:35),
            descSurNome.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            descSurNome.widthAnchor.constraint(equalToConstant: 92),
            descSurNome.heightAnchor.constraint(equalToConstant: 30),
            
            descTel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant:100),
            descTel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            descTel.widthAnchor.constraint(equalToConstant: 70),
            descTel.heightAnchor.constraint(equalToConstant: 30),
            
            desEmail.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant:130),
            desEmail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            desEmail.widthAnchor.constraint(equalToConstant: 70),
            desEmail.heightAnchor.constraint(equalToConstant: 30),
            ])
        
    }
    @IBAction func addContact(sender:UIButton) {
        _ = ThirdViewController()
        var fone = txtTel.text!
        var nome = txtNome.text!
        var surname = txtSurname.text!
        var mail = txtMail.text!
        
        var fullName = nome + " " + surname
        
        let newContat = (fullNome: fullName, primerNome : nome, sobrNome: surname, Telefone: fone , email: mail)
        
        contatos.append(newContat)
        contatos.sort { $0 < $1 }
        
        
        if nome == "" {
            let alertController = UIAlertController(title: "Ops! Dados Inválidos!", message:"Preencha os dados corretamente.", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Ok!", style: UIAlertActionStyle.default,handler: nil))
            self.present(alertController, animated: true, completion: nil)
        } else {
            _ = (fullNome: fullName, primerNome : nome, sobrNome: surname, Telefone: fone, email: mail)
            
            nome = ""
            mail = ""
            surname = ""
            fone = ""
            fullName = ""
            
            let alertController = UIAlertController(title: "Pronto! O contato foi adicionado!", message:"Toque em voltar.", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Ok!", style: UIAlertActionStyle.default,handler: nil))
            self.present(alertController, animated: true, completion: nil)
            TableViewController().X()
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
        }
        
    }
}

class MyCustomCell: UITableViewCell {
    
    var myLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(myLabel)
        
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            myLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            myLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor, constant: 0)
            ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

class TableViewController: UITableViewController {
    
    
    @objc func loadList(notification: NSNotification){
        self.tableView.reloadData()
        self.tableView.reloadSectionIndexTitles()
        
    }
    
    
    let cellReuseIdentifier = "cell"
    
    
    public func X(){
        sections.removeAll()
        loadArray()
    }
    
    func loadArray(){
        
        
        namesArray.sort { $0 <= $1 }
        
        
        
        var index = 0
        for i in 0 ..< contatos.count {
            let commonPrefix = contatos[i].primerNome.commonPrefix(with: contatos[index].primerNome, options: .caseInsensitive)
            
            if (commonPrefix.characters.count == 0 ) {
                let string = contatos[index].primerNome.uppercased()
                let firstCharacter = string[string.startIndex]
                let title = "\(firstCharacter)"
                let newSection = (index: index, length: i - index, title: title)
                sections.append(newSection)
                index = i
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(loadList), name: NSNotification.Name(rawValue: "load"), object: nil)
        self.title = "Contatinhos"
        
        loadArray()
        
        let plusBtn = UIButton(type: .custom)
        plusBtn.setTitle("+", for: .normal)
        plusBtn.titleLabel?.font = UIFont (name: "helvetica", size: 25)
        plusBtn.setTitleColor(plusBtn.tintColor, for: .normal) // You can change the TitleColor
        plusBtn.addTarget(self, action: #selector(openWithNavigation(sender:)), for: .touchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: plusBtn)
        self.tableView.register(MyCustomCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return sections.count
    }
    
    
    // Esse é o método necessário para definir a quantidade de linhas em cada seção
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sections[section].length
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 40
    }
    
    // Esse método define o título para a seção. Se você não declará-lo, a seção não terá titulo.
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].title
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Instanciando uma célula padrão a partir de uma existente
        var cell: UITableViewCell!
        cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        //var cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath) as UITableViewCell;
        
        if cell == nil {
            // Se a célula for vazia, criar uma nova.
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
            cell?.accessoryType = .disclosureIndicator
        }
        
        // Configurando a célula padrão
        let state = contatos[sections[indexPath.section].index + indexPath.row].fullNome
        let detail_fone = contatos[sections[indexPath.section].index + indexPath.row].Telefone
        cell.detailTextLabel?.text =
            String(detail_fone)
        cell.textLabel?.text = state
        
        return cell
    }
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return sections.map { $0.title }
        
    }
    
    override func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        return index
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let text = contatos[sections[indexPath.section].index + indexPath.row].fullNome
        let text2 = contatos[sections[indexPath.section].index + indexPath.row].sobrNome//tableView.cellForRow(at: indexPath)?.textLabel?.text else { return }
        let text3 = String(contatos[sections[indexPath.section].index + indexPath.row].Telefone)
        let text4 = contatos[sections[indexPath.section].index + indexPath.row].email
        let detail = SecondViewController()
        
        detail.foto.setImage(#imageLiteral(resourceName: "IMG_0102.PNG"), for: .normal)
        detail.foto.isUserInteractionEnabled = false
        
        detail.lb_FullNome = text
        detail.lb_SurNome = text2
        detail.lb_Fone = text3
        detail.lb_Mail = text4
        navigationController?.pushViewController(detail, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            // Observe que você deve alterar o seu array.
            //array.remove(at: sections[indexPath.section].index + indexPath.row)
            contatos.remove(at: sections[indexPath.section].index + indexPath.row)
            //array.sort { $0 < $1 }
            contatos.sort { $0 < $1 }
            X()
            
            // Comando para atualizar a tabela
            self.tableView.reloadData()
            
            
        }
    }
    
    @objc func openWithNavigation(sender:UIButton) {
        let newVC = ThirdViewController()
        self.navigationController?.pushViewController(newVC, animated: true)
        
    }
    
    func addContact2() {
        let newVC = ThirdViewController()
        let fone = newVC.txtTel.text!
        _ = Int(newVC.txtTel.text!)
        let nome = newVC.txtNome.text!
        let surname = newVC.txtSurname.text!
        let mail = newVC.txtMail.text!
        
        let fullName = nome + "" + surname
        
        let newContat = (fullNome: fullName, primerNome : nome, sobrNome: surname, Telefone: fone, email: mail)
        
        contatos.append(newContat)
        contatos.sort { $0 < $1 }
        X()
        
    }
    
    @objc func seeContact(sender:UIButton) {
        let newVC = SecondViewController()
        self.navigationController?.pushViewController(newVC, animated: true)
    }
}



let tableViewController = TableViewController(style: .plain)

PlaygroundPage.current.liveView = UINavigationController(rootViewController: tableViewController)
