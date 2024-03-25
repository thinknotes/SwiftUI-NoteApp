//
//  DetailNoteView.swift
//  NotesApp
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct DetailNoteView: View {
    @State var notetitle = ""
    @State var bio = ""
    var body: some View {
        NavigationView {
            VStack {
               Text("")
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding()
                
                
            }
            .navigationTitle("\(notetitle)")
        }
    }
}

#Preview {
    DetailNoteView()
}
