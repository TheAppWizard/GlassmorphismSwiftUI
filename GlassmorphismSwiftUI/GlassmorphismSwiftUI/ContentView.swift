//
//  ContentView.swift
//  GlassmorphismSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 25/07/21.
//MARK:- The App Wizard
//MARK:- Instagram : theappwizard2408



import SwiftUI


struct ContentView: View {
    var body: some View {
        Glassmorphism()
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
   



















struct Glassmorphism: View {
    
    @State private var animateshape = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.purple, .pink.opacity(0.3), .pink]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
           
           
            
            ZStack {
                
                //Circle
               Image("e1")
                .resizable()
                    .frame(width: 300, height: 300)
                    .offset(x: 150, y: -200)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6699851155, blue: 0.8290407062, alpha: 1)).opacity(1))
                    .blur(radius: 10)
                    .scaleEffect(animateshape ? 0.8 : 1)
               
                    
                     
                //pyramid
                Image("e2")
                 .resizable()
                     .frame(width: 300, height: 300)
                     .offset(x: -200, y: 350)
                     .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6699851155, blue: 0.8290407062, alpha: 1)).opacity(1))
                     .blur(radius: 10)
                     .scaleEffect(animateshape ? 0.8 : 1)
                   
                GlassWindow()
                    .offset(x: animateshape ? 0 : 400, y: 0)
                   
                
                GlassWindow()
                    .offset(x: animateshape ? -400 : 0, y: 0)
                   
                
                //semi-circle
                Image("e3")
                 .resizable()
                     .frame(width: 300, height: 300)
                     .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6699851155, blue: 0.8290407062, alpha: 1)).opacity(1))
                      .blur(radius: 1)
                    .rotationEffect(.degrees(animateshape ? 15 : -15))
                    .offset(x: 150, y: 200)
                    
                
                
                //square
                Image("e4")
                 .resizable()
                     .frame(width: 200, height: 200)
                     .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6699851155, blue: 0.8290407062, alpha: 1)).opacity(1))
                     .blur(radius: 1)
                    .rotationEffect(.degrees(animateshape ? 15 : -15))
                    .offset(x: -150, y: -300)
                   
                
            }
             .animation(Animation.easeIn(duration: 2).repeatForever(autoreverses: true))
             .onAppear(){
                    self.animateshape.toggle()
                        }
            
        }
        
    }
}
//


struct GlassWindow: View {
    
   
    
    var body: some View {
        
    
        ZStack() {
            
              RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(.white).opacity(0.3)
                .frame(width: 380, height: 480)
                .shadow(color: Color.black.opacity(0.05), radius: 10, x: 0, y: 10)
                .blur(radius: 1)
        
            
            
            
            VStack{
                Image("title")
                .resizable()
                .frame(width: 300, height: 100, alignment: .center)
                    .offset(x: 0, y: -100)
               
               }
            
           }
        
    }
}


