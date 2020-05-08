//
//  ContentView.swift
//  KuwaitMosques
//
//  Created by Eng. NS on 5/6/20.
//  Copyright © 2020 EngSrayea. All rights reserved.

/*Text("مسجد العثمان") جبله
Text("مسجد الدبوس") الفحيحيل
Text("مسجد الملا") القصور */

import SwiftUI

struct MosqueListView: View {
    var body: some View {
        
        NavigationView{
            List(mosques){ mosque in NavigationLink(destination: MosqueDetalisView(mosque:  mosque)) {
                MosqueRow(mosque: mosque)
                }
            }.navigationBarTitle("مساجد الكويت").padding(.trailing)
        }.colorScheme(.dark).accentColor(.white)
    }
}

struct MosqueRow: View {
    var mosque: Mosque
    var body: some View {
    HStack{
        Image(mosque.name)
            .resizable()
            .scaledToFill()
            .frame(width:100,height: 100)
            .clipShape(Circle())
        VStack {
            Text(mosque.name)
                .foregroundColor(.white).font(.title)
            Text(mosque.location)
            .foregroundColor(.white)
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        MosqueListView()
        
    }
}
