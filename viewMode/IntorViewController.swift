//
//  IntorViewController.swift
//  viewMode
//
//  Created by IwasakIYuta on 2021/07/10.
//

import UIKit

class IntorViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    //値が戻るときは変数を用意しなくてもいい
    //var returnLabel = ""
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if segue.identifier == "toSeue" {
    //            segue.destination as! ViewController
    //        }
    //    }
    
    @IBAction func returnPassingValue(segue: UIStoryboardSegue){
        let vc = segue.source as! ViewController
        label.text = vc.textFiled.text ?? ""
    }
    @IBAction func exit(segue: UIStoryboardSegue){
        
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
