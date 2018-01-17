//
//  SideMenuViewController.swift
//  SideMenu2
//
//  Created by Jorge on 17/01/18.
//  Copyright © 2018 kaleido. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var menuItems : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchMenuItems()

        // Do any additional setup after loading the view.
    }

    func fetchMenuItems(){
        menuItems.append("Home")
        menuItems.append("Profile")
        menuItems.append("Home")
        menuItems.append("Profile")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
        cell.textLabel?.text = menuItems[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let revealViewController : SWRevealViewController = self.revealViewController()
        let cell : UITableViewCell = tableView.cellForRow(at: indexPath)!
        if cell.textLabel?.text == "Home" {
            let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            let newFrontViewController = UINavigationController.init(rootViewController: desController)
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        } else {
            let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryboard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
            let newFrontViewController = UINavigationController.init(rootViewController: desController)
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
    }

}
