//
//  DefinedTableViewController.swift
//  動態TableViewcell(使用內建格式與自定義格式)
//
//  Created by 林仲景 on 2023/5/15.
//

import UIKit

class DefinedTableViewController: UITableViewController {

    let subjects = [
        Subject(topic: "Addicted to war", grade: "INTERMEDIATE", intro: intro.addictedToWar.rawValue, date: "11 May 2023", category: "Vocabulary", purpose: "6 Minute English"),
        Subject(topic: "Expression no strong feelings", grade: "INTERMEDIATE", intro: intro.expressionNoStrongFeelings.rawValue, date: "18 Jan 2019", category: "Everyday English", purpose: "How To"),
        Subject(topic: "Water crisis", grade: "UPPER INTERMEDIATE", intro: intro.waterCrisis.rawValue, date: "29 Oct 2021", category: "Business English", purpose: "Water"),
        Subject(topic: "Prince Charles's Coronation", grade: "UPPER INTERMEDIATE", intro: intro.princeCharles.rawValue, date: "11 May 2023", category: "Learn with the News", purpose: "News Review"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor(red: 246/255, green:245/255, blue: 251/255, alpha: 1)
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "definedCell", for: indexPath)
        cell.imageView?.image = UIImage(named: subjects[indexPath.row].topic)
        cell.textLabel?.text =  subjects[indexPath.row].topic
        cell.textLabel?.textColor = .gray
        cell.detailTextLabel?.text =  subjects[indexPath.row].category
        cell.detailTextLabel?.textColor = .gray
        
        let 灰色 = UIColor(red: 246/255, green:245/255, blue: 251/255, alpha: 1)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: 393, height: 100)
        gradientLayer.colors = [
            灰色.cgColor,
            UIColor.white.cgColor
        ]
        cell.layer.insertSublayer(gradientLayer, at: 1)

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

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
