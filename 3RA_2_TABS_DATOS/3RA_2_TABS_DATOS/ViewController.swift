//
//  ViewController.swift
//  3RA_2_TABS_DATOS
//
//  Created by LUIS FERNANDO on 02/05/17.
//  Copyright © 2017 LUIS FERNANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Tres - view Did Load")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("Tres - View will appear")
        //let global = self.tabBarController as! TabBarViewController
        //global.sCadena = "TRES"
        let controllers = self.tabBarController?.viewControllers
        let unoViewController = controllers![0] as! Item1ViewController
        unoViewController.sCadena = "SELECCIONA TRES"

    }



}

