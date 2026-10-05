import SwiftUI

public struct PressScaleButtonStyle: ButtonStyle {
    public let scale: CGFloat

    public init(scale: CGFloat = 0.96) {
        self.scale = scale
    }

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scale : 1.0)
            .animation(.spring(response: 0.25, dampingFraction: 0.65), value: configuration.isPressed)
    }
}

public extension View {
    func pressScale(scale: CGFloat = 0.96) -> some View {
        self.buttonStyle(PressScaleButtonStyle(scale: scale))
    }
}
