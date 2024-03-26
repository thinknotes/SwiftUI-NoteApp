//
//  NewNoteView.swift
//  NotesApp
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct NewNoteView: View {
    //Note title
    @State var notetitle: String = ""
    //bio
    @State var bio: String = ""
    //sends the note data back to content view
    @Binding var notes: [Note]
    //Dimiss the sheet back to content view
    @Environment(\.dismiss) var dimiss
    var body: some View {
        NavigationView {
            VStack {
                
                VStack {
                    
                    //TextField which allows the user to type in the title
                    TextField("Title", text: $notetitle)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding()
                        
                        //TextField which allows the user to type in the note description
                    TextField("Enter your note description", text: $bio)
                        .padding()
                        .frame(maxHeight: .infinity)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding()
                        
                        
                }
                
               
                Spacer()
                
                
                //Add note
                Button(action: {
                    
                    
                    if !notetitle.isEmpty && !bio.isEmpty {
                        let newNote = Note(title: notetitle, bio: bio)
                        notes.append(newNote)
                    }
                
                    
                    dimiss()
                   
                }, label: {
                    Text("Add Note")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                    // Changes the color of the button depnding if the feilds are empty
                        .background(bio.isEmpty ? Color.gray : Color.blue)
                        .cornerRadius(10)
                        .padding()
                })
                

            }
            .navigationTitle("New Note")
            //Make title new note
        }
    }
}

#Preview {
    NewNoteView(notes: .constant([]))
}
