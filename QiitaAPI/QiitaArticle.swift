//
//  QiitaArticle.swift
//  QiitaAPI
//
//  Created by 藤田優作 on 2021/05/07.
//

import Foundation


struct QiitaArticle: Codable {
    let title: String
    let url: String
    let user: QiitaUser 
}
