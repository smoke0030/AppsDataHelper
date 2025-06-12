import Foundation
import Network

class NetworkMonitor: ObservableObject {
    static var shared = NetworkMonitor()
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: String(["m", "o", "n", "i", "t", "o", "r"]))
    
    @Published var isActive = false
    @Published var isExpensive = false
    @Published var isConstrained = false
    @Published var connectionType = NWInterface.InterfaceType.other
    @Published var VVvtbMEm = false
    
    init() {
        monitor.pathUpdateHandler = { path in
            DispatchQueue.main.async {
                let wasConnected = self.isActive
                
                self.isActive = path.status == .satisfied
                self.isExpensive = path.isExpensive
                self.isConstrained = path.isConstrained
                
                let connectionTypes: [NWInterface.InterfaceType] = [.cellular, .wifi, .wiredEthernet]
                self.connectionType = connectionTypes.first(where: path.usesInterfaceType) ?? .other
                
                if !wasConnected && self.isActive {
                    NotificationCenter.default.post(name: .PlDZYLPZ, object: nil)
                }
            }
        }
        
        monitor.start(queue: queue)
    }
    
    deinit {
        monitor.cancel()
    }
}
