import SwiftUI
struct SostenutoMine: View {
    @ObservedObject var diminishedUtil = DiminishedUtil.shared
    @State private var intonationList : [[String:Any]] = OstinatoPosts().getUnterchange()
    @EnvironmentObject private var navigator: AppNavigator
    var body: some View {
        ZStack{
            Image("sehi_backgrck")
                            .resizable()
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                            .ignoresSafeArea()
            ScrollView{
                ZStack{
                    ZStack{
                        BridgeImage(terialUrl: diminishedUtil.uprightLogUser["+pYFtlo9C3YSbSOZ3gw+fw==".brokenchoDecipher()] as? String)
                            .scaledToFill()
                            .frame(height: 233)
                            .frame(maxWidth: .infinity)
                            .clipped()
                                    .mask(
                                        LinearGradient(
                                            gradient: Gradient(colors: [
                                                Color(red: 204/255, green: 204/255, blue: 204/255,opacity: 0.43),
                                                Color(red: 204/255, green: 204/255, blue: 204/255,opacity: 0),
                                                
                                            ]),
                                            startPoint: .top,
                                            endPoint: .bottom
                                        )
                                    )
                    }.frame(height: 233)
                        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
                     
                    VStack(spacing: 16){
                        HStack(spacing: 16){
                            BridgeImage(terialUrl: diminishedUtil.uprightLogUser["+pYFtlo9C3YSbSOZ3gw+fw==".brokenchoDecipher()] as? String)
                                .scaledToFill()
                                .frame(width: 80, height: 80)
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
                            VStack(alignment:.leading,spacing:8){
                                Text((diminishedUtil.uprightLogUser["GXKK426Krs45rD0vX/00NA==".brokenchoDecipher()] as? String) ?? "")
                                    .font(.system(size: 16, weight: .black))
                                    .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                                
                                Text((diminishedUtil.uprightLogUser["bL+fF6sBUfALZqsOHkJITQ==".brokenchoDecipher()] as? String) ?? "")
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                            }
                            Spacer()
                            VStack{
                                Image("sehi_setting")
                                    .resizable()
                                    .frame(width:24,height: 24)
                                    .onTapGesture {
                                        navigator.showWeb(
                                            url: "\(DiminishedUtil.shared.retrogradeUrl)setting"
                                        )
                                    }
                                Spacer()
                            }
                            
                        }.padding(.top,55)
                        
                        HStack(spacing:75){
                            VStack{
                                Text("\(intonationList.count)")
                                    .font(.system(size: 20, weight: .black))
                                    .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                                Text("Posts")
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                            }
                            VStack{
                                Text("\((diminishedUtil.uprightLogUser["6gUmIt6m4JLjYj+Lw74Bow==".brokenchoDecipher()] as? [Any])?.count ?? 0)")
                                    .font(.system(size: 20, weight: .black))
                                    .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                                Text("6gUmIt6m4JLjYj+Lw74Bow==".brokenchoDecipher())
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                            }.onTapGesture {
                                navigator.showWeb(
                                    url: "\(DiminishedUtil.shared.retrogradeUrl)fan"
                                )
                            }
                            VStack{
                                Text("\((diminishedUtil.uprightLogUser["GRzqXvvooMaYtjcfdA+lgQ==".brokenchoDecipher()] as? [Any])?.count ?? 0)")
                                    .font(.system(size: 20, weight: .black))
                                    .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                                Text("GRzqXvvooMaYtjcfdA+lgQ==".brokenchoDecipher())
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                            }.onTapGesture {
                                navigator.showWeb(
                                    url: "\(DiminishedUtil.shared.retrogradeUrl)follow"
                                )
                            }
                        }
                        
                        ZStack{
                            Image("sehi_haokbe")
                                .resizable()
                                .frame(height: 78)
                                .frame(maxWidth: .infinity)
                            HStack{
                                VStack(alignment:.leading,spacing:4){
                                    Text("Wallet")
                                        .font(.system(size: 20, weight: .black))
                                        .foregroundColor(.white)
                                    Text("\((diminishedUtil.uprightLogUser["5BxptiltWQT1mkprx2s99w==".brokenchoDecipher()] as? Int) ?? 0)")
                                        .font(.system(size: 16, weight: .black))
                                        .foregroundColor(.white)
                                }.padding(.leading,130)
                                Spacer()
                            }
                        }
                        .frame(height: 78)
                        .onTapGesture {
                            navigator.showWeb(
                                url: "\(DiminishedUtil.shared.retrogradeUrl)coins"
                            )
                        }
                        .padding(.bottom,8)
                        
                        HStack{
                            ZStack{
                                Image("sehi_select")
                                    .resizable()
                                    .frame(width:33,height: 18)
                                    .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottomLeading)
                                Text("Works")
                                    .font(.system(size: 20, weight: .black ))
                                    .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                                    .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
                            }.frame(width:95, height: 28)
                            Spacer()
                        }
                        
                        ForEach(intonationList.indices,id: \.self){index in
                            PianissimoItem(diameterItem: intonationList[index])
                        }
                        
                    }.padding(.horizontal,20)
                        .padding(.bottom,90)
                    //vstack end
                }
                //zstack end
            }.ignoresSafeArea(edges: .top)
            //scro end
        }.onAppear{
            intonationList = OstinatoPosts().getUnterchange()
        }
    }
}
