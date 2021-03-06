//
//  ViewController.swift
//  SideMenu2
//
//  Created by Jorge on 17/01/18.
//  Copyright © 2018 kaleido. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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


}

