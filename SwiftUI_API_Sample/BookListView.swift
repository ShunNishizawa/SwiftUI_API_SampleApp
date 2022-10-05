//
//  BookListView.swift
//  SwiftUI_API_Sample
//
//  Created by 西澤駿 on 2022/10/05.
//

import SwiftUI

struct BookListView: View {
    @State private var results = [Result]() // 空の書籍情報配列を生成
    @Binding var bookKeyword: String

    var body: some View {
        List(results, id: \.trackId) {item in
            VStack(alignment: .leading) {
                Text(item.trackName ?? "")           // 書籍タイトル
                Text(item.artistName ?? "")          // 著者名
                Text(item.formattedPrice ?? "")      // 価格
            }
        }
        .navigationTitle("書籍リスト")
        .onAppear() {
            loadData()
        }
    }

    private func loadData() {

        // URLの生成
        guard let url = URL(string: "https://itunes.apple.com/search?term=\(bookKeyword)&country=jp&media=ebook") else { return }

        // URLリクエストの生成
        let request = URLRequest(url: url)

        // URLにアクセス
        URLSession.shared.dataTask(with: request) { data, response, error in

            if let data = data {
                let decoder = JSONDecoder()
                guard let decodedResponse = try? decoder.decode(Response.self, from: data) else {
                    print("Error")
                    return
                }

                DispatchQueue.main.async {
                    results = decodedResponse.results
                }
            } else {
                print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
            }
        }.resume()
    }
}

//struct BookListView_Previews: PreviewProvider {
//    static var previews: some View {
//        BookListView(bookKeyword: <#Binding<String>#>)
//    }
//}
