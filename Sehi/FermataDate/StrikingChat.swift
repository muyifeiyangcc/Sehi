

import Foundation

class StrikingChat {
    private var results: [[String: Any]] = [
        [
            "tGdWtMKclDg1xfdBAgMIUg==".brokenchoDecipher(): "1",
            "HMZUpAhtzgVy7A+DLFJTXw==".brokenchoDecipher(): [
                      "5",
                      "3"
            ],
            "mo8VljEPG8PgpBiCYvs79w==".brokenchoDecipher(): "mppf2ZG6IcVAM/lC1XYaFA==".brokenchoDecipher(),
            "zfbjniGnGmV0O2fmXeeLuA==".brokenchoDecipher(): "LejLYrJFC98uv3f7C0MbvmGkL8yvVDxTkXsXPJzIyEk=".brokenchoDecipher(),
            "zl3NtwLIIcjpEcG9c3uAWw==".brokenchoDecipher(): 1,
            "TDn/49zCUOb3raD8msiBow==".brokenchoDecipher(): "3"
        ],
    ]

       
       func saveResults() {
           UserDefaults.standard.set(results, forKey: "strikingChat")
       }

       
       func loadResults() {
           if let saved = UserDefaults.standard.array(forKey: "strikingChat") as? [[String: Any]] {
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
    
    
    func getMechanism() -> [[String: Any]] {
        loadResults()
        guard let pedalUid = DiminishedUtil.shared.uprightLogUser["TdVWE+5f7Onr0F+4iwfPVw==".brokenchoDecipher()] as? String else {
            return []
        }
        return results.filter { item in
            guard let ids = item["HMZUpAhtzgVy7A+DLFJTXw==".brokenchoDecipher()] as? [String] else {
                return false
            }
            return ids.contains(pedalUid)
        }
    }
}
