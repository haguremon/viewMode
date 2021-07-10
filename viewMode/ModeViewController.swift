//
//  ModeViewController.swift
//  viewMode
//
//  Created by IwasakIYuta on 2021/07/09.
//

import UIKit

class ModeViewController: UIViewController {

    var label3 = ""
    @IBOutlet weak var mode3Label: UILabel!
    
    enum Mode { //一つの画面で３つ使いたいのでModeの列挙型にしてネストの関係にしてるModeViewController.Mode
        case Mode1
        case Mode2
        case Mode3
    }
    var mode = Mode.Mode1 //ここで初期化して
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch mode { //Modeのケースがそれぞれの時に表示を変える//Mode型
        case .Mode1:
            view.backgroundColor = UIColor.blue
        
        case .Mode2:
            view.backgroundColor = UIColor.green
        case .Mode3:
            view.backgroundColor = UIColor.red
            mode3Label.text = label3
        }
        
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
