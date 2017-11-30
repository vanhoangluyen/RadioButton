//
//  ViewController.swift
//  RadioButton
//
//  Created by HoangLuyen on 11/28/17.
//  Copyright © 2017 HoangLuyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var radioButtons: [UIButton]!
    var titleButton: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - ACTION
    @IBAction func selectedBtn(sender: UIButton) {
        radioButtons.forEach { $0.isSelected = false }
        sender.isSelected = true
        titleButton = sender.currentTitle!
        print(sender.currentTitle!)
    }
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let dataSend = titleButton {
                let controller = segue.destination as! DetailVC
                controller.getData = dataSend
            }
        }
    }

}



