//
//  ContentView.swift
//  NotesApp
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI



//Created a struct to hold notes
struct Note: Hashable {
    var title: String
    var bio: String
}

struct ContentView: View {
    @State private var notes: [Note] = [] //Created a varibale to hold notes
    
    
    var body: some View {
        NavigationView {
            VStack {
                List { //Put all the notes in a list
                    ForEach(notes, id: \.self) { note in  //List all the notes
                        NavigationLink { // Shows all the Detail Note
                            DetailNoteView(notetitle: note.title, bio: note.bio)
                            
                        } label: {
                            VStack(alignment: .leading) {
                                Text(note.title) //Shows note title in the content view
                                    .font(.headline)
                                Text(note.bio) //Shows bio in the content view
                                    .font(.body)
                            }
                        }
                    }
                }
                    .padding()
                Spacer()
                
                //Add note button
                NavigationLink(destination: {
                    //When the users press the button take them to new note page
                    NewNoteView(notes: $notes)
                        .navigationBarBackButtonHidden(true)
                    
                    
                }, label: {
                        Text("Add Note")
                            .frame(maxWidth: .infinity)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding()
                    
                    
                })
            }
            .navigationTitle("Notes")
            //Show notes as title 
        }
    }
}


#Preview {
    ContentView()
        .scrollDisabled(true)
    //Make the screen not scroll
}
