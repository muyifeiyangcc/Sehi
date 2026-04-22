
import SwiftUI

struct AllegrettoHome: View {
    @State private var rtamentoType:Bool = true
    @EnvironmentObject private var navigator: AppNavigator
    @State private var intonationList : [[String:Any]] = OstinatoPosts().getImagePosts()
    
    var dipoappList: [[String: Any]] {
        let bridtrige = OstinatoPosts().getImagePosts()

        if rtamentoType {
           
            return bridtrige
        } else {
           
            let nblorackFoll = DiminishedUtil.shared.uprightLogUser["GRzqXvvooMaYtjcfdA+lgQ==".brokenchoDecipher()] as? [String] ?? []

            return bridtrige.filter { post in
                let userId = post["TdVWE+5f7Onr0F+4iwfPVw==".brokenchoDecipher()] as? String ?? ""
                return nblorackFoll.contains(userId)
            }
        }
    }
    var body: some View {
        ZStack{
            Image("sehi_backgrck")
                            .resizable()
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                            .ignoresSafeArea()
            ScrollView{
                VStack(spacing:24){
                    ZStack{
                        Image("sehi_biaot")
                                           .resizable()
                                           .frame(width:67,height: 36)
                                           .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottomLeading)
                                           .padding(.leading,20)
                                           .padding(.bottom,162)
                        
                        
                            Image("sehi_aibeij")
                                               .resizable()
                                               .frame(width:161,height: 72)
                                               .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottomTrailing)
                                               .padding(.trailing,33)
                                               .padding(.bottom,53)
                        
                        HStack(spacing:4){
                            
                            Image("sehi_shit")
                                                            .resizable()
                                                            .frame(width:26,height: 26)
                            Text("Go！")
                                        .font(.system(size: 20, weight: .black))
                                        .foregroundColor(.clear)
                                            .overlay(
                                                LinearGradient(
                                                    colors: [
                                                        Color(red: 153/255, green: 255/255, blue: 214/255),
                                                        Color(red: 150/255, green: 222/255, blue: 255/255),
                                                        Color(red: 191/255, green: 89/255, blue: 255/255),
                                                        Color(red: 197/255, green: 103/255, blue: 255/255),
                                                    ],
                                                    startPoint: .leading,
                                                    endPoint: .trailing
                                                )
                                                .mask(
                                                    Text("Go！")
                                                        .font(.system(size: 20, weight: .black))
                                                )
                                            )
                            
                        }.frame(width: 117,height: 34)
                            .background(.white)
                            .cornerRadius(108)
                            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottomTrailing)
                            .padding(.trailing,54)
                            .offset(y:17)
                            .onTapGesture {
                                if((DiminishedUtil.shared.uprightLogUser["QKPnWrCiuJJ5oWaPS7kOLQ==".brokenchoDecipher()] as? Int) ?? 0 == 1){
                                    navigator.showBrokenchoGolog()
                                    return
                                }
                                navigator.showWeb(
                                    url: "\(DiminishedUtil.shared.retrogradeUrl)aiDetails"
                                )
                            }
                       
                    }
                    .frame(height: 250)
                    .frame(maxWidth: .infinity)
                    .background(
                        Image("sehi_ainv")
                                          .resizable()
                                          .frame(height: 250)
                                          .frame(maxWidth: .infinity)
                    )
                    
                    //ztack top 背景 end
                    HStack(spacing:6){
                        ZStack{
                            if rtamentoType {
                                Image("sehi_select")
                                                .resizable()
                                                .frame(width:33,height: 18)
                                                .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottomLeading)
                            }
                            
                            Text("Popular")
                                .font(.system(size: 20, weight:rtamentoType ? .black : .medium))
                                .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255,opacity: rtamentoType ? 1 : 0.6))
                                .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
                        }.frame(width:95, height: 28)
                            .contentShape(Rectangle())
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
                            Text("For you")
                                .font(.system(size: 20, weight:rtamentoType ? .medium : .black))
                                .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255,opacity: rtamentoType ? 0.6 : 1))
                                .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
                        }.frame(width:105, height: 28)
                            .contentShape(Rectangle())
                            .onTapGesture {
                                withAnimation{
                                    rtamentoType = false
                                }
                            }
                       Spacer()
                    }.padding(.horizontal,20)
                        .zIndex(10)
                    
                    ForEach(dipoappList.indices, id: \.self) { index in
                       
                        PianissimoItem(diameterItem: dipoappList[index])
                    }.padding(.horizontal,16)
                    //for end
                   
                }.padding(.bottom,90)
            }.ignoresSafeArea(edges: .top)
            
            
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
                        url: "\(DiminishedUtil.shared.retrogradeUrl)publishPicPost",
                        onLogin: {
                            navigator.showLogin(hromaticType: "0")
                        }
                    )
                }
                .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottomTrailing)
                .padding(.bottom,100)
                .padding(.trailing,20)
            
            
            
                
        }.onAppear{
            print(DiminishedUtil.shared.uprightLogUser)
        }
    }
}

//子项
struct PianissimoItem: View {
    let diameterItem : [String:Any]
    @EnvironmentObject private var navigator: AppNavigator
    @ObservedObject var diminishedUtil = DiminishedUtil.shared
    var legatoUs: [String: Any]? {
        MelodicUsers().getAugmente(by: diameterItem["TdVWE+5f7Onr0F+4iwfPVw==".brokenchoDecipher()] as? String ?? "")
    }
    var subjectTheme: String {
        let type = diameterItem["1QSZWhBr//huhlDOifaAeevRcHJ1sXfjqb8tibSf6W8=".brokenchoDecipher()] as? Int ?? -1

        if type == 0 {
            return "Full"
        } else if type == 1 {
            return "Upper"
        }else if type == 2 {
            return "Lower"
        } else {
            return "Unknown"
        }
    }
    var notecorLike: Bool {
        let tritoneList = diminishedUtil.uprightLogUser["k+rJKyoY0pGtx9aDIlNaFQ==".brokenchoDecipher()] as? [String] ?? []
        let atonscaPid = diameterItem["i7mt2GXHjk15k1arw8Jwvw==".brokenchoDecipher()] as? String ?? ""
        return tritoneList.contains(atonscaPid)
    }
    var body: some View {
        
        
        
        ZStack{
            
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
            HStack(spacing: 0){
                BridgeImage(terialUrl: legatoUs?["+pYFtlo9C3YSbSOZ3gw+fw==".brokenchoDecipher()] as? String)
                    
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
                Text(legatoUs?["GXKK426Krs45rD0vX/00NA==".brokenchoDecipher()] as? String ?? "Unknown")
                            .font(.system(size: 16, weight: .black))
                            .foregroundColor(.white)
                            .padding(.leading,12)
                            .padding(.trailing,11)
                Text("# \(subjectTheme)")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.clear)
                            .overlay(
                                LinearGradient(
                                    colors: [
                                        Color(red: 153/255, green: 255/255, blue: 214/255),
                                        Color(red: 150/255, green: 222/255, blue: 255/255),
                                        Color(red: 191/255, green: 89/255, blue: 255/255),
                                        Color(red: 197/255, green: 103/255, blue: 255/255),
                                    ],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                                .mask(
                                    Text("# \(subjectTheme)")
                                        .font(.system(size: 14, weight: .bold))
                                )
                            )
                            .padding(.horizontal,6)
                            .padding(.vertical,2)
                            .background(.white)
                            .cornerRadius(108)
                Spacer()
            }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottom)
                .padding(.bottom,16)
                .padding(.leading,16)
        }.frame(height: 234)
            .background(
                BridgeImage(terialUrl: (diameterItem["2KiU2gYnS2LfL+s4upyMaA==".brokenchoDecipher()] as? [String])?.first)
            )
         .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 10)
         )
         .clipShape(
                RoundedRectangle(cornerRadius: 20)
         )
         .contentShape(Rectangle())
         .onTapGesture {
            
             
             
             navigator.showWeb(
                 url: "\(DiminishedUtil.shared.retrogradeUrl)picPostDetails/\((diameterItem["i7mt2GXHjk15k1arw8Jwvw==".brokenchoDecipher()] as? String) ?? "")",
                 onLogin: {
                     navigator.showLogin(hromaticType: "0")
                 }
             )
         }
    }
}



//网络图片
struct BridgeImage: View {
    let terialUrl: String?
    
    init(terialUrl: String?) {
        self.terialUrl = terialUrl
    }
    
    var body: some View {
        GeometryReader { geo in
            if let urlString = terialUrl, let url = URL(string: urlString) {
                AsyncImage(url: url) { phase in
                    switch phase {
                    case .empty:
                        
                        ProgressView()
                            .frame(width: geo.size.width, height: geo.size.height)
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geo.size.width, height: geo.size.height)
                            .clipped()
                    case .failure:
                        
                        Color.gray.opacity(0.3)
                            .frame(width: geo.size.width, height: geo.size.height)
                    @unknown default:
                        Color.clear
                            .frame(width: geo.size.width, height: geo.size.height)
                    }
                }
            } else {
                
                Color.gray.opacity(0.3)
                    .frame(width: geo.size.width, height: geo.size.height)
            }
        }
        
    }
}
