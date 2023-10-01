//
//  CardView.swift
//  Hike
//
//  Created by Noha Hamdy on 16/09/2023.
//

import SwiftUI

struct CardView: View {
    
    @State private var randomNumber: Int = 1
    @State private var imageNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    //MARK: -function
    func randomImage(){
        print("the button was pressed")
        print("the status old image number == \(imageNumber)")
        repeat{
            randomNumber = Int.random(in: 1...5)
            print("ACTION: Random number generated == \(randomNumber)")

        }
        while randomNumber == imageNumber
        imageNumber = randomNumber
                print("result: new image number == \(imageNumber)")
                print("----the end---")
                print("\n")
    }
    
    var body: some View {
        //MARK: PROPERTIES
     
        
        // MARK: CARD
        
        ZStack{
            CustomBackgroundView()
            VStack{
                //MARK: - Header
                VStack (alignment: .leading ) {
                    HStack {
                        Text("Hiking")
                          .fontWeight(.black)
                          .font(.system(size: 52))
                          .foregroundStyle(
                            LinearGradient(
                              colors: [
                                .customGrayLight,
                                .customGrayMedium],
                              startPoint: .top,
                              endPoint: .bottom)
                      )
                        Spacer()
                        
                        Button {
                          // ACTION: Show a Sheet
                            isShowingSheet.toggle()
                          print("The button was pressed.")
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet){
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                            
                            
                        }
                
                    }
                    
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)

                }//MARK: HEADER
                .padding(.horizontal,30)
                //MARK: - MAIN CONTENT
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                    .scaledToFit()
                    .animation(.default, value: imageNumber)
                }//: ZSTACK
                
                //MARK: - FOOTER
                
                Button{
                    //ACTION: Generate a random number
                    randomImage()
                }label:{
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            .linearGradient(
                                colors: [
                                    .customGreenLight, .customGreenMedium
                            ],
                            startPoint: .top,
                            endPoint: .bottom)
                        ).shadow(
                            color:.black.opacity(0.25),radius: 0.25,x:1,y:2)
                    
                }
                .buttonStyle(GradientButton())
            }//: VSTACK
        }// : CARD
        .frame(width:320,height:570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
