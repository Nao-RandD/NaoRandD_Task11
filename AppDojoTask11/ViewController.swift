//
//  ViewController.swift
//  AppDojoTask11
//
//  Created by Naoyuki Kan on 2021/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!

    @IBAction private func exit(segue: UIStoryboardSegue) {
        let listViewController = segue.source as? ListViewController
        label.text = listViewController?.prefectureName
    }

    @IBAction private func Cancel(segue: UIStoryboardSegue) {

    }
}

