
import SwiftUI

struct VibratoLogType: View {
    let hromaticType:String
    @State private var marcatoEmail = ""
    @State private var tremoloPasw = ""
    @State private var dalboardAPasw = ""
    @EnvironmentObject private var navigator: AppNavigator

    var body: some View {
        ZStack{
            Image("sehi_backgrck")
                            .resizable()
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                            .ignoresSafeArea()
            
            //vstack start
            ScrollView{
                VStack(spacing:0){
                    HStack(spacing:12){
                        ZStack{
                            Circle()
                                .fill(Color(red: 196/255, green: 101/255, blue: 255/255))
                                .frame(width: 40, height: 40)
                                .overlay(
                                    Circle()
                                        .stroke(Color.white, lineWidth: 3)
                                )
                            
                            Image("sehi_back")
                                .resizable()
                                .frame(width: 24,height: 24)
                                .onTapGesture {
                                    navigator.pop()
                                }
                        }.frame(width: 40,height: 40)
                        
                        Text(hromaticType == "0" ? "Login" : hromaticType == "1" ? "Sign up" : "Forgot password")
                            .font(.system(size: 20, weight: .black))
                            .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                        Spacer()
                    }
                    Spacer().frame(height: 14)
                    Image("sehi_logo")
                        .resizable()
                        .frame(width:100,height: 100)
                        .cornerRadius(12)
                    Spacer().frame(height: 24)
                    
                    HStack{
                        Text("X36h+rat00WeuFcH5+oCnQ==".brokenchoDecipher())
                            .font(.system(size: 20, weight: .black))
                            .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                        Spacer()
                    }
                    Spacer().frame(height: 14)
                    ZStack(alignment: .leading) {
                        if marcatoEmail.isEmpty {
                            Text("Enter email address")
                                .font(.system(size: 14, weight: .regular))
                                .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255,opacity: 0.4))
                                .padding(.leading, 16)
                        }
                        
                        TextField("", text: $marcatoEmail)
                            .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                            .padding(.vertical,18)
                            .padding(.horizontal,16)
                    }
                    .frame(height: 54)
                    .background(Color.white)
                    .cornerRadius(40)
                    Spacer().frame(height: 24)
                    HStack{
                        Text("wYMgXJEv92yYH45LlDuIRg==".brokenchoDecipher())
                            .font(.system(size: 20, weight: .black))
                            .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                        Spacer()
                        if hromaticType == "0" {
                            Text("FORGOT?")
                                .font(.system(size: 14, weight: .regular))
                                .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                                .underline(true, color: Color(red: 6/255, green: 3/255, blue: 9/255))
                                .onTapGesture {
                                    navigator.showLogin(hromaticType: "2")
                                }
                        }
                        
                    }
                    Spacer().frame(height: 14)
                    ZStack(alignment: .leading) {
                        if tremoloPasw.isEmpty {
                            Text("Enter password")
                                .font(.system(size: 14, weight: .regular))
                                .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255,opacity: 0.4))
                                .padding(.leading, 16)
                        }
                        
                        SecureField("", text: $tremoloPasw)
                            .foregroundColor(.black)
                            .padding(.vertical,18)
                            .padding(.horizontal,16)
                    }
                    .frame(height: 54)
                    .background(Color.white)
                    .cornerRadius(40)
                    
                    if hromaticType != "0" {
                        VStack(spacing:0){
                            Spacer().frame(height: 24)
                            HStack{
                                Text("wYMgXJEv92yYH45LlDuIRg==".brokenchoDecipher())
                                    .font(.system(size: 20, weight: .black))
                                    .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                                   
                                Spacer()
                                
                            }
                            Spacer().frame(height: 14)
                            ZStack(alignment: .leading) {
                                if dalboardAPasw.isEmpty {
                                    Text("Enter password")
                                        .font(.system(size: 14, weight: .regular))
                                        .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255,opacity: 0.4))
                                        .padding(.leading, 16)
                                }
                                
                                SecureField("", text: $dalboardAPasw)
                                    .foregroundColor(.black)
                                    .padding(.vertical,18)
                                    .padding(.horizontal,16)
                            }
                            .frame(height: 54)
                            .background(Color.white)
                            .cornerRadius(40)
                        }
                    }
                    
                    
                    
                    //输入框 end
                    if hromaticType == "0" {
                        Spacer().frame(height: 60)
                        HStack{
                            Text("Don't have an account yet?       ")
                                .font(.system(size: 14, weight: .regular))
                                .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                            Text("SIGN UP >")
                                .font(.system(size: 14, weight: .regular))
                                .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                                .underline(true, color: Color(red: 6/255, green: 3/255, blue: 9/255))
                        }.onTapGesture {
                            navigator.showLogin(hromaticType: "1")
                        }
                    }
                   
                    Spacer().frame(height: 30)
                    
                    HStack{
                        Text(hromaticType == "0" ? "Login" : hromaticType == "1" ? "Sign up" : "Next")
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
                        ).onTapGesture {
                            if marcatoEmail == "" && tremoloPasw == "" {
                                GlobalHUDManager.shared.showToast("Please improve the input box.")
                                return
                            }
                            
                            
                            
                            if hromaticType == "0" {
                                GlobalHUDManager.shared.showLoading()
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
                                    GlobalHUDManager.shared.hideLoading()
                                    let melodicUsers = MelodicUsers()
                                    melodicUsers.loadResults()
                                    
                                    
                                    if let matchedUser = melodicUsers.getResults().first(where: { user in
                                        guard let email = user["X36h+rat00WeuFcH5+oCnQ==".brokenchoDecipher()] as? String,
                                              let password = user["wYMgXJEv92yYH45LlDuIRg==".brokenchoDecipher()] as? String else { return false }
                                        return email == marcatoEmail && password == tremoloPasw
                                    }) {
                                        
                                        
                                        
                                        DiminishedUtil.shared.uprightLogUser = matchedUser
                                        navigator.dismissActiveModal()
                                        
                                        
                                    } else {
                                        GlobalHUDManager.shared.showToast("Incorrect email or password")
                                        
                                    }
                                }
                            }else if hromaticType == "1" {
                                DiminishedUtil.shared.articulatEmail = marcatoEmail
                                DiminishedUtil.shared.renthesisPasw = tremoloPasw
                                navigator.showWeb(
                                    url: "\(DiminishedUtil.shared.retrogradeUrl)newsignup"
                                )
                            }
                        
                        }
                    
                    Spacer()
                }.padding(.horizontal,20)
            }
            //vstack end
        }.onTapGesture {
            UIApplication.shared.sendAction(
                #selector(UIResponder.resignFirstResponder),
                to: nil,
                from: nil,
                for: nil
            )
        }
    }
}
