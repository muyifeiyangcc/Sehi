import SwiftUI
struct HarmonicDiscover: View {
    @State private var rtamentoType:Bool = true
    @State private var fallboardList : [[String:Any]] = OstinatoPosts().getVideoPosts()
    @EnvironmentObject private var navigator: AppNavigator
    @ObservedObject var diminishedUtil = DiminishedUtil.shared
    
    var pinsoundList: [[String: Any]] {
        if rtamentoType {
          
            return fallboardList
        } else {
            
            let mentationFoll = diminishedUtil.uprightLogUser["GRzqXvvooMaYtjcfdA+lgQ==".brokenchoDecipher()] as? [String] ?? []

            return fallboardList.filter { post in
                let ichordnorUid = post["TdVWE+5f7Onr0F+4iwfPVw==".brokenchoDecipher()] as? String ?? ""
                return mentationFoll.contains(ichordnorUid)
            }
        }
    }
    
    
    var body: some View {
        ZStack{
            Image("sehi_backgrck")
                            .resizable()
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                            .ignoresSafeArea()
            VStack(spacing:16){
                HStack(spacing:6){
                    ZStack{
                        if rtamentoType {
                            Image("sehi_select")
                                            .resizable()
                                            .frame(width:33,height: 18)
                                            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottomLeading)
                        }
                        
                        Text("Discover")
                            .font(.system(size: 20, weight:rtamentoType ? .black : .medium))
                            .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255,opacity: rtamentoType ? 1 : 0.6))
                            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
                    }.frame(width:95, height: 28)
                        .onTapGesture {
                            withAnimation{
                                rtamentoType = true
                                
                            }
                        }
                    ZStack{
                        if !rtamentoType {
                            Image("sehi_select")
                                            .resizable()
                                            .frame(width:33,height: 18)
                                            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottomLeading)
                        }
                        Text("Following")
                            .font(.system(size: 20, weight:rtamentoType ? .medium : .black))
                            .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255,opacity: rtamentoType ? 0.6 : 1))
                            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
                    }.frame(width:105, height: 28)
                        .onTapGesture {
                            withAnimation{
                                rtamentoType = false

                            }
                        }
                    Spacer()
                }.padding(.horizontal,20)
                ZStack{
                    ScrollView(showsIndicators: false){
                        VStack(spacing:20){
                            ForEach(pinsoundList.indices,id: \.self){index in
                                var sostenutoUs: [String: Any]? {
                                    MelodicUsers().getAugmente(by: pinsoundList[index]["TdVWE+5f7Onr0F+4iwfPVw==".brokenchoDecipher()] as? String ?? "")
                                }
                                var notecorLike: Bool {
                                    let tritoneList = diminishedUtil.uprightLogUser["k+rJKyoY0pGtx9aDIlNaFQ==".brokenchoDecipher()] as? [String] ?? []
                                    let atonscaPid = pinsoundList[index]["i7mt2GXHjk15k1arw8Jwvw==".brokenchoDecipher()] as? String ?? ""
                                    return tritoneList.contains(atonscaPid)
                                }
                                
                                
                                
                                VStack(spacing:12){
                                    ZStack{
                                        Image("sehi_play")
                                                               .resizable()
                                                               .frame(width:52,height: 52)
                                        VStack{
                                            Spacer()
                                            HStack{
                                                Spacer()
                                                ZStack{
                                                    Image("sehi_botrigthb")
                                                                           .resizable()
                                                                           .frame(width:69.5,height: 57)
                                                    
                                                    Image(notecorLike ? "sehi_zan" : "sehi_nozan")
                                                                           .resizable()
                                                                           .frame(width:40,height: 40)
                                                }.frame(width:69.5,height: 57)
                                            }
                                        }
                                    }.frame(height: 234)
                                        .background(
                                            BridgeImage(terialUrl: (pinsoundList[index]["2KiU2gYnS2LfL+s4upyMaA==".brokenchoDecipher()] as? [String])?.first)
                                                              .scaledToFill()
                                        )
                                     .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(Color.white, lineWidth: 10)
                                     )
                                     .clipShape(
                                            RoundedRectangle(cornerRadius: 20)
                                     )
                                    
                                    HStack(spacing: 0){
                                        BridgeImage(terialUrl: sostenutoUs?["+pYFtlo9C3YSbSOZ3gw+fw==".brokenchoDecipher()] as? String)
                                            .scaledToFill()
                                            .frame(width: 32, height: 32)
                                            .clipShape(Circle())
                                            .overlay(
                                                Circle()
                                                    .stroke(
                                                        LinearGradient(
                                                            colors: [
                                                                Color(red: 151/255, green: 229/255, blue: 246/255),
                                                                Color(red: 190/255, green: 92/255, blue: 255/255),
                                                                Color(red: 195/255, green: 99/255, blue: 255/255)
                                                            ],
                                                            startPoint: .leading,
                                                            endPoint: .trailing
                                                        ),
                                                        lineWidth: 2
                                                    )
                                            )
                                        Text(sostenutoUs?["GXKK426Krs45rD0vX/00NA==".brokenchoDecipher()] as? String ?? "Unknown")
                                                    .font(.system(size: 16, weight: .black))
                                                    .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                                                    .padding(.leading,12)
                                                    .padding(.trailing,15)
                                        Text(pinsoundList[index]["pNKzqHFEYMANTYwojnGSng==".brokenchoDecipher()] as? String ?? "")
                                                    .font(.system(size: 16, weight: .regular))
                                                    .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                                        Spacer()
                                    }
                                }.padding(.horizontal,20)
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    navigator.showWeb(
                                        url: "\(diminishedUtil.retrogradeUrl)videoPostDetails/\((pinsoundList[index]["i7mt2GXHjk15k1arw8Jwvw==".brokenchoDecipher()] as? String) ?? "")",
                                        onLogin: {
                                            navigator.showLogin(hromaticType: "0")
                                        }
                                    )
                                }
                            }
                           //for end
                        }.padding(.bottom,90)
                        //vastck end
                    }
                    //scro end
                    
                    ZStack{
                        HStack{
                            Text("post")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.white)
                                .padding(.leading,28)
                                
                        }.frame(width: 115.5,height: 51)
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
                        Image("sehi_add")
                                        .resizable()
                                        .frame(width:60.74,height: 62.7)
                                        .frame(maxWidth: .infinity,alignment:.leading)
                                        .offset(x:-10)
                    }.frame(width: 115.5,height: 51)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            if((DiminishedUtil.shared.uprightLogUser["QKPnWrCiuJJ5oWaPS7kOLQ==".brokenchoDecipher()] as? Int) ?? 0 == 1){
                                navigator.showBrokenchoGolog()
                                return
                            }
                            navigator.showWeb(
                                url: "\(DiminishedUtil.shared.retrogradeUrl)publishVideoPost"
                            )
                        }
                        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottomTrailing)
                        .padding(.bottom,100)
                        .padding(.trailing,20)
                }
                //zstack end
            }
        }
    }
}
