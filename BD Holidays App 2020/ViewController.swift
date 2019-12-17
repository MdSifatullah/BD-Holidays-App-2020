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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //var holidays = [AnyObject]()
let URL = "https://calendarific.com/api/v2/holidays?api_key=8177b96f500e1531a4c42c87770e815f7b63c113&country=BD&year=2020"
        AF.request(URL).response { response in

            print(response.result)
//            print(response.response)
//            print(response.data)
//            print(response.result)
    
        
        
        }
    
    }


}

