//
//  Qiita.swift
//  QiitaAPI
//
//  Created by 藤田優作 on 2021/05/07.
//

import Foundation

struct QiitaUser: Codable {
    let id: String
    let imageUrl: String 
    enum CodingKeys: String, CodingKey {
        case id
        case imageUrl = "profile_image_url" // ②
    }
}
