//
//  DetailNoteView.swift
//  NotesApp
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct DetailNoteView: View {
    //note title
    @State var notetitle = ""
    //bio
    @State var bio = ""
    var body: some View {
        NavigationView {
            VStack {
                //Shows notes bio
               Text("\(bio)")
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding()
                
                
            }
            .navigationTitle("\(notetitle)")
            //Shows notetitle
        }
    }
}

#Preview {
    DetailNoteView()
}
