//
//  Response.swift
//  SwiftUI_API_Sample
//
//  Created by 西澤駿 on 2022/10/05.
//

import Foundation

/// APIから取得する戻り値の型
struct Response: Codable {
    var results: [Result]
}
