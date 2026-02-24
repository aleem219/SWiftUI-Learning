//
//  DatePickerBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 23/02/26.
//

import SwiftUI

struct DatePickerBootCamp: View {
    @State var selectedDate:Date = Date()
    let startingDate:Date = Calendar.current.date(from: DateComponents(year: 2018))!
    let endingDate:Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatteer = DateFormatter()
        formatteer.dateStyle = .medium
        return formatteer
        // checking rerpository
    }
    
    
    var body: some View {
        
        VStack {
            //        DatePicker("Select a Date", selection: $selectedDate)
            //   DatePicker("Select a Date",
            //              selection: $selectedDate,
            //              displayedComponents: [.date])
            Text("Selected Date is:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
                    DatePicker("Select a Date",
                               selection: $selectedDate,
                               in: startingDate...endingDate, displayedComponents: [.date])
                        .accentColor(Color.green)
            //            .datePickerStyle(GraphicalDatePickerStyle())
                        .datePickerStyle(CompactDatePickerStyle())
        }
        
    }
}

#Preview {
    DatePickerBootCamp()
}


