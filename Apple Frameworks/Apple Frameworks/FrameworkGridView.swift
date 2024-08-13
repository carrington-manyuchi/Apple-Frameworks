//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Manyuchi, Carrington C on 2024/08/13.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    ForEach(MockData.frameworks, content: { framework in
                        FrameworkTitleView(framework: framework)
                    })
                })
                .navigationTitle("Carrington Johnson")
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView:  View {
    let framework: Framework
    var body: some View {
        VStack(content: {
            Image(framework.imageName, bundle: nil)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
            .fontWeight(.semibold)
            .scaledToFit()
            .minimumScaleFactor(0.6)
        })
    }
}
