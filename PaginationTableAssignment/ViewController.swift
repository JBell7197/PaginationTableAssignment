//
//  ViewController.swift
//  PaginationTableAssignment
//
//  Created by Justin Bell on 10/20/21.
//

import UIKit
//struct Game : Codable {
//    let title : String
//    let publisher : String
//}

class ViewController: UIViewController {

    

  
//    var pullJSON = PullJSON()
//    var tableArray = [Game]() {
//        didSet {
//            DispatchQueue.main.async {
//                self.tableValue.reloadData()
//            }
//        }
//    }
    override func viewDidLoad() {
//         Do any additional setup after loading the view.
    
//        pullJSON.getJSONFile{gameitem in self.tableArray = gameitem}
        super.viewDidLoad()
//        tableValue.register(UITableViewCell.self, forCellReuseIdentifier: "dataTableCell")
//        tableValue.dataSource = self
    }

    @IBAction func tapOnNextView(_ sender: UIButton) {
        let nextView = storyboard?.instantiateViewController(withIdentifier: "PageView") as! TableViewController
        
        present(nextView, animated: true, completion: nil)
    }
    //    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.tableArray.count
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 7
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "dataTableCell", for: indexPath)
//
//        cell.textLabel?.text = tableArray[indexPath.row].title + "-->" + tableArray[indexPath.row].publisher
//
//        return cell
//    }
}

 
