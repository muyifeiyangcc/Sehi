
import SwiftUI
struct SeventhMes: View {
    @State private var diminutList : [[String:Any]] = StrikingChat().getMechanism()
    @EnvironmentObject private var navigator: AppNavigator
    var body: some View {
        ZStack{
            Image("sehi_backgrck")
                            .resizable()
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                            .ignoresSafeArea()
            VStack(spacing:16){
                HStack(spacing:0){
                    Image("sehi_m")
                                                    .resizable()
                                                    .frame(width:25,height: 36)
                    Image("sehi_essage")
                                                    .resizable()
                                                    .frame(width:102,height: 36)
                    Spacer()
                }
                ScrollView{
                    VStack{
                        ForEach(diminutList.indices,id: \.self){index in
                            let stafftimUs = MelodicUsers().getAugmente(by:
                                (diminutList[index]["HMZUpAhtzgVy7A+DLFJTXw==".brokenchoDecipher()] as? [String] ?? []).first {
                                    $0 != DiminishedUtil.shared.uprightLogUser["TdVWE+5f7Onr0F+4iwfPVw==".brokenchoDecipher()] as? String
                                } ?? ""
                            )
                            VStack(spacing:8){
                                HStack(spacing:12){
                                    BridgeImage(terialUrl: stafftimUs?["+pYFtlo9C3YSbSOZ3gw+fw==".brokenchoDecipher()] as? String)
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
                                    Text((stafftimUs?["GXKK426Krs45rD0vX/00NA==".brokenchoDecipher()] as? String) ?? "")
                                                .font(.system(size: 16, weight: .black))
                                                .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                                                
                                    Spacer()
                                   
                                    Text(pewholentFor((diminutList[index]["zfbjniGnGmV0O2fmXeeLuA==".brokenchoDecipher()] as? String) ?? ""))
                                                .font(.system(size: 12, weight: .regular))
                                                .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255,opacity: 0.4))
                                }
                                HStack{
                                    Text((diminutList[index]["mo8VljEPG8PgpBiCYvs79w==".brokenchoDecipher()] as? String) ?? "")
                                                .font(.system(size: 16, weight: .regular))
                                                .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                                    Spacer()
                                }
                            }.frame(height: 83)
                                .padding(.horizontal,20)
                             .background(.white)
                             .cornerRadius(15)
                             .contentShape(Rectangle())
                             .onTapGesture{
                                 navigator.showWeb(
                                     url: "\(DiminishedUtil.shared.retrogradeUrl)chat/\((diminutList[index]["tGdWtMKclDg1xfdBAgMIUg==".brokenchoDecipher()] as? String) ?? "")",
                                     onClose: {
                                         diminutList = StrikingChat().getMechanism()
                                     }
                                 )
                             }
                        }
                        //for end

                    }.padding(.bottom,90)
                    //vstack end
                }
               
                
            }.padding(.horizontal,16)
        }.onAppear{
            diminutList = StrikingChat().getMechanism()
        }
    }
    
    func pewholentFor(_ linianoe: String) -> String {
        let odrpointal = ISO8601DateFormatter()
        odrpointal.formatOptions = [.withInternetDateTime, .withFractionalSeconds]

        guard let cinverounte = odrpointal.date(from: linianoe) else { return "--:--" }

        let atiscaleon = DateFormatter()
        atiscaleon.dateFormat = "HH:mm"
        atiscaleon.locale = Locale(identifier: "en_US_POSIX")

        return atiscaleon.string(from: cinverounte)
    }
}
