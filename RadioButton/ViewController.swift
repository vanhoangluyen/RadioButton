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
    var titleButton = ""
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
        performSegue(withIdentifier: Storyboard.ShowImageSegue, sender: sender)
    }
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Storyboard.ShowImageSegue {
            if let vc = segue.destination as? DetailViewController {
                vc.data = titleButton
            }}
    }
    private struct Storyboard {
        static let ShowImageSegue = "ShowDetail"
    }
}



