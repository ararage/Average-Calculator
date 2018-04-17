//
//  ViewController.swift
//  Average Calculator
//
//  Created by Ricardo Perez on 1/2/17.
//  Copyright © 2017 Ricardo Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitleLAbelOUTLET: UILabel!
    @IBOutlet weak var txtInputTextOUTLET: UITextField!
    @IBOutlet weak var btnCalculateOUTLET: UIButton!
    @IBOutlet weak var lblDisplayAverageOUTLET: UILabel!
    @IBOutlet weak var btnResetOUTLET: UIButton!
    
    var average : Double = 0
    var total : Double = 0
    var count : Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressCalculateButton(_ sender: UIButton) {
        if(!(txtInputTextOUTLET.text?.isEmpty)!){
            var input = Double(txtInputTextOUTLET.text!)
            count+=1
            calculateAverage(inputNumber: input!)
            displayAverage()
            txtInputTextOUTLET.text?.removeAll()
        }else{
            lblDisplayAverageOUTLET.text = "You need to enter a number, silly!"
        }
    }

    @IBAction func pressResetButton(_ sender: UIButton) {
        resetValures()
    }
    
    func calculateAverage(inputNumber : Double){
        total+=inputNumber
        average = total/count
    }
    
    func displayAverage(){
        lblDisplayAverageOUTLET.text = String(average)
    }
    
    func resetValures(){
        average = 0
        total = 0
        count = 0
        lblDisplayAverageOUTLET.text = "Display average"
    }
}

