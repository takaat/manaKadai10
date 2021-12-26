//
//  ContentView.swift
//  Kadai10
//
//  Created by mana on 2021/12/26.
//

import SwiftUI

struct ContentView: View {
    private let prefectures = ["北海道", "青森県", "岩手県", "宮城県", "秋田県",
                               "山形県", "福島県", "茨城県", "栃木県", "群馬県",
                               "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県",
                               "富山県", "石川県", "福井県", "山梨県", "長野県",
                               "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県",
                               "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県",
                               "鳥取県", "島根県", "岡山県", "広島県", "山口県",
                               "徳島県", "香川県", "愛媛県", "高知県", "福岡県",
                               "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県",
                               "鹿児島県", "沖縄県"]

    var body: some View {
        NavigationView {
            List {
                ForEach(0..<prefectures.count) { index in
                    ListRowView(prefecture: prefectures[index], rowNumber: index, color: selectColor(index))
                        .frame(height: 55)
                        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
            }
        }
    }

    private func selectColor(_ value: Int) -> Color {
        if value % 3 == 0 {
            return .pink
        } else if value % 3 == 1 {
            return .green
        } else {
            return .blue
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListRowView: View {
    let prefecture: String
    let rowNumber: Int
    let color: Color

    var body: some View {
        ZStack {
            color
            HStack {
                Text(prefecture)
                Spacer()
                Text("\(rowNumber + 1)番目の都道府県です")
                    .fontWeight(.thin)
            }
            .padding(.horizontal)
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(prefecture: "東京都", rowNumber: 13, color: .green)
            .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: 55))
    }
}
