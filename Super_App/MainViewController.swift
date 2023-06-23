//
//  MainViewController.swift
//  Super_App
//
//  Created by tw on 2023/06/13.
//

import UIKit

final class MainViewController: UIViewController {
    
    private let mainStackView: UIStackView = {
        $0.axis = .vertical
        $0.spacing = 25
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    private let uikitLabel: UIButton = {
        $0.setTitle("UIKit", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        $0.layer.cornerRadius = 15
        $0.layer.borderColor = UIColor.black.cgColor
        $0.layer.borderWidth = 3
        return $0
    }(UIButton(type: .custom))
    
    private let swiftUILabel: UIButton = {
        $0.setTitle("SwiftUI", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        $0.layer.cornerRadius = 15
        $0.layer.borderColor = UIColor.black.cgColor
        $0.layer.borderWidth = 3
        return $0
    }(UIButton(type: .custom))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setLayer()
        
        uikitLabel.addTarget(self, action: #selector(pushUIKit(_:)), for: .touchUpInside)
        swiftUILabel.addTarget(self, action: #selector(pushSwiftUI(_:)), for: .touchUpInside)
    }
    
    @objc
    private func pushUIKit(_ sender: UIButton) {
        
    }
    
    @objc
    private func pushSwiftUI(_ sender: UIButton) {
        
    }

    private func setLayer() {
        
        navigationItem.title = "iOS 언어"
        
        view.addSubview(mainStackView)
        mainStackView.addArrangedSubview(uikitLabel)
        mainStackView.addArrangedSubview(swiftUILabel)
        
        let size = UIScreen.main.bounds.size
        mainStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            .isActive = true
        mainStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            .isActive = true
        mainStackView.widthAnchor.constraint(equalToConstant: size.width / 3)
            .isActive = true
        mainStackView.heightAnchor.constraint(equalToConstant: size.height / 5)
            .isActive = true
    }
    
}

