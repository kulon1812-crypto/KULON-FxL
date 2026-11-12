import SwiftUI

struct ContentView: View {
    @State private var haptics = true
    @State private var compactMode = false
    @State private var reduceMotion = false

    var body: some View {
        ZStack {
            Color(red: 0.05, green: 0.06, blue: 0.09)
                .ignoresSafeArea()

            VStack(spacing: 24) {
                Text("FxL")
                    .font(.system(size: 38, weight: .bold))
                    .foregroundColor(.white)

                Text("SETTINGS")
                    .font(.caption)
                    .tracking(4)
                    .foregroundColor(.gray)

                VStack(spacing: 18) {
                    Toggle("Haptic Feedback", isOn: $haptics)
                    Toggle("Compact Mode", isOn: $compactMode)
                    Toggle("Reduce Motion", isOn: $reduceMotion)
                }
                .padding()
                .background(Color.white.opacity(0.07))
                .cornerRadius(18)

                Text("FxL • iOS")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(24)
        }
        .preferredColorScheme(.dark)
    }
}
