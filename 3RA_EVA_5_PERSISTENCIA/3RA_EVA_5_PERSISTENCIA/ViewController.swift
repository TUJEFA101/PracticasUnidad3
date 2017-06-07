//
//  ViewController.swift
//  3RA_EVA_5_PERSISTENCIA
//
//  Created by LUIS FERNANDO on 08/05/17.
//  Copyright © 2017 LUIS FERNANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UITextField!
    
    @IBOutlet weak var mostrar: UILabel!
    
    @IBAction func btnGuardar(sender: AnyObject) {
        let rutaTem = NSTemporaryDirectory()
        let rutaTemURL = NSURL(fileURLWithPath: rutaTem)
        let archivo = rutaTemURL.URLByAppendingPathComponent("holamundo.txt")
        
        do{
            try texto.text?.writeToURL(archivo, atomically: true, encoding: NSUTF8StringEncoding)
        }catch {
            print("No hay error no hay error")
        }
    }
    
    
    @IBAction func btnLeer(sender: AnyObject) {
        let rutaTem = NSTemporaryDirectory()
        let rutaTemURL = NSURL(fileURLWithPath: rutaTem)
        let archivo = rutaTemURL.URLByAppendingPathComponent("holamundo.txt")
        
        do{
            try mostrar.text = String(contentsOfFile: archivo.path!, encoding: NSUTF8StringEncoding)
        }catch {
            print("No hay error no hay error")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

