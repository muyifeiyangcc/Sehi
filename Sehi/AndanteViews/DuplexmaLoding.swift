import SwiftUI

struct GlobalLoadingView: View {
    let message: String
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.35)
                .ignoresSafeArea()
            
            VStack(spacing: 12) {
                ProgressView()
                    .scaleEffect(1.2)
                    .tint(.white)
                
                Text(message)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 20)
            .background(Color.black.opacity(0.8))
            .cornerRadius(12)
        }
    }
}

struct GlobalToastView: View {
    let message: String
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(message)
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .padding(.vertical, 12)
                .background(Color.black.opacity(0.85))
                .cornerRadius(10)
                .padding(.bottom, 120)
        }
        .padding(.horizontal, 24)
        .background(Color.clear)
        .ignoresSafeArea()
    }
}

import UIKit

final class PassThroughWindow: UIWindow {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, with: event)
        return view == rootViewController?.view ? nil : view
    }
}

final class GlobalHUDManager {
    static let shared = GlobalHUDManager()
    
    private init() {}
    
    // MARK: - Loading
    private var loadingWindow: UIWindow?
    private var loadingHosting: UIHostingController<GlobalLoadingView>?
    private var loadingCount: Int = 0
    
    // MARK: - Toast
    private var toastWindow: PassThroughWindow?
    private var toastHosting: UIHostingController<GlobalToastView>?
    private var hideToastWorkItem: DispatchWorkItem?
}

extension GlobalHUDManager {
    
    func showLoading(_ text: String = "Loading...") {
        DispatchQueue.main.async {
            self.loadingCount += 1
            
            if self.loadingWindow == nil {
                self.createLoadingWindow(message: text)
            } else {
                self.loadingHosting?.rootView = GlobalLoadingView(message: text)
            }
            
            self.loadingWindow?.isHidden = false
        }
    }
    
    func hideLoading() {
        DispatchQueue.main.async {
            self.loadingCount = max(0, self.loadingCount - 1)
            
            if self.loadingCount == 0 {
                self.loadingWindow?.isHidden = true
                self.loadingWindow = nil
                self.loadingHosting = nil
            }
        }
    }
    
    func forceHideLoading() {
        DispatchQueue.main.async {
            self.loadingCount = 0
            self.loadingWindow?.isHidden = true
            self.loadingWindow = nil
            self.loadingHosting = nil
        }
    }
    
    private func createLoadingWindow(message: String) {
        guard let scene = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .first(where: { $0.activationState == .foregroundActive }) else { return }
        
        let window = UIWindow(windowScene: scene)
        window.backgroundColor = .clear
        window.windowLevel = .alert + 1
        
        let hosting = UIHostingController(rootView: GlobalLoadingView(message: message))
        hosting.view.backgroundColor = .clear
        
        window.rootViewController = hosting
        
        self.loadingWindow = window
        self.loadingHosting = hosting
    }
}

extension GlobalHUDManager {
    
    func showToast(_ text: String, duration: TimeInterval = 2.0) {
        DispatchQueue.main.async {
            self.hideToastWorkItem?.cancel()
            
            if self.toastWindow == nil {
                self.createToastWindow(message: text)
            } else {
                self.toastHosting?.rootView = GlobalToastView(message: text)
            }
            
            self.toastWindow?.isHidden = false
            
            let workItem = DispatchWorkItem { [weak self] in
                self?.hideToast()
            }
            self.hideToastWorkItem = workItem
            
            DispatchQueue.main.asyncAfter(deadline: .now() + duration, execute: workItem)
        }
    }
    
    func hideToast() {
        DispatchQueue.main.async {
            self.hideToastWorkItem?.cancel()
            self.hideToastWorkItem = nil
            self.toastWindow?.isHidden = true
            self.toastWindow = nil
            self.toastHosting = nil
        }
    }
    
    private func createToastWindow(message: String) {
        guard let scene = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .first(where: { $0.activationState == .foregroundActive }) else { return }
        
        let window = PassThroughWindow(windowScene: scene)
        window.backgroundColor = .clear
        window.windowLevel = .alert + 2
        
        let hosting = UIHostingController(rootView: GlobalToastView(message: message))
        hosting.view.backgroundColor = .clear
        
        window.rootViewController = hosting
        
        self.toastWindow = window
        self.toastHosting = hosting
    }
}
