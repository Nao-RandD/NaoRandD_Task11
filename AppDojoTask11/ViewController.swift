//
//  ViewController.swift
//  AppDojoTask11
//
//  Created by Naoyuki Kan on 2021/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func exit(segue: UIStoryboardSegue) {
        let listViewController = segue.source as? ListViewController
        label.text = listViewController?.prefectuer
    }
}

