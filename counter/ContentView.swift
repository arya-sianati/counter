//
//  ContentView.swift
//  counter
//
//  Created by Arya Sianati on 5/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var i = 0
    
    var body: some View {
        VStack{
            

            Text(String(i)).font(.largeTitle)
                .foregroundColor(Color.blue).padding(.bottom, 50.0)
                
            
            
            HStack
            {
                Button {
                    neg()
                } label: {
                    Image(systemName:"minus.circle").font(.title)
                }.padding()
                
                Button {
                    add()
                } label: {
                    Image(systemName:"plus.circle").font(.title)
                }.padding()
                
            }.padding(.top, 50.0)
            

            
        }
        
    }
    
    func add()
    {
        i += 1
    }
    func neg()
    {
        if i>0
        {
            i -= 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
