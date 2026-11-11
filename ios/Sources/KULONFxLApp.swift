
import SwiftUI
import WebKit

@main
struct KULONFxLApp: App {
    var body: some Scene {
        WindowGroup {
            MenuView()
                .preferredColorScheme(.light)
        }
    }
}

struct MenuView: View {
    var body: some View {
        LocalMenuWebView()
            .ignoresSafeArea()
    }
}

struct LocalMenuWebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.isOpaque = false
        webView.scrollView.bounces = false

        if let url = Bundle.main.url(
            forResource: "index",
            withExtension: "html"
        ) {
            webView.loadFileURL(
                url,
                allowingReadAccessTo: url.deletingLastPathComponent()
            )
        }

        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
