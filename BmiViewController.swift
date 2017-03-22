//
//  BmiViewController.swift
//  bmi
//
//  Created by Kazama Ryusei on 2017/03/16.
//  Copyright © 2017年 Malfoy. All rights reserved.
//

import UIKit

class BmiViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    
    @IBAction func bmiButton(_ sender: Any) {
        let height: Double = Double(heightTextField.text!)!
        let weight: Double = Double(weightTextField.text!)!
        let bmi = weight/(height*height)
        let sbw = (height*height)*22
        
        print(bmi)
        print(sbw)
        
    }

    @IBAction func tapScreen(_ sender: Any) {
        self.view.endEditing(true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.heightTextField.delegate = self
        self.weightTextField.delegate = self
        self.heightTextField.clearButtonMode = .whileEditing
        self.weightTextField.clearButtonMode = .whileEditing
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func segueToResultViewController() {
        self.performSegue(withIdentifier: "toResultViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultViewController" {
            let resultViewController = segue.destination as! ResultViewController
            // ここにbmiとsbwの値をResultViewに送る処理を書きたい
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
