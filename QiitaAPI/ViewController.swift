//
//  ViewController.swift
//  QiitaAPI
//
//  Created by 藤田優作 on 2021/05/06.
//

import UIKit
import Alamofire

class ViewController: UIViewController{
    
    
    @IBOutlet weak var tableView: UITableView!
    private var articles: [QiitaArticle] = [] 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let nib = UINib(nibName: "QiitaTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "QiitaTableViewCell")
        tableView.rowHeight = 80
        loadArticles()
        // Do any additional setup after loading the view.
    }
    private func loadArticles() {
        AF.request("https://qiita.com/api/v2/tags/iOS/items").response { response in
            guard let data = response.data else {
                return
            }
            let decoder = JSONDecoder()
            do {
                let articles: [QiitaArticle] = try decoder.decode([QiitaArticle].self, from: data)
                self.articles = articles
                self.tableView.reloadData()
            } catch {
                print(error)
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QiitaTableViewCell", for: indexPath) as? QiitaTableViewCell else {
            return UITableViewCell()
        }
        let article = articles[indexPath.row]
        cell.set(title: article.title, author: article.user.id,imageUrl: article.user.imageUrl)
        return cell
    }
}

extension ViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "WebViewController", bundle: nil)
        let webViewController = storyboard.instantiateInitialViewController() as! WebViewController
        let article = articles[indexPath.row]
        webViewController.url = article.url
        webViewController.title = article.title
        navigationController?.pushViewController(webViewController, animated: true)
    }
}

