import SwiftUI

struct BrokenchoGolog: View {
    @Binding var bactShow: Bool
    @EnvironmentObject private var navigator: AppNavigator
    var onLogin: (() -> Void)? = nil

    var body: some View {
        ZStack {
            Color.black.opacity(0.45)
                .ignoresSafeArea()
                .onTapGesture {
                    navigator.hideBrokenchoGolog()
                }

            VStack(spacing: 0) {
               
                Spacer().frame(height: 20)
                Text("Please log in")
                    .font(.system(size: 20, weight: .black))
                    .italic()
                    .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))

                Spacer().frame(height: 14)

                Text("To ensure the normal operation \nof the function, please log in to \nyour account first.")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(Color(red: 6/255, green: 3/255, blue: 9/255))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 15)

                
                Spacer().frame(height: 19)
                HStack {
                    Text("Log In")
                        .font(.system(size: 20, weight: .bold))
                        .italic()
                        .foregroundColor(.white)
                }
                .frame(width: 161, height: 51)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 153/255, green: 232/255, blue: 222/255),
                            Color(red: 135/255, green: 221/255, blue: 239/255),
                            Color(red: 184/255, green: 90/255, blue: 255/255),
                            Color(red: 176/255, green: 89/255, blue: 238/255),
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
                    bactShow = false
                    onLogin?()
                }

                Spacer().frame(height: 26)
            }
            .frame(width: 240, height: 240)
            .background(Color.white)
            .cornerRadius(48)
            .overlay(
                RoundedRectangle(cornerRadius: 48)
                    .stroke(
                        LinearGradient(
                            colors: [
                                Color(red: 151/255, green: 229/255, blue: 246/255),
                                Color(red: 170/255, green: 183/255, blue: 255/255),
                                Color(red: 190/255, green: 92/255, blue: 255/255),
                                Color(red: 195/255, green: 99/255, blue: 255/255),
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ),
                        lineWidth: 5
                    )
            )
        }
    }
}

