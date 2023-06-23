//
//  SessionSwiftUIView.swift
//  Super_App
//
//  Created by tw on 2023/06/23.
//

import SwiftUI

struct SessionSwiftUIView: View {
    
    @State var sessions: [String] = ["TipKit", "Test"]
    
    var body: some View {
        List{
            ForEach(sessions, id: \.self) { session in
                NavigationLink {
                    TipKitView()
                } label: {
                    Text(session)
                }
            }
        }
    }
}

struct SessionSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SessionSwiftUIView()
    }
}
