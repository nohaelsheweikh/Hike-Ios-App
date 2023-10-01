//
//  SettingsView.swift
//  Hike
//
//  Created by Noha Hamdy on 25/09/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
            //MARK: - SECTION HEADER
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size:80,weight: .black))
                    
                    VStack (spacing : -10){
                        Text("Hike")
                            .font(.system(size:66, weight:.black))
                        
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80 , weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [.customGreenLight,.customGreenMedium,
                                            .customGreenDark],
                                   startPoint: .top, endPoint: .bottom)
                )
                .padding(.top,8)
                VStack(spacing:8){
                    Text("Wherecan you find \n perfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. the hike that you hope to do again someday. \n Find the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,16)
                .frame(maxWidth: .infinity)
            }//: HEADER
            .listRowSeparator(.hidden)
            //MARK: - SECTION: ICONS
            
            
            //MARK: - SECTION: ABOUT
            Section (
                header: Text("About the application"),
                footer: HStack{
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }.padding(.vertical,8)
            ){
                // 1. Basic LabeledContent
//                LabeledContent("Application",value:"Hike")
//
                
                // 2. Advanced Labeled content
                CustomListRowView(
                    rowLabel: "Application",
                    rowIcon: "Apps.iphone",
                    rowContent: "HIKE",
                    rowTintColor: .blue
                )
                
                CustomListRowView(
                    rowLabel: "Compatibility",
                    rowIcon: "info.circle",
                    rowContent: "iOS,ipadOS",
                    rowTintColor: .red
                )
                
                
                CustomListRowView(
                    rowLabel: "Version",
                    rowIcon: "swift",
                    rowContent: "Swift",
                    rowTintColor: .orange
                )
                
                CustomListRowView(
                    rowLabel: "Technology",
                    rowIcon: "gear",
                    rowContent: "1.0",
                    rowTintColor: .purple
                )
                
                CustomListRowView(
                    rowLabel: "Developer",
                    rowIcon: "ellipsis.curlybraces",
                    rowContent: "Noha Hamdy",
                    rowTintColor: .mint
                )
                CustomListRowView(
                    rowLabel: "Desinger",
                    rowIcon: "paintpalette",
                    rowContent: "Robert Petras",
                    rowTintColor: .pink
                )
                
                CustomListRowView(
                    rowLabel: "Website",
                    rowIcon: "globe",
                    rowTintColor: .indigo, rowLinkLabel: "Noha's portfolio",
                    rowLinkDestination: "https://nohaelsheweikh.github.io/portfolio/"
                )
               
            }//: Section
            
        }//: LIST
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
