//
//  TableViewController.swift
//  動態TableViewcell(使用內建格式與自定義格式)
//
//  Created by JeffApp on 2023/5/15.
//

import UIKit

class TableViewController: UITableViewController {
    
    let subjects = [
        Subject(topic: "Addicted to war", grade: "INTERMEDIATE", intro: intro.addictedToWar.rawValue, date: "11 May 2023", category: "Vocabulary", purpose: "6 Minute English"),
        Subject(topic: "Expression no strong feelings", grade: "INTERMEDIATE", intro: intro.expressionNoStrongFeelings.rawValue, date: "18 Jan 2019", category: "Everyday English", purpose: "How To"),
        Subject(topic: "Water crisis", grade: "UPPER INTERMEDIATE", intro: intro.waterCrisis.rawValue, date: "29 Oct 2021", category: "Business English", purpose: "Water"),
        Subject(topic: "Prince Charles's Coronation", grade: "UPPER INTERMEDIATE", intro: intro.princeCharles.rawValue, date: "11 May 2023", category: "Learn with the News", purpose: "News Review"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        let 灰色 = UIColor(red: 246/255, green:245/255, blue: 251/255, alpha: 1)
        tableView.backgroundColor = 灰色
      
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return subjects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let 靛青色 = UIColor(red: 13/255, green: 131/255, blue: 139/255, alpha: 1)
        let 深藍色 = UIColor(red: 20/255, green: 57/255, blue: 155/255, alpha: 1)
        let 灰色 = UIColor(red: 246/255, green:245/255, blue: 251/255, alpha: 1)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: 393, height: 442)
        gradientLayer.colors = [
            灰色.cgColor,
            UIColor.white.cgColor
        ]
        let cell = tableView.dequeueReusableCell(withIdentifier: "bbcCell", for: indexPath) as! bbcCell
        cell.layer.insertSublayer(gradientLayer, at: 1)
        let indexPath = indexPath.row
        
        //MARK: - 左上類別按鈕設定
        var config = UIButton.Configuration.plain()
        var title = AttributedString(subjects[indexPath].category)
        title.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        config.attributedTitle = title
        config.baseForegroundColor = .black
        cell.categoryButton.configuration = config
        //MARK: - 封面設定
        cell.subjectImageView.image = UIImage(named: subjects[indexPath].topic)
        cell.subjectImageView.contentMode = .scaleToFill
        //MARK: - 標題Label設定
        cell.topicLabel.text = subjects[indexPath].topic
        cell.topicLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        cell.topicLabel.textColor = 深藍色
        cell.topicLabel.sizeToFit()
        //MARK: - 級別Label設定
        cell.gradeLabel.text = subjects[indexPath].grade
        cell.gradeLabel.sizeToFit()
        cell.gradeLabel.textColor = .gray
        //MARK: - 簡介Label設定
        cell.introTextView.text = subjects[indexPath].intro
        cell.introTextView.sizeToFit()
        cell.introTextView.textColor = .gray
        cell.isUserInteractionEnabled = false
        //MARK: - 釋出日期Label設定
        cell.releaseDate.text = subjects[indexPath].date
        cell.releaseDate.sizeToFit()
        cell.releaseDate.textColor = .gray
        //MARK: - 類別Label設定
        cell.categoryLabel.text = subjects[indexPath].category
        cell.categoryLabel.sizeToFit()
        cell.categoryLabel.textColor = 深藍色
        //MARK: - 學習目的Label設定
        cell.purposeLabel.text = subjects[indexPath].purpose
        cell.purposeLabel.textColor = 靛青色
        //MARK: - Cell背景設定

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
