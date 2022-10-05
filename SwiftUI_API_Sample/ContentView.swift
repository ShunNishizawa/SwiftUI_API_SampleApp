//
//  ContentView.swift
//  SwiftUI_API_Sample
//
//  Created by 西澤駿 on 2022/10/05.
//

import SwiftUI

struct ContentView: View {

    @State private var isShowingBookListView = false            // 本の検索結果ページ切り替えフラグ
    @State private var bookKeyword = ""                     // 検索したい本のタイトル

    var body: some View {
        NavigationView {
            VStack{
                TextField("タイトル", text: $bookKeyword)
                Button("検索"){

                    isShowingBookListView.toggle()
                }
                NavigationLink(destination: BookListView(bookKeyword: $bookKeyword), isActive: $isShowingBookListView) {
                    EmptyView()
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
