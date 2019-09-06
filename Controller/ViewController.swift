//
//  ViewController.swift
//  Github Perfil
//
//  Created by jplima on 04/09/19.
//  Copyright © 2019 jplima. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func searchUser(_ sender: Any) {
        if let userName:String = txtUserName.text{
            
            GithubUserAPI.getUsers(userName: userName) { (projects) in
                print(projects)
            }
        }
        
        
    }
    
}

