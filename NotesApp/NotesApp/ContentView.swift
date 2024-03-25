//
//  ContentView.swift
//  NotesApp
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI



struct Note: Hashable {
    var title: String
    var bio: String
}

struct ContentView: View {
    @State private var notes: [Note] = []
    
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(notes, id: \.self) { note in
                        VStack(alignment: .leading) {
                            Text(note.title)
                                .font(.headline)
                            Text(note.bio)
                                .font(.body)
                        }
                    }
                }
                    .padding()
                Spacer()
                
                NavigationLink(destination: {
                    NewNoteView(notes: $notes)/*.navigationBarBackButtonHidden(true)*/
                }, label: {
                    Text("Add Note")
                        .frame(maxWidth: .infinity)
                        //                        .frame(height: -100)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding()
                })
            }
            .navigationTitle("Notes")
        }
    }
}


#Preview {
    ContentView()
}
