//
//  TableViewController.swift
//  tableViewApp
//
//  Created by 渋谷柚花 on 2020/09/06.
//  Copyright © 2020 渋谷柚花. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {
    
     
   override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

            self.resultArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    
    
   
   // var names :[String] = ["米倉","川田","金子","高橋","磯部","渋谷"]
    //resultArrayは、Userdefaultを受け取る受け皿
    var resultArray = [String]()
    
    
//画面が戻ってきたらその都度更新
//ViewWillAppearは自分で書いてる
    override func viewWillAppear(_ animated: Bool) {
//UserDefaultsが空でなければ
        print(resultArray)
        if UserDefaults.standard.object(forKey: "add")  != nil {
            
//現在UserDefaultsに保存されている配列の値をresultArrayに入れる
        resultArray = UserDefaults.standard.object(forKey: "add") as! [String]
        
        }
        
        tableView.reloadData()
        
        
        
        
    }
    

//        override func viewDidLoad() {
//            super.viewDidLoad()
//
//
//            print(names[3])
//            names[3] = "阿部"
//            print(names[3])
//
//            names.append("加藤")
//            print(names)
//
//            names.insert("立川", at: 1)
//            print(names)
//
//            names.remove(at: 5)
//            print(names)
//
//            names.removeLast()
//            print(names)
//
//
//        }
//
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resultArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)

        cell.textLabel?.text = resultArray[indexPath.row]
        
        
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
