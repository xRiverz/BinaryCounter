//
//  customCell.swift
//  BinaryCounter
//
//  Created by admin on 16/12/2021.
//

import Foundation
import UIKit

class customCell : UITableViewCell {
    
    var dele : CustomCD?
    
    
    @IBOutlet weak var numLable : UILabel!
    @IBAction func plusPressed(_ sender:UIButton){
        dele?.plusTotal(value: Int(numLable.text!)!)
    }
    @IBAction func minusPressed(_ sender:UIButton){
        dele?.minusTotal(value: Int(numLable.text!)!)
    }
}
