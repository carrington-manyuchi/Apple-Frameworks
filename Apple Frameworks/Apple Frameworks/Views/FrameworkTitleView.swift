//
//  FrameworkTitleView.swift
//  Apple Frameworks
//
//  Created by Manyuchi, Carrington C on 2024/08/14.
//

import SwiftUI

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
        .padding()
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
