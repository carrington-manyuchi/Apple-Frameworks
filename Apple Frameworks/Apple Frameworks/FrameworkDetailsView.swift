//
//  FrameworkDetailsView.swift
//  Apple Frameworks
//
//  Created by Manyuchi, Carrington C on 2024/08/13.
//

import SwiftUI

struct FrameworkDetailsView: View {
    
    var framework: Framework
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                })
            }
            .padding()
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button(action: {}, label: {
                AFButton(title: "Learn More")
            })
        }
    }
}

#Preview {
    FrameworkDetailsView(framework: MockData.sampleFramework)
}
