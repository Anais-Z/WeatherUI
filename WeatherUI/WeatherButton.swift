//
//  WeatherButton.swift
//  WeatherUI
//
//  Created by Anais Zulfequar on 2024-02-12.
//

import Foundation
import SwiftUI

struct WeatherButtonView: View{
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View{
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size:20, weight: .bold,
               design: .default))
            .cornerRadius(10)
    }
}
