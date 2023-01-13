//
//  FullTextSwiftUIView.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 12.01.2023.
//

import SwiftUI

struct FullTextSwiftUIView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .padding()
    }
}

struct FullTextSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FullTextSwiftUIView(text: "Here")
    }
}
