//
//  UISegmentedViewController.swift
//  aboutEachUIPart1
//
//  Created by IwasakIYuta on 2021/06/26.
//

import UIKit

class UISegmentedViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
  //UIUISegmentedControlがセレクトされた時の処理
    @IBAction func changeSelect(_ sender: AnyObject) {
        let num = segmentedControl.selectedSegmentIndex //選択されたもの
        //titleForSegmentの戻り値はString?なのでアンラップしないといけない
        if let title = segmentedControl.titleForSegment(at: num) {
            label.text = "\(num)番目の\(title)が選択されました"
        }
    
    }
    
    @IBAction func pressButton(_ sender: AnyObject) {
        segmentedControl.selectedSegmentIndex = 1 //０から始まるから1を選択
    }
    
}
