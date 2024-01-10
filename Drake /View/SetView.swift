import Foundation
import SwiftUI

struct SetView:View {
    let albumsCovers1 = ["So_Far_Gone", "Thank_Me_Later", "Take_Care", "Nothing_Was_The_Same", "If_You_Reading_This_Its_Too_Late", "What_A_Time_To-Be_Alive", "Views"]
    let albumsCovers2 = ["More_Life", "Scorpion", "Care_Package", "Dark_Lane_Demo_Tape", "Certified_Lover_Boy", "Honestly_Nevermind", "Her_Loss", "For_All_The_Dogs"]
    var body: some View {
        ZStack{
            Color(red: 0.2471, green: 0, blue: 0.1137)
                .ignoresSafeArea()
            VStack(spacing:50){
                Text("Game Rules")
                    .foregroundColor(Color.white)
                    .font(.custom("Helvetica-Bold", size: 30))
                HStack{
                    Image(systemName: "smallcircle.circle")
                        .foregroundColor(Color.white)
                    Text("Phasellus consectetur mauris et metus aliquet, at ornare nunc bibendum. Vivamus eget purus placerat, pulvinar turpis id, hendrerit ipsum.")
                        .foregroundColor(Color.white)
                        .font(.custom("Helvetica-Bold", size: 15))
                        .multilineTextAlignment(.center)
                }
                HStack{
                    Image(systemName: "smallcircle.circle")
                        .foregroundColor(Color.white)
                    Text("Phasellus consectetur mauris et metus aliquet, at ornare nunc bibendum. Vivamus eget purus placerat, pulvinar turpis id, hendrerit ipsum.")
                        .foregroundColor(Color.white)
                        .font(.custom("Helvetica-Bold", size: 15))
                        .multilineTextAlignment(.center)
                }
                HStack{
                    Image(systemName: "smallcircle.circle")
                        .foregroundColor(Color.white)
                    Text("Cras dapibus vulputate ante non accumsan. Sed et nunc ac massa vehicula rhoncus. Integer vel feugiat massa. Nam luctus est odio.")
                        .foregroundColor(Color.white)
                        .font(.custom("Helvetica-Bold", size: 15))
                        .multilineTextAlignment(.center)
                }
                HStack{
                    Image(systemName: "smallcircle.circle")
                        .foregroundColor(Color.white)
                    Text("Nam tincidunt volutpat ipsum, ac euismod nunc. Maecenas dignissim urna massa, id vulputate libero dapibus et. Proin dignissim est et euismod faucibus.")
                        .foregroundColor(Color.white)
                        .font(.custom("Helvetica-Bold", size: 15))
                        .multilineTextAlignment(.center)
                }
                HStack{
                    ForEach(albumsCovers1, id: \.self) {albumCover in
                        Image(albumCover)
                            .resizable()
                            .frame(width: 25, height: 25)}
                }
                
                HStack{
                    ForEach(albumsCovers2, id: \.self)
                    {albumCover in
                        Image(albumCover)
                            .resizable()
                            .frame(width: 25, height: 25)}
                }
            }
        }
        
    }
    
}



#Preview{
    SetView()
}

