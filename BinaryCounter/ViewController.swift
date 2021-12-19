//
//  ViewController.swift
//  BinaryCounter
//
//  Created by admin on 16/12/2021.
//

import UIKit

class ViewController: UIViewController, CustomCD {
    
    var total : Int = 0
    @IBOutlet weak var tv : UITableView!
    let num : [Int] = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
    
    @IBOutlet weak var tl : UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        tv.dataSource = self
        // Do any additional setup after loading the view.
    }

    func plusTotal(value : Int){
        total += value
        tl.text = "Total:\(total)"
    }
    func minusTotal(value : Int){
        total -= value
        tl.text = "Total:\(total)"
    }
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int{
        num.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier : "CustomCell", for: indexPath) as! customCell
        
        cell.numLable.text = "\(pow(10, num[indexPath.row]))"
        cell.dele = self
        return cell
    }
    
}

