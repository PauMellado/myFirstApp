//
//  ViewControllerEjercicios.swift
//  MyFirstApp
//
//  Created by Paulina Mellado Mateos on 24/08/22.
//

import UIKit

class ViewControllerEjercicios: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(make_sum(x: 5.0,y: 8))

        // Do any additional setup after loading the view.
    }
    //Ejercicio1
    func make_sum(x: Float, y: Int) -> Float {
            return x + Float(y)
        }
}
