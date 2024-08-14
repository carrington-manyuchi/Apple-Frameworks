//
//  FrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Manyuchi, Carrington C on 2024/08/14.
//

import SwiftUI


final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailsView = true
        }
    }
    
    @Published var isShowingDetailsView = false
}
