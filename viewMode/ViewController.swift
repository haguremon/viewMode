//
//  ViewController.swift
//  viewMode
//
//  Created by IwasakIYuta on 2021/07/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textFiled.delegate = self
        textFiled.resignFirstResponder()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier ?? "" { //identifierは空の時があるので??を使って
        case "mode1":
            (segue.destination as? ModeViewController)?.mode = .Mode1
             
        case "mode2":
            (segue.destination as? ModeViewController)?.mode = .Mode2
        case "mode3":
            let mode3 = (segue.destination as? ModeViewController)//ModeViewController型
            mode3?.label3 = textFiled.text ?? ""//プロパティを使ってtextFiled.textをlabel3に代入してから
            mode3?.mode = .Mode3 //modeを.Mode3にする
        
        default:
            break
        }
    }
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFiled.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.textFiled.endEditing(true)
    }
    @IBAction func exit(segue: UIStoryboardSegue){}

}

extension ViewController: UITextFieldDelegate {}
