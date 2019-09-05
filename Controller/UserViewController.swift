//
//  UserViewController.swift
//  Github Perfil
//
//  Created by jplima on 05/09/19.
//  Copyright © 2019 jplima. All rights reserved.
//

import UIKit

class UserViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "C#"
        
        return cell
    }

}
