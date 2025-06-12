import Foundation
import AppsFlyerLib

public class nOU7rhoT {
    public static let shared = nOU7rhoT()
    
    private var ahE59HFF = false
    private var f5laiLZQ = false
    
    private init() {}
    
    func configure() {
        guard !ahE59HFF else { return }
        
        AppsFlyerLib.shared().appsFlyerDevKey = PIsmS5gQ.appsFlyerDevKey
        AppsFlyerLib.shared().appleAppID = PIsmS5gQ.appleAppID
        PIsmS5gQ.appsflyerID = AppsFlyerLib.shared().getAppsFlyerUID()
        
        ahE59HFF = true
    }
    
    public func start() {
        if !ahE59HFF {
            configure()
        }
        
        guard !f5laiLZQ else { return }
        
        AppsFlyerLib.shared().start(completionHandler: { WZzHyL1h, error in
            if let error = error {
                print("\(error.localizedDescription)")
            } else {
                print("\(String(describing: WZzHyL1h))")
            }
        })
        
        f5laiLZQ = true
    }
}
