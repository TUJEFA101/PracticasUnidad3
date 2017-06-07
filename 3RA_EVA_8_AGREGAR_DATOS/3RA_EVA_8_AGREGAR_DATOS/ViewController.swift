//
//  ViewController.swift
//  3RA_EVA_8_AGREGAR_DATOS
//
//  Created by LUIS FERNANDO on 16/05/17.
//  Copyright © 2017 LUIS FERNANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var arreglo:NSMutableArray = []
    
    @IBOutlet weak var txtFldDatos: UITextField!
    
    @IBOutlet weak var tblViewLista: UITableView!
    
    
    @IBAction func capturaDatos(sender: AnyObject) {
        let ruta = obtenerRuta()
        let sCade = txtFldDatos.text
        arreglo.addObject(sCade!)
        arreglo.writeToURL(ruta, atomically: true)
        tblViewLista.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let ruta = obtenerRuta()
        if(NSFileManager.defaultManager().fileExistsAtPath(ruta.path!)){
            arreglo = NSMutableArray(contentsOfURL: ruta)!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func obtenerRuta() -> NSURL {
        let tempDir = NSTemporaryDirectory()
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        let tempDirFile = tempDirURL.URLByAppendingPathComponent("milista.plist")
        return tempDirFile
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreglo.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("prime")
        celda?.textLabel?.text = arreglo[indexPath.row] as? String
        return celda!
    }
    
    

}

