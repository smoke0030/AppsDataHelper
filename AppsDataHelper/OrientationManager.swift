import SwiftUI
import Combine

public enum BWGSsreD {
    case portrait
    case landscape
    case all
    
    public var mask: UIInterfaceOrientationMask {
        switch self {
        case .portrait:
            return .portrait
        case .landscape:
                return [.landscapeLeft, .landscapeRight]
        case .all:
            return .all
        }
    }
}

public class mx4iUmzK: ObservableObject {
    public static let shared = mx4iUmzK()
    @Published public var orientation: BWGSsreD = .portrait
    
    private init() {}
    
    public func va9vW7Ls(_ orientationType: BWGSsreD) {
        
        switch orientationType {
        case .portrait:
            if UIDevice.current.orientation != .portrait {
                let value = UIInterfaceOrientation.portrait.rawValue
                UIDevice.current.setValue(value, forKey: String(["o", "r", "i", "e", "n", "t", "a", "t", "i", "o", "n"]))
            }
        case .landscape:
            if !UIDevice.current.orientation.isLandscape {
                let value = UIInterfaceOrientation.landscapeRight.rawValue
                UIDevice.current.setValue(value, forKey: String(["o", "r", "i", "e", "n", "t", "a", "t", "i", "o", "n"]))
            }
        case .all:
            UINavigationController.attemptRotationToDeviceOrientation()
        }
    }
}

public struct OrientationModifier: ViewModifier {
    let orientation: BWGSsreD
    
    public init(orientation: BWGSsreD) {
        self.orientation = orientation
    }
    
    public func body(content: Content) -> some View {
        content
            .onAppear {
                mx4iUmzK.shared.orientation = orientation
                
                mx4iUmzK.shared.va9vW7Ls(orientation)
            }
    }
}

public extension View {
    func supportedOrientations(_ orientation: BWGSsreD) -> some View {
        modifier(OrientationModifier(orientation: orientation))
    }
}

public protocol OrientationDelegate: AnyObject {
    func iE6EOopj() -> UIInterfaceOrientationMask
}


public extension UIApplicationDelegate {
    func FvrglQ90(for window: UIWindow?) -> UIInterfaceOrientationMask {
        return mx4iUmzK.shared.orientation.mask
    }
}
