//
//  ViewController.swift
//  Files
//
//  Created by Esraa Eid on 12/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
  

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        let button = UIButton(primaryAction: UIAction(title: "Menu Button", handler: { (action) in
            //handle action
            
        }))
        
        button.menu = UIMenu(title: "Menu button 1", children: [UIMenu(title: "", options: UIMenu.Options.displayInline, children: (1...4).map{
            UIAction(title: "Selected Item \($0)") { (action) in
                 print("tapped item \(action)")
            }})])
        button.translatesAutoresizingMaskIntoConstraints = false
        button.showsMenuAsPrimaryAction = true
        
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        button.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    }
    

    


}

