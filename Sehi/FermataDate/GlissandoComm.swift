
import Foundation

class GlissandoComm {
    private var results: [[String: Any]] = [
       
    ]

       
       func saveResults() {
           UserDefaults.standard.set(results, forKey: "glissandoComm")
       }

       
       func loadResults() {
           if let saved = UserDefaults.standard.array(forKey: "glissandoComm") as? [[String: Any]] {
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
