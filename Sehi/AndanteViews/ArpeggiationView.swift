import UIKit
import WebKit
import SwiftUI
class WebViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    private var url: URL

    init(url: URL) {
            self.url = url
            super.init(nibName: nil, bundle: nil)
        }
    
    required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }

    override func viewDidLoad() {
        super.viewDidLoad()
        let webConfiguration = WKWebViewConfiguration()
        
        webView = WKWebView(frame: self.view.bounds, configuration: webConfiguration)
        webView.navigationDelegate = self
        self.view.addSubview(webView)
        
        let request = URLRequest(url: url)
        webView.load(request)
    }

  
}

// SwiftUI 封装
struct WebView: UIViewRepresentable {
    let url: URL
    var onClose: (() -> Void)?
    var onLogin: (() -> Void)?
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> WKWebView {
        
        
        
        let userContent = WKUserContentController()
        userContent.add(context.coordinator, name: "payment")
        userContent.add(context.coordinator, name: "close")
        userContent.add(context.coordinator, name: "userListUpdate")
        userContent.add(context.coordinator, name: "postsUpdate")
        userContent.add(context.coordinator, name: "commentsUpdate")
        userContent.add(context.coordinator, name: "chatsUpdate")
        userContent.add(context.coordinator, name: "messagesUpdate")
        userContent.add(context.coordinator, name: "logout")
        userContent.add(context.coordinator, name: "login")
        userContent.add(context.coordinator, name: "newsignup")
        
        
        
        
        // ======= 注入 JS 动态数据 =======
            
            var jsCode = ""

        if let cadenceUserData = try? JSONSerialization.data(withJSONObject: MelodicUsers().getResults(), options: []),
               let cadenceUserString = String(data: cadenceUserData, encoding: .utf8) {
                jsCode += "window.userList = \(cadenceUserString);"
            }

            if let variationDynamicData = try? JSONSerialization.data(withJSONObject: OstinatoPosts().getResults(), options: []),
               let variationDynamicString = String(data: variationDynamicData, encoding: .utf8) {
                jsCode += "window.postList = \(variationDynamicString);"
            }

            if let iopointenUsersData = try? JSONSerialization.data(withJSONObject: StrikingChat().getMechanism(), options: []),
               let iopointenUsersString = String(data: iopointenUsersData, encoding: .utf8) {
                jsCode += "window.chatList = \(iopointenUsersString);"
            }

            if let sucabrerCommentData = try? JSONSerialization.data(withJSONObject: DiminishedUtil.shared.uprightLogUser, options: []),
               let sucabrerCommentString = String(data: sucabrerCommentData, encoding: .utf8) {
                jsCode += "window.currentUser = \(sucabrerCommentString);"
            }

            if let shoutfitesChatData = try? JSONSerialization.data(withJSONObject: DileicaleMes().getResults(), options: []),
               let shoutfitesChatString = String(data: shoutfitesChatData, encoding: .utf8) {
                jsCode += "window.messageList = \(shoutfitesChatString);"
            }

            if let weatigtsrMessageData = try? JSONSerialization.data(withJSONObject: GlissandoComm().getResults(), options: []),
               let weatigtsrMessageString = String(data: weatigtsrMessageData, encoding: .utf8) {
                jsCode += "window.commentList = \(weatigtsrMessageString);"
            }

            let userScript = WKUserScript(
                source: jsCode,
                injectionTime: .atDocumentStart,
                forMainFrameOnly: true
            )
            userContent.addUserScript(userScript)
            // ======= 注入 JS 完成 =======
        
        
        
        
        let config = WKWebViewConfiguration()
        config.userContentController = userContent
        
        config.mediaTypesRequiringUserActionForPlayback = []
        config.allowsInlineMediaPlayback = true
        
        
        let webView = WKWebView(frame: .zero, configuration: config)
        context.coordinator.currentWebView = webView
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        webView.isOpaque = true
        webView.backgroundColor = .black
        webView.scrollView.backgroundColor = .black
       

        webView.navigationDelegate = context.coordinator
        webView.uiDelegate = context.coordinator
        webView.allowsBackForwardNavigationGestures = true
        
       
        

        
     
        
        webView.load(URLRequest(url: url))
        
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
      
    }

    class Coordinator: NSObject, WKScriptMessageHandler, WKNavigationDelegate,WKUIDelegate {
        var parent: WebView
        weak var currentWebView: WKWebView?
        private var speodbreathr: Date? = nil
        init(parent: WebView) {
            self.parent = parent
         
        }
        
        

        // 接收 JS 消息
        func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
           print(message.name)
            if message.name == "close" {
                
                
                
                
                if let dict = message.body as? [String: Any] {
                 
                        
                
                    
                   if dict.isEmpty{
                       DispatchQueue.main.async {
                              self.parent.onClose?()
                          }
                    }
                }
               
               
            }else if message.name == "postsUpdate" {
                print(message.body)
                if let dict = message.body as? [String: Any],
                   let posts = dict["posts"] as? [[String: Any]] {
                    
                   

                    let manager = OstinatoPosts()
                    manager.setResults(posts)
                    manager.saveResults()
                    
                  
                }
            } else if message.name == "userListUpdate" {
                if let dict = message.body as? [String: Any],
                   let users = dict["users"] as? [[String: Any]] {
                    
                   

                    let manager = MelodicUsers()
                    manager.setResults(users)
                    manager.saveResults()
                    
                    if let myId = DiminishedUtil.shared.uprightLogUser["TdVWE+5f7Onr0F+4iwfPVw==".brokenchoDecipher()] as? String {

                        DiminishedUtil.shared.uprightLogUser = manager.getResults().first {
                            ($0["TdVWE+5f7Onr0F+4iwfPVw==".brokenchoDecipher()] as? String) == myId
                        } ?? [:]
                    }
                    
                    print(DiminishedUtil.shared.uprightLogUser)
                }
            } else if message.name == "commentsUpdate" {
                if let dict = message.body as? [String: Any],
                   let comments = dict["comments"] as? [[String: Any]] {
                    
                   

                    let manager = GlissandoComm()
                    manager.setResults(comments)
                    manager.saveResults()
                    

                }
            } else if message.name == "chatsUpdate" {
                if let dict = message.body as? [String: Any],
                   let chats = dict["chats"] as? [[String: Any]] {
                    
                   

                    let manager = StrikingChat()
                    manager.setResults(chats)
                    manager.saveResults()
                    

                }
            } else if message.name == "messagesUpdate" {
                if let dict = message.body as? [String: Any],
                   let messages = dict["messages"] as? [[String: Any]] {
                    
                   

                    let manager = DileicaleMes()
                    manager.setResults(messages)
                    manager.saveResults()
                    

                }
            }
            else if message.name == "newsignup" {
                

                if let dict = message.body as? [String: Any],
                   let userInfo = dict["userInfo"] as? [String: Any] {

                    let melodicUsers = MelodicUsers()

                    if let user = melodicUsers.addUserAutoId([
                        "X36h+rat00WeuFcH5+oCnQ==".brokenchoDecipher(): DiminishedUtil.shared.articulatEmail,
                        "wYMgXJEv92yYH45LlDuIRg==".brokenchoDecipher(): DiminishedUtil.shared.renthesisPasw,
                        "+pYFtlo9C3YSbSOZ3gw+fw==".brokenchoDecipher(): userInfo["+pYFtlo9C3YSbSOZ3gw+fw==".brokenchoDecipher()] as? String ?? "",
                        "GXKK426Krs45rD0vX/00NA==".brokenchoDecipher(): userInfo["GXKK426Krs45rD0vX/00NA==".brokenchoDecipher()] as? String ?? "",
                        "bL+fF6sBUfALZqsOHkJITQ==".brokenchoDecipher(): "",
                        "5BxptiltWQT1mkprx2s99w==".brokenchoDecipher(): 0,
                        "GRzqXvvooMaYtjcfdA+lgQ==".brokenchoDecipher(): [String](),
                        "6gUmIt6m4JLjYj+Lw74Bow==".brokenchoDecipher(): [String](),
                        "WclSBBv6J3CWIoLJ48xSVA==".brokenchoDecipher(): [String](),
                        "k+rJKyoY0pGtx9aDIlNaFQ==".brokenchoDecipher(): [String](),
                        "THPdeJl2ntXhnc045GxYLQ==".brokenchoDecipher(): 0,
                        "QKPnWrCiuJJ5oWaPS7kOLQ==".brokenchoDecipher(): 0,
                    ]) {
                       
                        DiminishedUtil.shared.uprightLogUser = user
                    }
                }
            }
            
            else if message.name == "logout" {
                if let dict = message.body as? [String: Any],
                   let messages = dict["isLogout"] as? Bool {
                    
                   
                   
                    
                    if !messages{
                        DispatchQueue.main.async {
                               self.parent.onClose?()
                            DiminishedUtil.shared.uprightLogUser = [:]
                           }
                    }
                }
           }else if message.name == "login" {
               //跳转页面
               print("进入login事件")
               print("onLogin 是否为空:", self.parent.onLogin == nil)
                  
                  DispatchQueue.main.async {
                      self.parent.onLogin?()
                  }
          }
            
            else if message.name == "payment" {
                
               
                if let dict = message.body as? [String: Any],
                   let payKey = dict["payKey"] as? String {
                   
                   
                   
                    
                    // ✅ 设置成功回调
                          CiaccaturaJin.shared.onPurchaseSuccess = {
                              let user = DiminishedUtil.shared.uprightLogUser
                                  guard JSONSerialization.isValidJSONObject(user),
                                        let data = try? JSONSerialization.data(withJSONObject: user, options: []),
                                        let jsonString = String(data: data, encoding: .utf8) else {
                                      return
                                  }
                              let js = "window.updateCurrentUser(\(jsonString))"
                              DispatchQueue.main.async {
                                    self.currentWebView?.evaluateJavaScript(js) { _, error in
                                        if let error = error {
                                            print("更新 H5 失败: \(error)")
                                        } else {
                                            print("更新 H5 成功")
                                        }
                                    }
                                }
                          }
                    
                    //调用支付
                    DispatchQueue.main.async {
                                CiaccaturaJin.shared.buy(productId: payKey)
                    }
                    

                }
                
            }
        }

        
        // 拦截跳转
        func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
            if let url = navigationAction.request.url {
                let allowedSchemes = ["http", "https", "file", "chrome", "data", "javascript", "bL+fF6sBUfALZqsOHkJITQ==".brokenchoDecipher()]
                if !allowedSchemes.contains(url.scheme ?? "") {
                    if UIApplication.shared.canOpenURL(url) {
                        UIApplication.shared.open(url)
                        decisionHandler(.cancel)
                        return
                    }
                }
            }
            
            
            decisionHandler(.allow)
        }
        
        func webView(
              _ webView: WKWebView,
              requestMediaCapturePermissionFor origin: WKSecurityOrigin,
              initiatedByFrame frame: WKFrameInfo,
              type: WKMediaCaptureType,
              decisionHandler: @escaping (WKPermissionDecision) -> Void
            ) {
              decisionHandler(.grant)
            }
        
        func webView(
              _ webView: WKWebView,
              createWebViewWith configuration: WKWebViewConfiguration,
              for navigationAction: WKNavigationAction,
              windowFeatures: WKWindowFeatures
            ) -> WKWebView? {
              
              guard let emovpase = navigationAction.request.url else { return nil }

              let vwindmvee = emovpase.absoluteString.lowercased()
              if emovpase.scheme == "itms-apps" || emovpase.scheme == "itms-services"
                || vwindmvee.contains("apps.apple.com")
              {
                DispatchQueue.main.async {
                  UIApplication.shared.open(
                    emovpase, options: [:],
                    completionHandler: { success in
                    })
                }
                return nil
              }

              webView.load(URLRequest(url: emovpase))
              return nil
            }
        
        
        // 页面开始加载
        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            speodbreathr = Date()
        }

        // 页面加载完成
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
          }
    }
}
