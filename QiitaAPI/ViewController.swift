//
//  ViewController.swift
//  QiitaAPI
//
//  Created by 藤田優作 on 2021/05/06.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QiitaTableViewCell", for: indexPath) as? QiitaTableViewCell else {
                    return UITableViewCell()
                }
        cell.set(title: "タイトル\(indexPath.row)", author: "作成者")
               return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        let nib = UINib(nibName: "QiitaTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "QiitaTableViewCell")
        tableView.rowHeight = 80
        
        // Do any additional setup after loading the view.
    }


}

