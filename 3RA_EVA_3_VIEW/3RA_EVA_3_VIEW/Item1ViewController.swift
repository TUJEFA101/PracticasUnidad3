//
//  Item1ViewController.swift
//  3RA_EVA_3_VIEW
//
//  Created by LUIS FERNANDO on 03/05/17.
//  Copyright © 2017 LUIS FERNANDO. All rights reserved.
//

import UIKit

class Item1ViewController: UIViewController {

    @IBAction func boton1(sender: AnyObject) {
        let otroController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("dos") as UIViewController
        
        presentViewController(otroController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
