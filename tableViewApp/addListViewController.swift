//
//  addListViewController.swift
//  tableViewApp
//
//  Created by 渋谷柚花 on 2020/09/06.
//  Copyright © 2020 渋谷柚花. All rights reserved.
//

import UIKit

class addListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet var addText: UITextField!
    
  var array = [String]()
    //var array:[String] = []でも同じ
    
   
    
    @IBAction func addButton(_ sender: Any) {
        
        
         if UserDefaults.standard.object(forKey: "add")  != nil {
//保存されている値をarrayの中に格納する
            
                array = UserDefaults.standard.object(forKey: "add") as! [String]
                
                }
        
      array.append(addText.text!)
        
        UserDefaults.standard.set(array, forKey: "add")
      
        
        //ボタンを押したら画面前に戻る
        self.navigationController?.popViewController(animated: true)
        
        
        
        
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
