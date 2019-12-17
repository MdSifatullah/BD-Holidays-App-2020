//
//  ViewController.swift
//  BD Holidays App 2020
//
//  Created by Md Sifat on 12/17/19.
//  Copyright © 2019 Md Sifat. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var tableView: UITableView!

    
var holidaysArr = [AnyObject]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
let URL = "https://calendarific.com/api/v2/holidays?api_key=8177b96f500e1531a4c42c87770e815f7b63c113&country=BD&year=2020"

        
        AF.request(URL)
        .responseJSON { response in
            
            if let dict = response.value as? Dictionary<String, AnyObject>{
                if let innerDict = dict["holidays"]{
                    
                    self.holidaysArr = innerDict as! [AnyObject]
                    self.tableView.reloadData()
                     
                }
            }
            
           print("Response JSON: \(response.value)")
        }
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return holidaysArr.count
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.DateShowLbl?.text = holidaysArr[indexPath.row] as? String
        cell.TitleShowLbl?.text = "\(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }


}

