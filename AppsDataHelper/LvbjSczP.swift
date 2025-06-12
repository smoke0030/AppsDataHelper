import SwiftUI

struct GameView<Content: View>: View {
    let content: Content
    let url: URL?
    
    init(@ViewBuilder content: () -> Content, url: URL?) {
        self.content = content()
        self.url = url
    }
    
    var body: some View {
        ZStack {
            content
        }
    }
}



struct Loader<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            content
        }
    }
}


struct TutorialView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            content
        }
    }
}
