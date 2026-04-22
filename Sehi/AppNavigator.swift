import SwiftUI
import Combine
import UIPilot

enum AppRoute: Equatable {
    case auth
    case main
    case web(id: UUID, url: String, onClose: (() -> Void)? = nil, onLogin: (() -> Void)? = nil)
    case login(id: UUID, hromaticType: String)

    static func == (lhs: AppRoute, rhs: AppRoute) -> Bool {
        switch (lhs, rhs) {
        case (.auth, .auth), (.main, .main):
            return true
        case let (.web(lhsID, lhsURL, _, _), .web(rhsID, rhsURL, _, _)):
            return lhsID == rhsID && lhsURL == rhsURL
        case let (.login(lhsID, lhsType), .login(rhsID, rhsType)):
            return lhsID == rhsID && lhsType == rhsType
        default:
            return false
        }
    }
}

final class AppNavigator: ObservableObject {
    @Published var brokenchoGologShow: Bool = false
    private var pushHandler: ((AppRoute) -> Void)?
    private var popHandler: (() -> Void)?

    func configure(push: @escaping (AppRoute) -> Void, pop: @escaping () -> Void) {
        self.pushHandler = push
        self.popHandler = pop
    }

    func showWeb(url: String, onClose: (() -> Void)? = nil, onLogin: (() -> Void)? = nil) {
        pushHandler?(.web(id: UUID(), url: url, onClose: onClose, onLogin: onLogin))
    }

    func showLogin(hromaticType: String) {
        pushHandler?(.login(id: UUID(), hromaticType: hromaticType))
    }

    func showBrokenchoGolog() {
        brokenchoGologShow = true
    }

    func hideBrokenchoGolog() {
        brokenchoGologShow = false
    }

    func push(_ route: AppRoute) {
        pushHandler?(route)
    }

    func pop() {
        popHandler?()
    }

    func dismissSheet() {
        pop()
    }

    func dismissFullScreen() {
        pop()
    }

    func dismissActiveModal() {
        pop()
    }
}

struct AppRootHost: View {
    @StateObject private var pilot: UIPilot<AppRoute>
    @StateObject private var navigator = AppNavigator()

    init(isLoggedIn: Bool) {
        _pilot = StateObject(wrappedValue: UIPilot(initial: isLoggedIn ? .main : .auth))
    }

    var body: some View {
        UIPilotHost(pilot) { route in
            switch route {
            case .auth:
                CrescendoStart()
                    .navigationBarHidden(true)
            case .main:
                DamperpedalNav()
                    .navigationBarHidden(true)
            case let .web(_, url, onClose, onLogin):
                WebView(
                    url: URL(string: url)!,
                    onClose: {
                        onClose?()
                        navigator.pop()
                    },
                    onLogin: onLogin
                )
                .ignoresSafeArea()
                .navigationBarHidden(true)
            case let .login(_, hromaticType):
                VibratoLogType(hromaticType: hromaticType)
                    .navigationBarHidden(true)
            }
        }
        .environmentObject(navigator)
        .onAppear {
            navigator.configure(
                push: { route in
                    pilot.push(route)
                },
                pop: {
                    pilot.pop()
                }
            )
        }
    }
}
