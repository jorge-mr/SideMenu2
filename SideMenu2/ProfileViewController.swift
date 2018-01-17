//
//  ProfileViewController.swift
//  SideMenu2
//
//  Created by Jorge on 17/01/18.
//  Copyright © 2018 kaleido. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var hamburguerButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hamburguerButton.target = revealViewController()
        hamburguerButton.action = #selector(SWRevealViewController.revealToggle(_:))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
