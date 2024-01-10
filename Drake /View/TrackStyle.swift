import Foundation
import SwiftUI

public struct TrackStyle{
    public static func albumColor(_ album: String) -> Color{
        switch album {
        case "Scary Hours 2":
            return Color(red: 44/255, green: 56/255, blue: 137/250)
        case "So Far Gone":
            return Color.black
        case "Thank Me Later":
            return Color.white
        case "Take Care":
            return Color(red: 27/255, green: 15/255, blue: 12/255)
        case "Nothing Was the Same":
            return Color.white
        case "If You're Reading This It's To Late":
            return Color.white
        case "What A Time To Be Alive":
            return Color.white
        case "Views":
            return Color(red:74/255, green: 91/255, blue: 98/255)
        case "More Life":
            return Color.black
        case "Scorpion":
            return Color(red: 244/255, green: 244/255, blue: 244/255)
        case "Care Package":
            return Color.black
        case "Dark Lane Demo Tapes":
            return Color(red: 80/255, green: 90/255, blue: 4/255)
        case "Certified Lover Boy":
            return Color.white
        case "Honestly, Nevermind":
            return Color.black
        case "Her Loss":
            return Color(red: 190/255, green: 157/255, blue: 178/255)
        case "For All The Dogs":
            return Color(red: 179/255, green: 184/255, blue: 180/255)
        default:
            return Color(red: 0.1122, green: 0.1287, blue: 0)
        }
    }
    public static func albumColor2(_ album: String) -> Color{
        switch album{
        case "Scary Hours 2":
            return Color.white
        case "So Far Gone":
            return Color(red: 203/255, green: 49/255, blue: 49/255)
        case "Thank Me Later":
            return Color(red: 196/255, green: 63/255, blue: 63/255)
        case "Take Care":
            return Color(red: 158/255, green: 116/255, blue: 73/255)
        case "Nothing Was the Same":
            return Color.blue
        case "If You're Reading This It's To Late":
            return Color.black
        case "What A Time To Be Alive":
            return Color.gray
        case "Views":
            return Color(red: 38/255, green: 21/255, blue: 29/255)
        case "More Life":
            return Color(red: 12/255, green: 96/255, blue:167/255)
        case "Scorpion":
            return Color(red: 45/255, green: 45/255, blue: 45/255)
        case "Care Package":
            return Color(red: 153/255, green: 167/255, blue: 173/255)
        case "Dark Lane Demo Tapes":
            return Color(red: 18/255, green: 22/255, blue: 7/255)
        case "Certified Lover Boy":
            return Color(red: 210/255, green: 62/255, blue: 165/255)
        case "Honestly, Nevermind":
            return Color(red: 219/255, green: 150/255, blue: 163/255)
        case "Her Loss":
            return Color(red: 238/255, green: 232/255, blue: 216/255)
        case "For All The Dogs":
            return Color(red: 162/255, green: 50/255, blue: 45/255)
        default:
            return Color.white
        }
    }
}
