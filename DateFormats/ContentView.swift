//
//  ContentView.swift
//  DateFormats
//
//  Created by Dongjun Lee on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    let now = Date()
    var body: some View {
        VStack(alignment: .leading) {
            Text("now.formatted()").bold()
            Text(now.formatted())
            Spacer()
            Text("now.formatted(date: .omitted, time: .standard)").bold()
            Text(now.formatted(date: .omitted, time: .standard))
            Spacer()
            Text("now.formatted(date: .abbreviated, time: .complete)").bold()
            Text(now.formatted(date: .abbreviated, time: .complete))
            Spacer()
            Text("now.formatted(date: .long, time: .omitted)").bold()
            Text(now.formatted(date: .long, time: .omitted))
            Spacer()
            Text("now.formatted(date: .numeric, time: .omitted)").bold()
            Text(now.formatted(date: .numeric, time: .omitted))
            Spacer()
            Text("now.formatted(.iso8601)").bold()
            Text(now.formatted(.iso8601))
            Spacer()
            Text("Text(now, format: Date.FormatStyle()").bold()
            Text(now, format: Date.FormatStyle().year())
            Text(now, format: Date.FormatStyle().month())
            Text(now, format: Date.FormatStyle().day())
            Text(now, format: Date.FormatStyle().day().month())
            Text(now, format: Date.FormatStyle().day().month().year())
            Spacer()
            Text("Text(now, format: Date.FormatStyle() with digits").bold()
            Text(now, format: Date.FormatStyle().day().month(.twoDigits))
            Text(now, format: Date.FormatStyle().day().month().year(.twoDigits))
            Text(now, format: Date.FormatStyle().day().month().year(.defaultDigits))
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
