//
//  ViewController2.swift
//  MyFirstApp
//
//  Created by Paulina Mellado Mateos on 24/08/22.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var palindromo: UITextField!
    @IBOutlet weak var resultado: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func procesarFrase(_ sender: UIButton) {
        
        if let vacio = palindromo.text?.isEmpty {
            if vacio == true{
                resultado.text = "El campo esta Vacio"
            }else{
                
                if var fraseUnwrap = palindromo.text?.lowercased(){
                    
                    fraseUnwrap = fraseUnwrap.replacingOccurrences(of: " ", with: "")
                    let frase = fraseUnwrap
                    fraseUnwrap = String(fraseUnwrap.reversed())
                    if frase == fraseUnwrap {
                        resultado.text = "Es un palindromo"
                    }else{
                        resultado.text = "No es un palindromo"
                    }
                
                    print(fraseUnwrap)
                    
                }
                
                
            }
        }
        
        
    }
}
