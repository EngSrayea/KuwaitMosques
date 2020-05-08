//
//  MosqueDetalisView.swift
//  KuwaitMosques
//
//  Created by Eng. Norii on 5/6/20.
//  Copyright © 2020 EngSrayea. All rights reserved.
//

import SwiftUI

struct SheikhModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            
            .scaledToFill()
                .frame(width:150,height: 160)
                .clipShape(Circle()).overlay(Circle().stroke(Color.white,lineWidth: 4))
        
    }
}

struct MosqueDetalisView: View {
    
    var mosque: Mosque
    
    var body: some View {
        ZStack{
            Image(mosque.name).resizable().scaledToFill().edgesIgnoringSafeArea(.all).frame(width:420,height:370)
                .offset(x: 0, y: -240)
            
                    VStack{
                        Text("  \(mosque.name)  ").frame(height: 100).offset(x: 0, y: 120).foregroundColor(.white).shadow(radius: 10).font(.system(size: 60, weight: .bold, design: .default)).padding()
                        
                        
                        Spacer()
                        
                        ScrollView(.horizontal){
                        HStack(spacing: 35) {
                            Image("فهد الكندري").resizable().modifier(SheikhModifier()).onTapGesture {
                            MusicPlayerKandary.kandary.startBackgroundMusic()
                            }
                            
                            Image("أحمد النفيس").resizable().modifier(SheikhModifier()).onTapGesture {
                            MusicPlayerNafees.nafees.startBackgroundMusic()
                            }
                            
                            Image("فهد المطيري").resizable().modifier(SheikhModifier()).onTapGesture {
                            MusicPlayerMutairi.mutairi.startBackgroundMusic()
                            }
                            
                            }}.offset(x: 0, y: 110)
                        
                        Spacer()
                        
                        List(timings){ timing in
                                TimingRow(timing: timing)
                            }.offset(y: 100).colorScheme(.dark)
            }
        }.background(Color(.black)).edgesIgnoringSafeArea(.all)
    }
}

struct TimingRow: View {
    var timing: Timing
    var body: some View {
    HStack{
        Spacer()
        Text(timing.time)
        .foregroundColor(.white).font(.title)
        Spacer()
        Text(timing.name).foregroundColor(.white).font(.title)
        Spacer()
        }.frame(height: 65)
        
    }
}

struct MosqueDetalisView_Previews: PreviewProvider {
    static var previews: some View {
        MosqueDetalisView(mosque: mosques[0])
    }
}


    


    // @State var BGcolor = Color(#colorLiteral(red: 0.2008109987, green: 0.2026637495, blue: 0.3824403882, alpha: 1))
    
    
        
