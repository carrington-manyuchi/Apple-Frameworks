//
//  FrameworkDetailsView.swift
//  Apple Frameworks
//
//  Created by Manyuchi, Carrington C on 2024/08/13.
//

import SwiftUI

struct FrameworkDetailsView: View {
    
    var framework: Framework
    @Binding var isShowingDetailsView: Bool
    @State private var isShowingSafariView = false

    var body: some View {
        
        VStack {
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button(action: {
                isShowingSafariView = true
            }, label: {
                AFButton(title: "Learn More")
            })
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}

#Preview {
    FrameworkDetailsView(framework: MockData.sampleFramework,
                         isShowingDetailsView: .constant(false))
}
