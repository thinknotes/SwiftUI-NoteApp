//
//  NewNoteView.swift
//  NotesApp
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct NewNoteView: View {
    @State var notetitle: String = ""
    @State var bio: String = ""
    @Binding var notes: [Note]
    @Environment(\.dismiss) var dimiss
    var body: some View {
        NavigationView {
            VStack {
                
                VStack {
                    
                    TextField("Title", text: $notetitle)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding()
                        
                    
                    TextField("Enter your note description", text: $bio)
                        .padding()
                        .frame(maxHeight: .infinity)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding()
                        
                        
                }
                
               
                Spacer()
                
                
                
                Button(action: {
                    
                    let newNote = Note(title: notetitle, bio: bio)
                    notes.append(newNote)
                    dimiss()
//                    notetitle = ""
//                    bio = ""
                   
                }, label: {
                    Text("Add Note")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding()
                })
                
//                NavigationLink(destination: {
//                    ContentView().navigationBarBackButtonHidden(true)
//                    let newNote = Note(title: notetitle, bio: bio)
//                    notes.append(newNote)
//                }, label: {
//                    Text("Add Note")
//                        .font(.headline)
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(Color.blue)
//                        .cornerRadius(10)
//                        .padding()
//                })
            }
            .navigationTitle("New Note")
        }
    }
}

#Preview {
    NewNoteView(notes: .constant([]))
}
