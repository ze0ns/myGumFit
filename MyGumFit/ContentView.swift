//
//  ContentView.swift
//  MyGumFit
//
//  Created by Oschepkov Aleksandr on 15.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State var tabSelection: Int = 0
    
    var body: some View {
        
        TabView(selection: $tabSelection) {
            WeekList()
                .tag(0)
                .tabItem{
                    Label("Тренировки", systemImage: "dumbbell")
                }
         
            FoodsPlan()
                .tag(1)
                .tabItem{
                    Label("Питание", systemImage: "fork.knife")
                }
            Text("🎓")
                .font(.system(size: 300))
                .tag(2)
                .tabItem{
                    Label("Упражения", systemImage: "list.bullet.clipboard")
                }
            Text("🎓")
                .font(.system(size: 300))
                .tag(3)
                .tabItem{
                    Label("Справочник", systemImage: "doc.badge.ellipsis")
                }
         
            Text("🎓")
                .font(.system(size: 300))
                .tag(4)
                .tabItem{
                    Label("Ещё", systemImage: "ellipsis")
                }
 
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
