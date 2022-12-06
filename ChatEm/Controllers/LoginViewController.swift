//
//  ViewController.swift
//  ChatEm
//
//  Created by Noye Samuel on 14/11/2022.
//

import UIKit

class LoginViewController: UIViewController {

    private let usernameField: UITextField = {
        let field = UITextField()
        field.borderStyle = .roundedRect
        field.placeholder = "Username..."
        field.autocorrectionType = .no
        field.autocapitalizationType = .none
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        field.translatesAutoresizingMaskIntoConstraints = false
        field.backgroundColor = .gray //UIColor(named: TextsInUse.TextBGColor)
        return field
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = TextsInUse.AppName
        view.backgroundColor = .darkGray//UIColor(named: TextsInUse.AppColor)
        view.addSubview(usernameField)
        addContraints()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        usernameField.becomeFirstResponder()
    }
    private func addContraints(){
        NSLayoutConstraint.activate([
            usernameField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            usernameField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 50),
            usernameField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -50),
            usernameField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

