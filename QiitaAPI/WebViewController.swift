//
//  WebViewController.swift
//  QiitaAPI
//
//  Created by 藤田優作 on 2021/05/06.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    private let webView = WKWebView()

    var url: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.frame = view.frame
        view.addSubview(webView)
        
        let url = URL(string: self.url)
        let request = URLRequest(url: url!)
        webView.load(request)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
