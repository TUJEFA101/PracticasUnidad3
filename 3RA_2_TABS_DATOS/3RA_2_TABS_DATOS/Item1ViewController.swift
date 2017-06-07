//
//  Item1ViewController.swift
//  3RA_2_TABS_DATOS
//
//  Created by LUIS FERNANDO on 02/05/17.
//  Copyright © 2017 LUIS FERNANDO. All rights reserved.
//

import UIKit

class Item1ViewController: UIViewController {

    @IBOutlet weak var soyEtiqueta: NSLayoutConstraint!
    @IBOutlet weak var Etiqueta: UILabel!
    
    var sCadena = "" // segunda parte de la practica
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Uno - view Did Load")
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("Uno - View will appear")
        //let global = self.tabBarController as! TabBarViewController
        //Etiqueta.text = global.sCadena
        Etiqueta.text = sCadena
        
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
