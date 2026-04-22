
import SwiftUI

struct CrescendoStart: View {
    @State private var giaturaCheck = false
    @EnvironmentObject private var navigator: AppNavigator
    @State private var arpeggioShow = false
    var body: some View {
        ZStack{
            Image("sehi_backgrck")
                            .resizable()
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                            .ignoresSafeArea()
            Image("sehi_nbhai")
                            .resizable()
                            .frame(height: 486)
                            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
                            .ignoresSafeArea()
            
            VStack(spacing:0){
                Spacer()
                Image("sehi_logo")
                                .resizable()
                                .frame(width:100,height: 100)
                                .cornerRadius(12)
                Spacer().frame(height: 58)
                ZStack{
                    HStack{
                        Text("I'm new")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                    }.frame(width: 241,height: 51)
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
                    Image("sehi_hu")
                                    .resizable()
                                    .frame(width:60.74,height: 62.7)
                                    .frame(maxWidth: .infinity,alignment:.leading)
                                    .offset(x:-10)
                }.frame(width: 241,height: 51)
                    .onTapGesture {
                        if(!giaturaCheck){
                            GlobalHUDManager.shared.showToast("Please agree to the agreement first.")
                            return
                        }
                        
                        if(!DiminishedUtil.shared.RubatoIs){
                            arpeggioShow = true
                            return
                        }
                        
                        GlobalHUDManager.shared.showLoading()
                            
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                let melodicUsers = MelodicUsers()
                                
                                if let user = melodicUsers.getAugmente(by: "6") {
                                    DiminishedUtil.shared.uprightLogUser = user
                                }
                                
                                GlobalHUDManager.shared.hideLoading()
                                navigator.dismissActiveModal()
                            }
                    }
                Spacer().frame(height: 20)
                ZStack{
                    HStack{
                        Text("Email Login")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                    }.frame(width: 241,height: 51)
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
                    Image("sehi_yx")
                                    .resizable()
                                    .frame(width:60.74,height: 62.7)
                                    .frame(maxWidth: .infinity,alignment:.leading)
                                    .offset(x:-10)
                }.frame(width: 241,height: 51)
                    .onTapGesture {
                        if(!giaturaCheck){
                            GlobalHUDManager.shared.showToast("Please agree to the agreement first.")
                            return
                        }
                      
                        
                        if(!DiminishedUtil.shared.RubatoIs){
                            arpeggioShow = true
                            return
                        }
                        navigator.showLogin(hromaticType: "0")
                    }
                
                Spacer().frame(height: 68)
                
                HStack(spacing:0){
                    
                    ZStack{
                        Image("sehi_check")
                                        .resizable()
                                        .frame(width:20,height: 20)
                        if giaturaCheck {
                            Image("sehi_checks")
                                            .resizable()
                                            .frame(width:9.5,height: 7.5)
                        }
                    }.onTapGesture {
                        withAnimation{
                            giaturaCheck = !giaturaCheck
                        }
                    }
                    
                    Text(" Agree with ")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.black)
                        
                    Text("User Agreement")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.black)
                        .underline(true, color: .black)
                        .onTapGesture {
                            navigator.showWeb(
                                url: "\(DiminishedUtil.shared.retrogradeUrl)userAgreement"
                            )
                        }
                    Text(" and ")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.black)
                    Text("Privacy Policy")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.black)
                        .underline(true, color: .black)
                        .onTapGesture {
                            navigator.showWeb(
                                url: "\(DiminishedUtil.shared.retrogradeUrl)privacyPolicy"
                            )
                        }
                }
                                
            }
            
            if arpeggioShow {
                FortissimoEula(tremoloShow: $arpeggioShow)
            }
        }
    }
}
