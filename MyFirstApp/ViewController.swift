//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Paulina Mellado Mateos on 23/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var conPassword: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var texCon: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        //Opcional
        var optionalInteger: Int?// Puede o no puede tener un valor
        optionalInteger = 1
        print("Opcional: ", optionalInteger!)
        // UNWRAP (DESENVOLVER)
        //FORCE UNWRAP  print("Opcional: ", optionalInteger!) SE USA CUANDO SE ESTA COMPLETAMENTE SEGURO QUE LA VARIABLE TRAE VALOR
        //SAFE UNWRAP

        var color = semaforo(name: "azul")


        if let unwraooedColor = color {
            print("Exito", unwraooedColor)
        }else{
            print("Error")
        }

        guard let otroColor = color else { return }
        print(otroColor)
        
        var nombre = greet(persona: "Paulina")
        
    }
    
    @IBAction func colorChange(_ sender: Any) {
        if passWord.text == conPassword.text && (passWord.text != "" || conPassword.text != ""){
            print("Contraseñas Iguales")
            texCon.text = "Los password coinciden"
            texCon.textColor = UIColor.green
            
        }else if passWord.text != conPassword.text && (passWord.text != "" && conPassword.text != "") {
            texCon.text = "Las password no coinciden"
            texCon.textColor = UIColor.red
        }else if name.text == "" || email.text == ""{
            texCon.text = "Campo Vacio"
        }else {
            texCon.text = "Campo Vacio"
        }
        
        
    }
    
    func semaforo(name: String) -> String? {
        if name == "rojo" {return "rojo"}
        if name == "amarillo" {return "amarillo"}
        if name == "verde" {return "verde"}
        
        
        return nil
    }
    
    func greet(persona person: String) -> String {
        let greeting = "Hello " + person + "!"
        return greeting
    }


}

