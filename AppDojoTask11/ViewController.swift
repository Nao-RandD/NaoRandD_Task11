//
//  ViewController.swift
//  AppDojoTask11
//
//  Created by Naoyuki Kan on 2021/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!

    @IBAction func didTapChangeButton(_ sender: Any) {
        present(
            UINavigationController(
                rootViewController: ListViewController.instantiate(
                    didSelectRowHandler: { [weak self] in
                        self?.label.text = $0
                        self?.dismiss(animated: true, completion: nil)
                    },
                    didCancelHandler: { [weak self] in
                        self?.dismiss(animated: true, completion: nil)
                    }
                )
            ),
            animated: true,
            completion: nil
        )
    }
}
