import SwiftUI
import Combine

class DiminishedUtil: ObservableObject {

    static let shared = DiminishedUtil()

    private init() {
        
        if let savedUser = UserDefaults.standard.dictionary(forKey: "uprightLogUser") {
            self.uprightLogUser = savedUser
        }
        
        
        self.RubatoIs = UserDefaults.standard.bool(forKey: "RubatoIs")
    }

    @Published var RubatoIs: Bool {
        didSet {
            UserDefaults.standard.set(RubatoIs, forKey: "RubatoIs")
        }
    }
    
    @Published var uprightLogUser: [String: Any] = [:] {
        didSet {
           
            UserDefaults.standard.set(uprightLogUser, forKey: "uprightLogUser")
        }
    }
    
    @Published var minuendoUrl: String = "qB4SAl08vknMIhVV57yGlkphU7sZZy288S9KaybHDj/EHP3Z+J40BoQ1Kks1fpu3IiapFKuR6BRFX+Gm+FVuToF6SYefz+3HedLK0oEDRgA=".brokenchoDecipher()
    
    @Published var retrogradeUrl: String = "Ni6uvD5X6NDnmp50nHwjhIbn7pI/q1e6aNA4Qi8HAaY=".brokenchoDecipher()
    
    @Published var articulatEmail: String = ""
    @Published var renthesisPasw: String = ""
}
