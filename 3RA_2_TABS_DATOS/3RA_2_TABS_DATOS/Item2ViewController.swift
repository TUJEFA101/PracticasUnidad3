//
//  Item2ViewController.swift
//  3RA_2_TABS_DATOS
//
//  Created by LUIS FERNANDO on 02/05/17.
//  Copyright © 2017 LUIS FERNANDO. All rights reserved.
//

import UIKit

class Item2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Dos - view Did Load")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("Dos - View will appear")
        //let global = self.tabBarController as! TabBarViewController
        //global.sCadena = "DOS"
        let controllers = self.tabBarController?.viewControllers
        let unoViewController = controllers![0] as! Item1ViewController
        unoViewController.sCadena = "SELECCIONA DOS"
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
