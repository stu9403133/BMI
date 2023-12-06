//
//  BMIViewController.swift
//  BMI
//
//  Created by stu on 2023/12/6.
//

import UIKit

class BMIViewController: UIViewController {

    @IBOutlet weak var weightValue: UITextField!
    @IBOutlet weak var heightValue: UITextField!
    @IBOutlet weak var BMIValue: UILabel!
    
    @IBOutlet weak var backGround: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        backGround.alpha = CGFloat(0.2)
    }
    
    @IBAction func calculate(_ sender: Any) {
        
        if let weightValue = weightValue.text,
           let heightValue = heightValue.text,
           let weightValue = Double(weightValue),
           let heightValue = Double(heightValue) {
            
            let heightMeter = heightValue / 100
            
            BMIValue.text = String(format: "%.2f", "\(weightValue / (heightMeter * heightMeter))")
        }
        
        //按下按鈕後收鍵盤
        view.endEditing(true)
        
    }
    
    
    
    @IBAction func dismissKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
