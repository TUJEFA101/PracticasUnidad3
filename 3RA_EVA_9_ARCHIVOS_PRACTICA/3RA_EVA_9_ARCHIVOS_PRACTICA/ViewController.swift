//
//  ViewController.swift
//  3RA_EVA_9_ARCHIVOS_PRACTICA
//
//  Created by LUIS FERNANDO on 17/05/17.
//  Copyright © 2017 LUIS FERNANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    var arregloDatos: [String : [String]]!
    var arreglosClaves: [String]!
    
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var txtDatos: UITextField!
    @IBAction func capturaDatos(sender: AnyObject) {
        
        let ruta = obtenerRuta()
        let sCade = txtDatos.text
        var caracter = sCade?.characters.first
        
        
        
        /*
         arreglo.addObject(sCade!)
        arreglo.writeToURL(ruta, atomically: true)
        tblViewLista.reloadData()
         */
        let primeraletra = String(sCade!.characters.first!).uppercaseString
        print(primeraletra)
        let letra = arreglosClaves.indexOf(primeraletra)
       
        arregloDatos[arreglosClaves[letra!]]!.append(sCade!)
        arregloDatos[arreglosClaves[letra!]]!.sortInPlace()
        
        (arregloDatos as NSDictionary).writeToURL(ruta, atomically: true)
        
        
        tblView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let ruta = obtenerRuta()
        print(ruta)
        if(NSFileManager.defaultManager().fileExistsAtPath(ruta.path!)){
            let diccionarioDatos = NSDictionary(contentsOfURL: ruta)
            arregloDatos = diccionarioDatos as! [String:[String]]
            arreglosClaves = (diccionarioDatos!.allKeys as! [String]).sort()
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func obtenerRuta() -> NSURL {
        let tempDir = NSTemporaryDirectory()
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        let tempDirFile = tempDirURL.URLByAppendingPathComponent("sortednames.plist")
        return tempDirFile
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let clave = arreglosClaves[section]
        let nombresSeccion = arregloDatos[clave]
        return nombresSeccion!.count
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return arreglosClaves.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("prime", forIndexPath: indexPath) as UITableViewCell
        
        
        let clave = arreglosClaves[indexPath.section]
        let nombresSeccion = arregloDatos[clave]!
        celda.textLabel?.text = nombresSeccion[indexPath.row]
        return celda
    }
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
        let alerta = UIAlertController(title: "Eliminar", message: "Deseas eliminar el nombre", preferredStyle: .Alert)
        
        let btnEliminar = UIAlertAction(title: "Eliminar", style: .Default, handler: pruebasEliminar)
        let btnCancelar = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        alerta.addAction(btnEliminar)
        alerta.addAction(btnCancelar)
        presentViewController(alerta, animated: true, completion: nil)
    }
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arreglosClaves[section]
    }
    
    func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
        return arreglosClaves
    }
    
    func pruebasEliminar(alert:UIAlertAction) {
        
        let ruta = obtenerRuta()
        
        let clave = arreglosClaves[(tblView.indexPathForSelectedRow?.section)!]
        var nombresSeccion = arregloDatos[clave]!
        let nombre = nombresSeccion[(tblView.indexPathForSelectedRow?.row)!]
        
        let indice = nombresSeccion.indexOf(nombre)
        arregloDatos[clave]!.removeAtIndex(indice!)
        arregloDatos[clave]!.sortInPlace()
        (arregloDatos as NSDictionary).writeToURL(ruta, atomically: true)
        
        tblView.reloadData()
        
    }

}

