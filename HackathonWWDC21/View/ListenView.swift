//
//  ListenView.swift
//  HackathonWWDC21
//
//  Created by Matheus S. Moreira on 13/06/21.
//

import SwiftUI

struct ListenView: View {
    @Binding var tappedToListen: Bool
    
    var body: some View {
        ZStack {
            Gradient.pinkGradient
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Tap to listen")
                    .font(.title)
                    .fontWeight(.semibold)
                    .offset(y: 100)
                
                Spacer()
                
                Button(action: { tappedToListen = true}) {
                    //Ellipse()
                        //.fill(Color.black)
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)
                }
                
                Spacer()
            }
        }
    }
}

struct ListenView_Previews: PreviewProvider {
    static var previews: some View {
        ListenView(tappedToListen: .constant(false))
    }
}
