import SwiftUI
import UserNotifications

@MainActor
public class WvvyogSE {
    
    private var monitor: NetworkMonitor { NetworkMonitor.shared }
    private var networkObserver: NSObjectProtocol?
    @ObservedObject var XzsOckpE = Ckq71vyS.shared
    
    private let UN7YUs8G = String(["r", "e", "c", "e", "i", "v", "e", "d", "U", "R", "L"])
    private let yG4SUgOn = String(["h", "a", "s", "L", "a", "u", "n", "c", "h", "e", "d", "B", "e", "f", "o", "r", "e"])
    private var apnsToken = String(["t", "o", "k", "e", "n"])
    private var XG8kc1RX = 0
    private let aQYUfvYF = 3
    private let BSKSu1YC = 3.0
    private var XsDZkdLG = false
    private init(
        ivbKckIG: @escaping () -> AnyView? = { nil },
        fZILfcTn: @escaping () -> AnyView,
        i2MEDbWL: String,
        CAZST8V7: String,
        Ecjlq2vI: String
    ) {
        PIsmS5gQ.appleAppID = CAZST8V7
        PIsmS5gQ.appsFlyerDevKey = i2MEDbWL
        oiwYn6UI.WufAT0dK = Ecjlq2vI
        Np7u8UHK.GdtozeIp = ivbKckIG
        Np7u8UHK.Ltenj1Mu = fZILfcTn
        nOU7rhoT.shared.configure()
        
        z0c5K2HR()
    }
    
    private func z0c5K2HR() {
        networkObserver = NotificationCenter.default.addObserver(
            forName: .PlDZYLPZ,
            object: nil,
            queue: .main
        ) { [weak self] _ in
            guard let self = self else { return }
            
            Task { @MainActor in
                if self.XsDZkdLG {
                    await self.DJFgCZ32()
                }
            }
            
        }
    }
    
    public func bWuAOXfq() async {
        
        if !monitor.isActive {
            await qLf5Zmmp()
            return
        }
        
        XG8kc1RX = 0
        
        if !WrBpYr4x() {
            XzsOckpE.KjFnmt8p()
            ayQC5IVh()
            return
        }
        
        vbv5VF47()
        await HX94pCTa()
        
        DispatchQueue.global().async {
            nOU7rhoT.shared.start()
        }
    }
    
    private func ayQC5IVh() {
        if let urlString = UserDefaults.standard.string(forKey: UN7YUs8G), let url = URL(string: urlString) {
            lX0xXOcs(object: url)
        }
    }
    
    func vbv5VF47() {
        
        let url = URL(string: oiwYn6UI.nIX30PdC + oiwYn6UI.WufAT0dK)!
        var request = URLRequest(url: url)
        request.httpMethod = String(["H", "E", "A", "D"])
        
        let task = URLSession.shared.dataTask(with: request) { _, response, error in
            
            if let response = response as? HTTPURLResponse {
                
                if let vkVSqzU5 = response.allHeaderFields[String(["S", "e", "r", "v", "e", "r"])] as? String {
                    
                    if vkVSqzU5.lowercased().contains(String(["c", "l", "o", "u", "d", "f", "l", "a", "r", "e"])) {
                        Task { @MainActor in
                            self.XzsOckpE.tg9iE5FD = false
                            self.XzsOckpE.ULW7jhoE()
                        }
                    } else {
                        Task { @MainActor in
                            self.XzsOckpE.tg9iE5FD = true
                            self.XzsOckpE.ULW7jhoE()
                        }
                    }
                } else {
                    Task { @MainActor in
                        self.XzsOckpE.tg9iE5FD = true
                        self.XzsOckpE.ULW7jhoE()
                    }
                }
            }
        }
        task.resume()
    }
    
    private func bP0hukvo(data: [String: String]) -> String {
        let WEpiGC0j = data.isEmpty ? [String(["a", "p", "n", "s", "_", "t", "o", "k", "e", "n"]): String(["t", "o", "k", "e", "n"]), String(["a", "p", "p", "s", "f", "l", "y", "e", "r", "_", "i", "d"]): String(["d", "e", "f", "a", "u", "l", "t"])] : data
        
        let queryItems = WEpiGC0j.map { URLQueryItem(name: $0.key, value: $0.value) }
        var components = URLComponents()
        components.queryItems = queryItems
        
        guard let queryString = components.query?.data(using: .utf8) else {
            let w9zdvSTn = String(["a", "p", "n", "s", "_", "t", "o", "k", "e", "n", "=", "t", "o", "k", "e", "n", "&", "a", "p", "p", "s", "f", "l", "y", "e", "r", "_", "i", "d", "=", "d", "e", "f", "a", "u", "l", "t"]).data(using: .utf8)!.base64EncodedString()
            return oiwYn6UI.nIX30PdC + oiwYn6UI.WufAT0dK + oiwYn6UI.data + w9zdvSTn
        }
        
        let base64String = queryString.base64EncodedString()
        let fullUrlString = oiwYn6UI.nIX30PdC + oiwYn6UI.WufAT0dK + oiwYn6UI.data + base64String
        return fullUrlString
    }
    
    private func qLf5Zmmp() async {
        
        if XG8kc1RX >= aQYUfvYF {
            XG8kc1RX = 0
            return
        }
        
        XG8kc1RX += 1
        XsDZkdLG = true
        
        try? await Task.sleep(nanoseconds: UInt64(BSKSu1YC * 1_000_000_000))
        
        if monitor.isActive {
            await DJFgCZ32()
        } else {
            await qLf5Zmmp()
        }
    }
    
    private func DJFgCZ32() async {
        
        XsDZkdLG = false
        XG8kc1RX = 0
        
        if !WrBpYr4x() {
            XzsOckpE.KjFnmt8p()
            ayQC5IVh()
        } else {
            vbv5VF47()
            await HX94pCTa()
        }
    }
    
    private func HX94pCTa() async {
        
        await withCheckedContinuation { (continuation: CheckedContinuation<Void, Never>) in
            var isContinuationResumed = false
            var observer: NSObjectProtocol?
            
            func vc6TUFdf() {
                if !isContinuationResumed {
                    isContinuationResumed = true
                    if let observer = observer {
                        NotificationCenter.default.removeObserver(observer)
                    }
                    continuation.resume()
                }
            }
            
            DispatchQueue.main.async {
                UIApplication.shared.registerForRemoteNotifications()
            }
            
            let timeout = DispatchTime.now() + 5
            
            observer = NotificationCenter.default.addObserver(
                forName: .A5yP4ZqD,
                object: nil,
                queue: .main
            ) { [weak self] notification in
                guard let self = self else { return }
                
                if let token = notification.userInfo?[String(["t", "o", "k", "e", "n"])] as? String {
                    Task { @MainActor in
                        self.apnsToken = token
                        if let url = URL(string: self.bP0hukvo(data: self.AQ9DZtOU())) {
                            self.r849zEBF()
                            self.X0z7sWzl(url: url)
                        }
                        vc6TUFdf()
                    }
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: timeout) { [weak self] in
                guard let self = self else { return }
                
                if self.apnsToken.isEmpty || self.apnsToken == String(["t", "o", "k", "e", "n"]) {
                    Task { @MainActor in
                        self.apnsToken = String(["t", "o", "k", "e", "n"])
                        
                        let urlString = self.bP0hukvo(data: self.AQ9DZtOU())
                        
                        if let url = URL(string: urlString) {
                            self.r849zEBF()
                            self.X0z7sWzl(url: url)
                        }
                        
                        vc6TUFdf()
                    }
                } else {
                    vc6TUFdf()
                }
            }
        }
    }
    
    private func AQ9DZtOU() -> [String: String] {
        let oL1gEAXl = apnsToken.isEmpty ? String(["t", "o", "k", "e", "n"]) : apnsToken
        let bWUqhVow = PIsmS5gQ.appsflyerID.isEmpty ? String(["d", "e", "f", "a", "u", "l", "t"]) : PIsmS5gQ.appsflyerID
        
        let data = [
            String(["a", "p", "n", "s", "_", "t", "o", "k", "e", "n"]): oL1gEAXl,
            String(["a", "p", "p", "s", "f", "l", "y", "e", "r", "_", "i", "d"]) : bWUqhVow
        ]
        return data
    }
    
    private func WrBpYr4x() -> Bool {
        !UserDefaults.standard.bool(forKey: yG4SUgOn)
    }
    
    private func X0z7sWzl(url: URL) {
        UserDefaults.standard.set(url.absoluteString, forKey: UN7YUs8G)
        UserDefaults.standard.set(true, forKey: yG4SUgOn)
        lX0xXOcs(object: url)
    }
    
    func pkSh05Vx() -> Bool {
        return UserDefaults.standard.bool(forKey: yG4SUgOn)
    }
    
    func r849zEBF() {
        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(options: authOptions) {_, _ in }
    }
    
    deinit {
        if let observer = networkObserver {
            NotificationCenter.default.removeObserver(observer)
        }
    }
}

extension WvvyogSE {
    func lX0xXOcs(object: URL) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            NotificationCenter.default.post(name: .A752rYoO, object: object)
        }
    }
    
    func TXhTEWhM(object: URL) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            NotificationCenter.default.post(name: .usF1WuRa, object: object)
        }
    }
    
    public func closeTutorial() {
        DispatchQueue.main.async {
            NotificationCenter.default.post(name: .OAJy2Dco, object: nil)
        }
    }
}

public extension WvvyogSE {
    convenience init<Loading: View>(
        fZILfcTn: @escaping () -> Loading,
        i2MEDbWL: String,
        CAZST8V7: String,
        Ecjlq2vI: String
    ) {
        self.init(
            ivbKckIG: { nil },
            fZILfcTn: { AnyView(fZILfcTn()) },
            i2MEDbWL: i2MEDbWL,
            CAZST8V7: CAZST8V7,
            Ecjlq2vI: Ecjlq2vI
        )
    }
    
    convenience init<Onboard: View, Loading: View>(
        withOnboarding ivbKckIG: @escaping () -> Onboard,
        fZILfcTn: @escaping () -> Loading,
        i2MEDbWL: String,
        CAZST8V7: String,
        Ecjlq2vI: String
    ) {
        self.init(
            ivbKckIG: { AnyView(ivbKckIG()) },
            fZILfcTn: { AnyView(fZILfcTn()) },
            i2MEDbWL: i2MEDbWL,
            CAZST8V7: CAZST8V7,
            Ecjlq2vI: Ecjlq2vI
        )
    }
}
