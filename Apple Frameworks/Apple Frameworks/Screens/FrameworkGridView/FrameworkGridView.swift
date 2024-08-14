//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Manyuchi, Carrington C on 2024/08/13.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
        
    var body: some View {
        NavigationView {
                List( content: {
                    ForEach(MockData.frameworks, content: { framework in
                        NavigationLink(destination: FrameworkDetailsView(framework: framework, isShowingDetailsView: $viewModel.isShowingDetailsView)) {
                            FrameworkTitleView(framework: framework)
                        }
                    })
                })
                .navigationTitle("🍎 Frameworks")
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
