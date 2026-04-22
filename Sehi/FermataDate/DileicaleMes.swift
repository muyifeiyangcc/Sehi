
import Foundation

class DileicaleMes {
    private var results: [[String: Any]] = [
        [
            "YHH1kso6BIWRdkFnASotCA==".brokenchoDecipher(): "PwGWT8FWN5FBJCSFzpuyPw==".brokenchoDecipher(),
            "tGdWtMKclDg1xfdBAgMIUg==".brokenchoDecipher(): "PwGWT8FWN5FBJCSFzpuyPw==".brokenchoDecipher(),
            "TdVWE+5f7Onr0F+4iwfPVw==".brokenchoDecipher(): "Qfdz7CQIN2p1BiFgD2v3wQ==".brokenchoDecipher(),
            "kFGl0tcT0kVSiK6mn1pqSw==".brokenchoDecipher(): "mppf2ZG6IcVAM/lC1XYaFA==".brokenchoDecipher(),
            "wJzJPPCOtyxcmB8kZJCoCA==".brokenchoDecipher(): "",
            "8qe2upx4vu8w2YNqWCzdiw==".brokenchoDecipher(): "LejLYrJFC98uv3f7C0MbvmGkL8yvVDxTkXsXPJzIyEk=".brokenchoDecipher()
        ],
    ]

       
       func saveResults() {
           UserDefaults.standard.set(results, forKey: "dileicaleMes")
       }

       
       func loadResults() {
           if let saved = UserDefaults.standard.array(forKey: "dileicaleMes") as? [[String: Any]] {
               results = saved
           }
       }

       
       func getResults() -> [[String: Any]] {
           loadResults()
           return results
       }

       
       func setResults(_ newResults: [[String: Any]]) {
           results = newResults
       }

}
