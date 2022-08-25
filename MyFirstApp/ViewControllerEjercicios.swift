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
        //Ejercicio1
        print(make_sum(x: 5.0,y: 8))
        //Ejercicio2
        let array : [Int] = [1,1,7,4, 8,7,0,7,7,8,9]
        print(sevenCount(array: array))
        //Ejercicio3
        let sequence : [Int] = [2,7,2,1,2,3,3,3,9]
        print(secuencia(array: sequence))
        //Ejercicio4
        let suma : [Int] = [10,2,3,4,8,9,9]
        print(sumaTwo(array: suma))
        //Ejercicio 5
        var  max : [Int] = [10,5,120,50,90]
        print(numMax(array: max))
        // Do any additional setup after loading the view.
        self.metodoVariable()
    }
    //Ejercicio1
    func make_sum(x: Float, y: Int) -> Float {
            return x + Float(y)
        }
    //Ejercicio2
    func sevenCount(array: [Int]) -> Int{
        var i = 0;
        for item in array{
            if item == 7 {
                i += 1
            }
        }
        
        return i
    }
    
    //Ejercicio3
    func secuencia(array: [Int]) -> Bool {
        var aux : Int
        for i in 0..<array.count {
            
            aux = array[i]
            
            if i < array.count-2 && aux == array[i+1] && aux == array[i+2]{
                return true
            }
                    
        }
        return false
    }
    //Ejercicio4
    func sumaTwo(array: [Int]) -> Int {
        
        switch array.count {
        case 0:
            return 0
        case 1 ... 2:
            return array[0]
        case 3... :
            return array[0] + array[1]
        default:
            return 0
            
        }
    }
    //Ejercicio5
    func numMax(array: [Int]) -> Int {
        var array = array
        var val: Bool = true
        while (val) {
            val = false
            for i in 0..<array.count - 1 {
                if array[i] < array[i+1] {
                    let aux = array[i]
                    array[i] = array[i+1]
                    array[i+1] = aux
                    val = true
                }
            }
        }
        
        return array[0]
    }
//------------------------------------------------------

    func metodoVariable(variableUno: String = "Hola"){
        print(variableUno)
    }
}
