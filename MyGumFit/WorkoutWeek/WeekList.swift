//
//  WeekList.swift
//  MyGumFit
//
//  Created by Oschepkov Aleksandr on 15.01.2023.
//

import SwiftUI

struct WeekList: View {

    var body: some View {
        NavigationView {
            List{
                NavigationLink(destination: WorkoutMondey())  {  Text("Понедельник")}
                NavigationLink(destination: WorkoutTuesday()) {  Text("Вторник")}
                NavigationLink(destination: WorkoutTuesday()) {  Text("Среда")}
                NavigationLink(destination: WorkoutTuesday()) {  Text("Четверг")}
                NavigationLink(destination: WorkoutTuesday()) {  Text("Пятница")}
                NavigationLink(destination: WorkoutTuesday()) {  Text("Суббота")}
                NavigationLink(destination: WorkoutTuesday()) {  Text("Воскресенье")}
            }
            //.navigationTitle("План тренировок")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("План тренировок")
                            .font(.system(size: 30))
                            .foregroundColor(Color.black)
                    }
                }
            }
        }
    }
    
}

struct WeekList_Previews: PreviewProvider {
    static var previews: some View {
        WeekList()
    }
}
