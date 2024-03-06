//
//  Notenkasten.swift
//  Grades_v4
//
//  Created by Jakob Erlebach on 06.03.24.
//


import SwiftUI

struct Notenkasten: View {
    
    var note: String
    var testtyp: String
    var accentcolor: Color = .white
    var notencolor: Color = .red
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 27.54)
                .frame(height: 70)
                .foregroundColor(.black)
                .opacity(0.65)
            HStack{
                
                Text(testtyp)
                    .foregroundColor(accentcolor)
                    .font(.title2)
                    .bold()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                 
                Text(note)
                    .foregroundColor(notencolor)
                    .font(.title)
                    .bold()
                    .padding(.trailing, 20)
                
            }
        }.frame(width: 330)
    }
}

#Preview {
    Notenkasten(note: "1,5", testtyp:"1.Klassenarbeit")
}
