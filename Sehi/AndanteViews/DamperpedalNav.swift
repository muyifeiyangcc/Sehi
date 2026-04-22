//底部导航
import SwiftUI

struct DamperpedalNav: View {
    
    @State private var selectedTab = 0
    @EnvironmentObject private var navigator: AppNavigator
    var body: some View {
        ZStack(alignment: .bottom) {
            
            ZStack {
                AllegrettoHome()
                    .opacity(selectedTab == 0 ? 1 : 0)
                    .allowsHitTesting(selectedTab == 0)

                HarmonicDiscover()
                    .opacity(selectedTab == 1 ? 1 : 0)
                    .allowsHitTesting(selectedTab == 1)

                SeventhMes()
                    .opacity(selectedTab == 2 ? 1 : 0)
                    .allowsHitTesting(selectedTab == 2)

                SostenutoMine()
                    .opacity(selectedTab == 3 ? 1 : 0)
                    .allowsHitTesting(selectedTab == 3)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            CustomTabBar(selectedTab: $selectedTab)
            
            if navigator.brokenchoGologShow {
                BrokenchoGolog(bactShow: $navigator.brokenchoGologShow) {
                    navigator.showLogin(hromaticType: "0")
                }
            }
        }
        .ignoresSafeArea(.keyboard)
        .background(Color(.systemGroupedBackground))
    }
}
struct CustomTabBar: View {
    
    @Binding var selectedTab: Int
    @EnvironmentObject private var navigator: AppNavigator
    var body: some View {
        VStack(spacing: 0) {
            
            Divider()
            
            HStack {
                tabItem(index: 0, icon: selectedTab == 0 ? "sehi_navhome" : "sehi_navmhome", title: "Home")
                Spacer()
                tabItem(index: 1, icon: selectedTab == 1 ? "sehi_navvideo" : "sehi_navmvideo", title: "Video")
                Spacer()
                tabItem(index: 2, icon: selectedTab == 2 ? "sehi_navmes" : "sehi_navmmes", title: "Message")
                Spacer()
                profileTab()
            }
            .padding(.horizontal, 30)
            .padding(.top, 10)
            .padding(.bottom, 20)
            .background(Color.white)
        }
        .background(Color.white)
    }
    
    func tabItem(index: Int, icon: String, title: String) -> some View {
        Button {
           
            if((DiminishedUtil.shared.uprightLogUser["QKPnWrCiuJJ5oWaPS7kOLQ==".brokenchoDecipher()] as? Int) ?? 0 == 1 && index > 1){
                navigator.showBrokenchoGolog()
                return
            }
            
            
            selectedTab = index
            
            
        } label: {
            VStack(spacing: 4) {
                Image(icon)
                    .resizable()
                    .frame(width:32,height: 32)
                
                Text(title)
                    .font(.system(size: 14, weight: .black))
            }
            .foregroundColor(selectedTab == index ? Color(red: 13/255, green: 12/255, blue: 26/255): Color(red: 13/255, green: 12/255, blue: 26/255,opacity: 0.4))
        }
    }
    
    func profileTab() -> some View {
        Button {
            if((DiminishedUtil.shared.uprightLogUser["QKPnWrCiuJJ5oWaPS7kOLQ==".brokenchoDecipher()] as? Int) ?? 0 == 1 ){
                navigator.showBrokenchoGolog()
                return
            }
            selectedTab = 3
        } label: {
            VStack(spacing: 4) {
                BridgeImage(terialUrl: DiminishedUtil.shared.uprightLogUser["+pYFtlo9C3YSbSOZ3gw+fw==".brokenchoDecipher()] as? String)
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
                
                Text("ME")
                    .font(.system(size: 14, weight: .black))
            }
            .foregroundColor(selectedTab == 3 ? Color(red: 13/255, green: 12/255, blue: 26/255): Color(red: 13/255, green: 12/255, blue: 26/255,opacity: 0.4))
        }
    }
}
