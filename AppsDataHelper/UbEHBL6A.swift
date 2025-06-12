import SwiftUI
import WebKit

public enum ZbYKjd7e {
    case success(URL)
    case vNgR1Ed3(URL?)
    case rvLy4Q8p
}

class HMVALtDw: ObservableObject {
    @Published var Ohdxf4Kd = true
}

class Ckq71vyS: ObservableObject  {
    
    static var shared = Ckq71vyS()
    @Published var PJ8KwM9O: ZbYKjd7e = .rvLy4Q8p
    @Published var WrBpYr4x = true
    @Published var tg9iE5FD = false

    
    func dhgFV4Cj() {
        let WrBpYr4x = !UserDefaults.standard.bool(forKey: String(["f", "i", "r", "s", "t", "L", "a", "u", "n", "c", "h", "F", "l", "a", "g"]))
        self.WrBpYr4x = WrBpYr4x
        if WrBpYr4x {
            UserDefaults.standard.set(true, forKey: String(["f", "i", "r", "s", "t", "L", "a", "u", "n", "c", "h", "F", "l", "a", "g"]))
        }
        
    }
    
    func ULW7jhoE() {
        let defaults = UserDefaults.standard
        defaults.setValue(tg9iE5FD, forKey: String(["i", "s", "O", "n", "b", "o", "a", "r", "d", "i", "n", "g"]))
    }
    
    func KjFnmt8p() {
        tg9iE5FD = UserDefaults.standard.bool(forKey: String(["i", "s", "O", "n", "b", "o", "a", "r", "d", "i", "n", "g"]))
        
    }
}

struct IPu3jax8: View {
    @StateObject var rrMXQuf6 = HMVALtDw()
    let url: URL
    
    init(url: URL) {
        self.url = url
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            cBoyXINc(f0LuNulj: url)
                .environmentObject(rrMXQuf6)
                .ignoresSafeArea(.keyboard, edges: .bottom)
            if rrMXQuf6.Ohdxf4Kd {
                ProgressView()
                    .tint(.black)
            }
        }
        .statusBarHidden(true)
    }
}

// MARK: - Web View Implementation

struct cBoyXINc: UIViewRepresentable {
    @EnvironmentObject var rrMXQuf6: HMVALtDw
    var f0LuNulj: URL
    
    init(f0LuNulj: URL) {
        self.f0LuNulj = f0LuNulj
    }
    
    func makeUIView(context: Context) -> WKWebView {
        let wPau6zC8 = WKWebViewConfiguration()
        
        wPau6zC8.defaultWebpagePreferences.allowsContentJavaScript = true
        wPau6zC8.preferences.javaScriptCanOpenWindowsAutomatically = true
        wPau6zC8.mediaTypesRequiringUserActionForPlayback = []
        
        let Fxas2YVK = WKUserScript(source: Zqa4ZHQu, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
        wPau6zC8.userContentController.addUserScript(Fxas2YVK)
        
        wPau6zC8.websiteDataStore = WKWebsiteDataStore.default()
        
        let webView = WKWebView(frame: .zero, configuration: wPau6zC8)
        webView.navigationDelegate = context.coordinator
        webView.uiDelegate = context.coordinator
        webView.allowsBackForwardNavigationGestures = true
        
        
        webView.scrollView.keyboardDismissMode = .interactive
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        
        let fKoNFbUL = WKUserScript(
            source: userScript,
            injectionTime: .atDocumentEnd,
            forMainFrameOnly: false
        )
        
        wPau6zC8.userContentController.addUserScript(fKoNFbUL)
        
        webView.evaluateJavaScript(String(["n", "a", "v", "i", "g", "a", "t", "o", "r", ".", "u", "s", "e", "r", "A", "g", "e", "n", "t"])) { (result, error) in
            if let userAgent = result as? String {
                let lzCRSvcB = self.NwavoxNo(userAgent)
                webView.customUserAgent = lzCRSvcB
            }
        }
        
        let request = URLRequest(url: f0LuNulj, cachePolicy: .returnCacheDataElseLoad)
        webView.load(request)
        
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {}
    
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, WKNavigationDelegate, WKUIDelegate {
        var parent: cBoyXINc
        
        init(_ parent: cBoyXINc) {
            self.parent = parent
        }
        
        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            parent.rrMXQuf6.Ohdxf4Kd = true
        }
        
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            parent.rrMXQuf6.Ohdxf4Kd = false
          
        }
        
        func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
            parent.rrMXQuf6.Ohdxf4Kd = false
        }
        
        func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
            if let url = navigationAction.request.url {
                if navigationAction.targetFrame == nil {
                    webView.load(URLRequest(url: url))
                    decisionHandler(.cancel)
                    return
                }
            }
            if let X7w8U0MD = navigationAction.request.url?.absoluteString {
                        if !X7w8U0MD.contains(String(["h", "t", "t", "p", "s", ":", "/", "/"])), !X7w8U0MD.contains(String(["h", "t", "t", "p", ":", "/", "/"])) {
                            UIApplication.shared.open(navigationAction.request.url!)
                        }
                    }
            
            decisionHandler(.allow)
        }
        
        func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
            if let url = navigationAction.request.url {
                webView.load(URLRequest(url: url))
            }
            return nil
        }
        
        func webView(_ webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping () -> Void) {
            DispatchQueue.main.async {
                let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: String(["O", "K"]), style: .default) { _ in
                    completionHandler()
                })
                
                guard let SLe0YnLm = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                      let rootViewController = SLe0YnLm.windows.first(where: { $0.isKeyWindow })?.rootViewController else {
                    completionHandler()
                    return
                }
                
                var Ifa3doK3 = rootViewController
                while let mVmjvsMU = Ifa3doK3.presentedViewController {
                    Ifa3doK3 = mVmjvsMU
                }
                
                Ifa3doK3.present(alertController, animated: true)
            }
        }
    }
}

extension cBoyXINc {
    private func NwavoxNo(_ userAgent: String) -> String {
            var U0QeZYx7 = userAgent
            
        if !U0QeZYx7.hasPrefix(String(["M", "o", "z", "i", "l", "l", "a", "/", "5", ".", "0"])) {
                U0QeZYx7 = String(["M", "o", "z", "i", "l", "l", "a", "/", "5", ".", "0", " "]) + U0QeZYx7
            }
            
            let components = U0QeZYx7.components(separatedBy: String([" "]))
            var patchedComponents: [String] = []
            
            for component in components {
                if component.hasPrefix(String(["V", "e", "r", "s", "i", "o", "n", "/"])) {
                    patchedComponents.append(String(["V", "e", "r", "s", "i", "o", "n", "/", "1", "8", ".", "4"]))
                } else if component.hasPrefix(String(["M", "o", "b", "i", "l", "e", "/"])) {
                    patchedComponents.append(String(["M", "o", "b", "i", "l", "e", "/", "1", "5", "E", "1", "4", "8"]))
                } else if component.hasPrefix(String(["S", "a", "f", "a", "r", "i", "/"])) {
                    patchedComponents.append(String(["S", "a", "f", "a", "r", "i", "/", "6", "0", "4", ".", "1"]))
                } else if component.contains(String(["i", "P", "h", "o", "n", "e", " ", "O", "S"])) {
                    let o0IJIxh7 = component.replacingOccurrences(of: String(["_"]), with: String(["_"]))
                    patchedComponents.append(o0IJIxh7)
                } else {
                    patchedComponents.append(component)
                }
            }
            
            let lzCRSvcB = patchedComponents.joined(separator: String([" "]))
            
            if !lzCRSvcB.contains(String(["V", "e", "r", "s", "i", "o", "n", "/", "1", "8", ".", "4"])) {
                if let XxCTGXru = patchedComponents.firstIndex(where: { $0.hasPrefix(String(["S", "a", "f", "a", "r", "i", "/"])) }) {
                    patchedComponents.insert(String(["V", "e", "r", "s", "i", "o", "n", "/", "1", "8", ".", "4"]), at: XxCTGXru)
                } else if let OktPVraz = patchedComponents.firstIndex(where: { $0.hasPrefix(String(["M", "o", "b", "i", "l", "e", "/"])) }) {
                    patchedComponents.insert(String(["V", "e", "r", "s", "i", "o", "n", "/", "1", "8", ".", "4"]), at: OktPVraz + 1)
                }
            }
            
            if !lzCRSvcB.contains(String(["M", "o", "b", "i", "l", "e", "/", "1", "5", "E", "1", "4", "8"])) {
                if let uBWJWSA5 = patchedComponents.firstIndex(where: { $0.hasPrefix(String(["V", "e", "r", "s", "i", "o", "n", "/"])) }) {
                    patchedComponents.insert(String(["M", "o", "b", "i", "l", "e", "/", "1", "5", "E", "1", "4", "8"]), at: uBWJWSA5 + 1)
                }
            }
            
            return patchedComponents.joined(separator: String([" "]))
        }
}
