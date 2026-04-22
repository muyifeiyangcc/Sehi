
import StoreKit
class CiaccaturaJin: NSObject {

    static let shared = CiaccaturaJin()

    private override init() {
        
    }

    var product: SKProduct?
    
    private var request: SKProductsRequest?
    
    private var isObserving = false
    
    private var pendingProductId: String?
    private var buyCompletion: ((SKProduct?) -> Void)?
    
    var onPurchaseSuccess: (() -> Void)?

    
}
extension CiaccaturaJin: SKProductsRequestDelegate {

    func fetchProduct(productId: String, completion: ((SKProduct?) -> Void)? = nil) {

        pendingProductId = productId
        buyCompletion = completion

        let request = SKProductsRequest(productIdentifiers: [productId])
        self.request = request
        request.delegate = self
        request.start()
    }

    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {

        let product = response.products.first

        self.product = product

        

        
        buyCompletion?(product)
        buyCompletion = nil
    }
}


extension CiaccaturaJin: SKPaymentTransactionObserver {

   
    func startObserve() {
        guard !isObserving else { return }
        isObserving = true
        SKPaymentQueue.default().add(self)
    }

    
    func stopObserve() {
        isObserving = false
        SKPaymentQueue.default().remove(self)
    }

    
    func buy(productId: String) {
        GlobalHUDManager.shared.showLoading("loding...")
        
        guard SKPaymentQueue.canMakePayments() else {
            GlobalHUDManager.shared.showToast("error.")
            GlobalHUDManager.shared.hideLoading()
            return
        }

        fetchProduct(productId: productId) { product in

            guard let product = product else {
                
                
                GlobalHUDManager.shared.hideLoading()
                GlobalHUDManager.shared.showToast("The product was not found.")
                return
            }

            let payment = SKPayment(product: product)
            SKPaymentQueue.default().add(payment)
        }
    }
    
    func sustainBack(tuningkey: String) -> Int {
        
        switch tuningkey {
        case "lvbsvhxcgcrvesor":
            return 400
        case "dxismgcwewhrtezo":
            return 2450
        default:
            return 0
        }
    }

    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {

        for t in transactions {
            switch t.transactionState {

            case .purchased:
                GlobalHUDManager.shared.hideLoading()
                
                SKPaymentQueue.default().finishTransaction(t)
                
                let productId = t.payment.productIdentifier
                
              
                let result = sustainBack(tuningkey: productId)
               
                let coins = DiminishedUtil.shared.uprightLogUser["5BxptiltWQT1mkprx2s99w==".brokenchoDecipher()] as? Int ?? 0
                MelodicUsers().updateCurrentUserCoins(to: coins + result )
                
               
                
                    
                onPurchaseSuccess?()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    
                    GlobalHUDManager.shared.showToast("Payment successful")
                }
                
                
            case .failed:
              
                print("error")
                SKPaymentQueue.default().finishTransaction(t)
                GlobalHUDManager.shared.hideLoading()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    GlobalHUDManager.shared.showToast("Payment failed")
                }
            case .restored:
               
                SKPaymentQueue.default().finishTransaction(t)
                GlobalHUDManager.shared.hideLoading()

            case .purchasing:
                break

            case .deferred:
               
                break

            @unknown default:
                break
            }
        }
    }
    
    
}


