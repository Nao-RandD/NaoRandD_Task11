//
//  ListViewController.swift
//  AppDojoTask11
//
//  Created by Naoyuki Kan on 2021/04/25.
//

import Foundation
import UIKit

class ListViewController: UIViewController {
    private let prefectureNames = ["北海道","青森県","岩手県","宮城県","秋田県", "山形県", "福島県", "茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県", "富山県", "石川県", "福井県", "山梨県", "長野県", "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県", "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県", "鳥取県", "島根県", "岡山県", "広島県", "山口県", "徳島県", "香川県", "愛媛県", "高知県", "福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県", "沖縄県"]

    private var didSelectRowHandler: (String) -> Void = { _ in }
    private var didCancelHandler: () -> Void = {}

    static func instantiate(didSelectRowHandler: @escaping (String) -> Void, didCancelHandler: @escaping () -> Void) -> ListViewController {

        let listViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ListViewController") as! ListViewController
        listViewController.didSelectRowHandler = didSelectRowHandler
        listViewController.didCancelHandler = didCancelHandler
        return listViewController
    }

    @IBAction func didTapCancelButton(_ sender: Any) {
        didCancelHandler()
    }
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        prefectureNames.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didSelectRowHandler(prefectureNames[indexPath.row])
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = prefectureNames[indexPath.row]

        return cell
    }
}
