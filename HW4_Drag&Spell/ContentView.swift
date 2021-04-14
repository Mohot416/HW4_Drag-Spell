//
//  ContentView.swift
//  HW4_Drag&Spell
//
//  Created by User05 on 2021/4/11.
//

import SwiftUI

struct ContentView: View {
    @State private var offset = CGSize.zero
    @State private var newPos = CGSize.zero
    var dragGesture: some Gesture{
        DragGesture().onChanged({value in
            offset.width = newPos.width + value.translation.width
            offset.height = newPos.height + value.translation.height
        }).onEnded({value in newPos = offset})
    }
    var body: some View {
        ZStack{
            Image("BackGround").resizable().scaledToFill().frame(width: 1000, height: 600, alignment: .center)
            VStack{
                //baguette
                Image("法國麵包").resizable().scaledToFit().frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                HStack{
                    Text(frch_letters[1].letter).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color(.gray))
                    Text(frch_letters[0].letter).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color(.gray))
                    Text("g").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color(.gray))
                    Text("u").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color(.gray))
                    Text("e").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color(.gray))
                    Text("t").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color(.gray))
                    Text("t").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color(.gray))
                    Text("e").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color(.gray))
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
