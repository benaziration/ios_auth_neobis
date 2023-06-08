//
//  InfoViewController.swift
//  ios_auth
//
//  Created by Benazir Toleubekova on 07.06.2023.
//

import Foundation
import UIKit
import SnapKit

class InfoViewController : UIViewController {

    let mainView = InfoView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        title = "Регистрация"

        let backButton = UIBarButtonItem(image: UIImage(named: "backButton")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(backPressed))
        self.navigationItem.leftBarButtonItem = backButton
        mainView.enterButton.addTarget(self, action: #selector(enterPressed), for: .touchUpInside)
    }
    
    @objc func enterPressed() {
        let userViewModel = UserViewModel()
        let vc = CreatePasswordViewController(userViewModel: userViewModel)
        
        vc.name = mainView.nameField.text ?? ""
        vc.last_name = mainView.secondNameField.text ?? ""
        vc.birthday = mainView.dateField.text ?? ""
        vc.email = mainView.mailField.text ?? ""

        navigationController?.pushViewController(vc, animated: true)
    }

    @objc func backPressed() {
        navigationController?.popViewController(animated: true)
    }

    func setupView() {
        view.addSubview(mainView)
        mainView.snp.makeConstraints{ make in
            make.edges.equalToSuperview()
        }
    }
    
    func didConfirmRegistration(user: Register) {
        print("Registration success")
    }
    
    func didFail(with error: Error) {
        print("Error in registration: \(error.localizedDescription)")
    }
    
}
