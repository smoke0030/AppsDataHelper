import SwiftUI

public struct StartView: View {
    @ObservedObject var XzsOckpE = Ckq71vyS.shared
    @State var core: BWGSsreD = .all
    @State var game: BWGSsreD = .portrait
    @State var loader: BWGSsreD = .portrait
    @State var tutorial: BWGSsreD = .portrait
    
    public init(core: BWGSsreD = .all, game: BWGSsreD = .portrait, loader: BWGSsreD = .portrait, tutorial: BWGSsreD = .portrait) {
        self.core = core
        self.game = game
        self.loader = loader
        self.tutorial = tutorial
    }
    public var body: some View {
        Group {
            switch XzsOckpE.PJ8KwM9O {
                    
                case .success(let url):
                    if XzsOckpE.tg9iE5FD {
                        yRDNHpN6(url: url)
                    } else {
                        IPu3jax8(url: url)
                            .supportedOrientations(core)
                    }
                  
                case .vNgR1Ed3(_):
                    GameView(content: {
                        Np7u8UHK.qw05qKk1()
                    }, url: nil)
                    .supportedOrientations(game)
                case .rvLy4Q8p:
                    Loader() {
                        Np7u8UHK.Ltenj1Mu()
                    }
                    .supportedOrientations(loader)
            }
        }
        .onReceive(NotificationCenter.default.publisher(for: .A752rYoO)) { notification in
            withAnimation(.easeInOut(duration: 0.5)) {
                if let url = notification.object as? URL {
                    XzsOckpE.PJ8KwM9O = .success(url)
                }
            }
            
        }
        
        .onReceive(NotificationCenter.default.publisher(for: .usF1WuRa)) { notification in
            withAnimation(.easeInOut(duration: 0.5)) {
                XzsOckpE.PJ8KwM9O = .vNgR1Ed3(nil)
                
            }
            
        }
        .onReceive(NotificationCenter.default.publisher(for: .OAJy2Dco), perform: { notification in
            withAnimation(.easeInOut(duration: 0.5)) {
                XzsOckpE.WrBpYr4x = false
            }
        })
        .onAppear {
            XzsOckpE.dhgFV4Cj()
        }
        
    }
    
    func yRDNHpN6(url: URL) -> some View {
        ZStack {
            
            IPu3jax8(url: url)
                .supportedOrientations(game)
            
            if  XzsOckpE.WrBpYr4x, let a4olfZ7i = Np7u8UHK.GdtozeIp() {
                TutorialView {
                    a4olfZ7i
                        
                }
                .supportedOrientations(tutorial)
            }
        }
    }
}
