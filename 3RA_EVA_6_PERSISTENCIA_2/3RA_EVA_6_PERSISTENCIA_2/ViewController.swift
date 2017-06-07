//
//  ViewController.swift
//  3RA_EVA_6_PERSISTENCIA_2
//
//  Created by LUIS FERNANDO on 09/05/17.
//  Copyright © 2017 LUIS FERNANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var misSliders: [UISlider]!
    
    @IBOutlet weak var contenido: UITextView!
    
    @IBOutlet weak var informacion: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnGuardar(sender: AnyObject) {
        let tempDir = NSTemporaryDirectory()
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        let archivo = tempDirURL.URLByAppendingPathComponent("misdatos.txt")
        let arreglo = (misSliders as NSArray).valueForKey("value") as! NSArray
        arreglo.writeToURL(archivo, atomically: true)
        
        
    }

    @IBAction func btnVisualizar(sender: AnyObject) {
        let tempDir = NSTemporaryDirectory()
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        let archivo = tempDirURL.URLByAppendingPathComponent("misdatos.txt")

        if(NSFileManager.defaultManager().fileExistsAtPath(archivo.path!)){
            if let arreglo = NSArray(contentsOfURL: archivo) as? [Double]{
                var cadena = ""
                for i in 0..<arreglo.count {
                    cadena = cadena + "\(arreglo[i])" + "\n"
                }
                contenido.text = cadena
            }
        }
        
    }
}

