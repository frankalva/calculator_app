//
//  ViewController.swift
//  constraints
//
//  Created by Frank on 8/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var discount: UILabel!
    @IBOutlet weak var porcentajeTXT: UITextField!
    @IBOutlet weak var cantidadTXT: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func calcularButton(_ sender: UIButton) {
        guard let cantidad = cantidadTXT.text else{return}
        guard let porcentaje = porcentajeTXT.text else {return}
        
        let cant = (cantidad as NSString).floatValue
        let porciento = (porcentaje as NSString).floatValue
        
        let desc = cant * porciento / 100
        let res = cant - desc
        result.text = "S/. \(res)"
        discount.text = "S/. \(desc)"
        self.view.endEditing(true)
        
    }
    
    @IBAction func limpiarButton(_ sender: UIButton) {
        
        cantidadTXT.text=""
        porcentajeTXT.text=""
        result.text = "S/. 0.00"
        discount.text = "S/. 0.00"
        
        
    }
}

