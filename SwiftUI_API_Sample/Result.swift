//
//  Result.swift
//  SwiftUI_API_Sample
//
//  Created by 西澤駿 on 2022/10/05.
//

import Foundation

/// 個々の書籍情報の型
struct Result: Codable {
    var trackId: Int                // 書籍データのID
    var trackName: String?          // 書籍タイトル
    var artistName: String?         // 著者名
    var formattedPrice: String?     // 価格（テキスト形式）
}
