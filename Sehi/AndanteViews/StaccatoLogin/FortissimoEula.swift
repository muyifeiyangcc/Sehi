
import SwiftUI

struct FortissimoEula: View {
    @Binding var tremoloShow: Bool
    var body: some View {
        ZStack{
            Color.black.opacity(0.45)
                            .ignoresSafeArea()
                            .onTapGesture {
                                tremoloShow = false
                            }
        VStack(spacing:20){
            ZStack{
                VStack(spacing:0){
                    Spacer().frame(height: 24)
                    Text("EULA")
                        .font(.system(size: 20, weight: .black))
                        .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                    Spacer().frame(height: 8)
                    
                    Text("Welcome to Sehi! To make a better place, \nthe following content is not allowed inthe \napp in particular\n1.Any content about child harm, \npornography related detrimental to \nchildren.\n2. Fake and harmful messages about \nrecent or current events.\n3. Any violence,bullying content, publicly \npromotes pornography and other content.\n\nIf we find any content including and not \nlimited to the above violations your \ncontent will be deleted and account will \nbebanned. By clicking the above \nbutton,youagreeto the Terms of Use and \nPrivacy Policy")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                        .padding(.horizontal,18)
                    
                    Spacer().frame(height: 24)
                    HStack{
                        Text("I agree")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                    }.frame(width: 161,height: 51)
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [
                                    Color(red: 153/255, green: 255/255, blue: 214/255),
                                    Color(red: 150/255, green: 222/255, blue: 255/255),
                                    Color(red: 191/255, green: 89/255, blue: 255/255),
                                    Color(red: 197/255, green: 103/255, blue: 255/255),
                                ]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 189)
                                .stroke(Color.white, lineWidth: 4.5)
                        )
                        .clipShape(
                            RoundedRectangle(cornerRadius: 189)
                        )
                        .contentShape(Rectangle())
                        .onTapGesture {
                            DiminishedUtil.shared.RubatoIs = true
                            tremoloShow = false
                        }
                    Spacer().frame(height: 24)
                }
            }.frame(width: 314,height: 440)
                .background(Color.white)
                .cornerRadius(43.76)
                .overlay(
                    RoundedRectangle(cornerRadius: 43.76)
                        .stroke(
                            LinearGradient(
                                colors: [
                                    Color(red: 151/255, green: 229/255, blue: 246/255),
                                    Color(red: 190/255, green: 92/255, blue: 255/255),
                                    Color(red: 195/255, green: 99/255, blue: 255/255),
                                ],
                                startPoint: .leading,
                                endPoint: .trailing
                            ),
                            lineWidth: 4.49
                        )
                )
            ZStack{
                Image("sehi_close")
                    .resizable()
                    .frame(width: 34,height: 34)
            }.frame(width: 48.06,height: 51)
                .background(Color.white)
                .cornerRadius(19.5)
                .overlay(
                    RoundedRectangle(cornerRadius: 19.5)
                        .stroke(
                            LinearGradient(
                                colors: [
                                    Color(red: 151/255, green: 229/255, blue: 246/255),
                                    Color(red: 190/255, green: 92/255, blue: 255/255),
                                    Color(red: 195/255, green: 99/255, blue: 255/255),
                                ],
                                startPoint: .leading,
                                endPoint: .trailing
                            ),
                            lineWidth: 4.49
                        )
                )
            
            
        }
    }
        
    }
}
