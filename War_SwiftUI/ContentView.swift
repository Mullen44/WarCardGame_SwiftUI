//
//  ContentView.swift
//  War_SwiftUI
//
//  Created by Andrew Mullen on 2021-11-17.
//

import SwiftUI

import MapKit

struct ContentView: View {
    
    // Declare properties ->@State is a property wrapper that allows for a change in its value
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore =  0
    @State var cpuScore = 0
    
    
    // Computed Property
    var body: some View {
        
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("logo")
                    .padding()
                Spacer()
                
                
                HStack{
                    Image(playerCard)
                    Image(cpuCard)
                    }
                Spacer()
                Button(action: {
                    
                    // Generate random numbers between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if playerRand < cpuRand {
                        cpuScore += 1
                    }
                    
                }) {
                    Image("dealbutton")
                        .padding()
                }

                
                Spacer()
                HStack{
                    VStack {
                        Text("Player").padding()
                        Text(String(playerScore))
                    }
                    .padding()
                    .foregroundColor(.white)
                    .font(.title)
                    Spacer()
                    VStack {
                        Text("CPU").padding()
                        Text(String(cpuScore))
                    }
                    .padding()
                    .foregroundColor(.white)
                    .font(.title)
                }
            }
        
        }
        
    }// End body Some view
} // End struct ContentView


// This generates the preview on the right

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
.previewInterfaceOrientation(.portrait)
        }
    }
}


//struct MapView: View {
//
//    @State private var region = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 49.265159, longitude: -123.099656),
//        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
//    )
//    var body: some View {
//        Map(coordinateRegion: $region)
//            .edgesIgnoringSafeArea(.all)
//    }
//}
//
//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}

