//
//  TabBarViewController.swift
//  3RA_2_TABS_DATOS
//
//  Created by LUIS FERNANDO on 02/05/17.
//  Copyright © 2017 LUIS FERNANDO. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    
    var sCadena = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        
        var sTitulo = ""
        
        if item == tabBar.items![0]{
            sTitulo = "UNO"
        }else if item == tabBar.items![1]{
            sTitulo = "DOS"
        }else {
            sTitulo = "TRES"
        }
        
        let alerta = UIAlertController(title: sTitulo, message: "Hola mundo en ingles", preferredStyle: .Alert)
        let accion = UIAlertAction(title: "ok", style: .Default, handler: nil)
        alerta.addAction(accion)
        presentViewController(alerta, animated: true, completion: nil)
        
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
