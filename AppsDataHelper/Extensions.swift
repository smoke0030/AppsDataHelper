import UIKit

extension Notification.Name {
    static let PlDZYLPZ = Notification.Name(String(["i", "n", "t", "e", "r", "n", "e", "t", "C", "o", "n", "n", "e", "c", "t", "i", "o", "n", "R", "e", "s", "t", "o", "r", "e", "d"]))
    public static let A5yP4ZqD = Notification.Name(String(["a", "p", "n", "s", "T", "o", "k", "e", "n", "R", "e", "c", "e", "i", "v", "e", "d"]))
    public static let A752rYoO = Notification.Name(String(["s", "u", "c", "c", "e", "s", "f", "u", "l", "l", "U", "p", "d", "a", "t", "e"]))
    public static let usF1WuRa = Notification.Name(String(["f", "a", "i", "l", "e", "d", "U", "p", "d", "a", "t", "e"]))
    static let OAJy2Dco = Notification.Name(String(["f", "i", "r", "s", "t", "L", "a", "u", "n", "c", "h"]))
}





public extension UIApplicationDelegate {
    func bdBLEnyX(deviceToken: Data) {
        let tokenString = deviceToken.map { String(format: "%02x", $0) }.joined()
        NotificationCenter.default.post(name: .A5yP4ZqD, object: nil, userInfo: [String(["t", "o", "k", "e", "n"]): tokenString])
    }
}
