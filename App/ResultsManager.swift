import Foundation

class ResultsManager {
    static func setNewBestTime(_ key: String, seconds: Double) {
        let prevValue = UserDefaults.standard.double(forKey: key)
        if prevValue > seconds || prevValue == 0 {
            UserDefaults.standard.setValue(seconds, forKey: key)
        }
    }

    static func getBestTime(by key: String) -> Double {
        return UserDefaults.standard.double(forKey: key)
    }

    static func resetAllResults() {
        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        UserDefaults.standard.synchronize()
    }
}
