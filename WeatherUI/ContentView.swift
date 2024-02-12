//
//  ContentView.swift
//  WeatherUI
//
//  Created by Anais Zulfequar on 2024-02-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, Color("lightBlue")],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Toronto, ON")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("70°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
             
                .padding(.bottom, 40)
                
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek:"TUE", imageName:"cloud.sun.fill", temperature:23)
                    
                    WeatherDayView(dayOfWeek:"WED", imageName:"sun.max.fill", temperature:25)
                    
                    WeatherDayView(dayOfWeek:"THU", imageName:"wind.snow", temperature:12)
                    
                    WeatherDayView(dayOfWeek:"FRI", imageName:"sunset.fill", temperature:22)
                    
                    WeatherDayView(dayOfWeek:"SAT", imageName:"snow", temperature:-3)
                    
                }
                Spacer()
                    
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 26, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
