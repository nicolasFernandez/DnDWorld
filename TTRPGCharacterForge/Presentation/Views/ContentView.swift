import SwiftUI

struct ColorItem: Identifiable {
    let id: String
    let color: Color
}

struct ColorView: View {
    let item: ColorItem

    var body: some View {
        item
            .color
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            )
    }
}

struct ContentView: View {

    let colors: [ColorItem] = [
        ColorItem(id: "rojo", color: .red),
        ColorItem(id: "verde", color: .green),
        ColorItem(id: "azul", color: .blue)
    ]

    private let screenWidth = UIScreen.main.bounds.width

    // Main state
    @State private var selectedId: String?
    @State private var offset = CGSize.zero

    // Animation state
    @State private var targetIndex: Int? = nil
    @State private var animationInProgress = false
    private let animationDuration: Double = 0.4

    // Screen percentage to completely fade out or fade in
    private let screenPercentage: Double = 1.0 // 0.5

    var body: some View {
        ZStack {
            backgroundLayer
            pageViewLayer
            debugInfoLayer
        }
        .onAppear {
            selectedId = "rojo"
        }
    }

    // MARK: - View Components
    private var backgroundLayer: some View {
        Color.secondary
            .edgesIgnoringSafeArea(.all)
    }

    private var pageViewLayer: some View {
        pageStack
            .gesture(dragGesture)
    }

    private var pageStack: some View {
        ZStack {
            previousPageView
            currentPageView
            nextPageView
        }
    }

    private var previousPageView: some View {
        Group {
            if let previousItem = previousItem {
                ColorView(item: previousItem)
                    .opacity(previousPageOpacity())
                    .offset(x: -screenWidth + offset.width, y: 0)
            }
        }
    }

    private var currentPageView: some View {
        Group {
            if let item = currentItem {
                ColorView(item: item)
                    .opacity(currentPageOpacity())
                    .offset(x: offset.width, y: 0)
            }
        }
    }

    private var nextPageView: some View {
        Group {
            if let nextItem = nextItem {
                ColorView(item: nextItem)
                    .opacity(nextPageOpacity())
                    .offset(x: screenWidth + offset.width, y: 0)
            }
        }
    }

    private var debugInfoLayer: some View {
#if DEBUG
        VStack {
            selectedIdInfoView
            offsetInfoView
        }
#else
        EmptyView()
#endif
    }

    private var selectedIdInfoView: some View {
        DebugInfoLabel(
            title: "Index", 
            description: selectedId ?? "",
            onAction: {
                // Example: Reset to first color
                selectedId = colors.first?.id
                // You can modify any ContentView state here
            }
        )
    }

    private var offsetInfoView: some View {
        DebugInfoLabel(
            title: "Offset", 
            description: "\(offset.width)",
            onAction: {
                // Example: Reset the offset
                offset = .zero
                // You can modify any ContentView state here
            }
        )
    }

    // MARK: - Gestures
    private var dragGesture: some Gesture {
        DragGesture(minimumDistance: 0)
            .onChanged(onDragChanged(_:))
            .onEnded(onDragEnded(_:))
    }

    private func onDragChanged(_ value: DragGesture.Value) {
        if animationInProgress { return }
        offset = value.translation
    }

    private func onDragEnded(_ value: DragGesture.Value) {
        if animationInProgress { return }

        let dragDistance = value.translation.width
        let threshold: CGFloat = 100

        if abs(dragDistance) > threshold {
            // Determine swipe direction and target index
            let isSwipingLeft = dragDistance < 0

            // Check if we can move in that direction
            guard let selectedIndex = selectedIndex else { return }
            if isSwipingLeft && selectedIndex < colors.count - 1 {
                targetIndex = selectedIndex + 1
            } else if !isSwipingLeft && selectedIndex > 0 {
                targetIndex = selectedIndex - 1
            } else {
                // Can't move in that direction, bounce back
                resetOffset()
                return
            }

            animationRun(isSwipingLeft)
        } else {
            resetOffset()
        }
    }

    // MARK: - Animation
    private func animationRun(_ isSwipingLeft: Bool) {
        animationStart(isSwipingLeft)
        animationEnd()
    }

    private func animationStart(_ isSwipingLeft: Bool) {
        animationInProgress = true
        let targetOffset = CGSize(
            width: isSwipingLeft ? -screenWidth : screenWidth,
            height: 0
        )
        updateOffset(targetOffset)
    }

    private func animationEnd() {
        DispatchQueue.main.asyncAfter(deadline: .now() + animationDuration) {
            // Update the index
            if let newIndex = targetIndex {
                selectedId = colors[newIndex].id
                targetIndex = nil
            }

            // Reset the offset without animation
            offset = .zero
            animationInProgress = false
        }
    }

    // MARK: - Opacity Calculations
    private func currentPageOpacity() -> Double {
        let progress = draggingProgress()
        return 1.0 - progress
    }

    private func nextPageOpacity() -> Double {
        if offset.width >= 0 { return 0 }
        return draggingProgress()
    }

    private func previousPageOpacity() -> Double {
        if offset.width <= 0 { return 0 }
        return draggingProgress()
    }

    private func draggingProgress() -> Double {
        min(1.0, abs(offset.width) / (screenWidth * screenPercentage))
    }

    private func updateOffset(_ targetOffset: CGSize) {
        withAnimation(.easeIn(duration: animationDuration)) {
            offset = targetOffset
        }
    }

    private func resetOffset() {
        updateOffset(.zero)
    }

    private var previousItem: ColorItem? {
        guard let selectedIndex = selectedIndex else { return nil }
        return selectedIndex > 0 ? colors[selectedIndex - 1] : nil
    }

    private var currentItem: ColorItem? {
        guard let selectedIndex = selectedIndex else { return nil }
        return colors[selectedIndex]
    }

    private var nextItem: ColorItem? {
        guard let selectedIndex = selectedIndex else { return nil }
        return selectedIndex < colors.count - 1 ? colors[selectedIndex + 1] : nil
    }

    private var selectedIndex: Int? {
        colors.firstIndex(where: { $0.id == selectedId })
    }
}

struct DebugInfoLabel: View {

    let title: String
    let description: String
    var onAction: () -> Void
    
    var body: some View {
        VStack {
            Text("\(title): \(description)")
                .foregroundColor(.white)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color.black.opacity(0.7))
                .cornerRadius(5)
            
            Button("Trigger Action") {
                onAction()
            }
            .padding(5)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(5)
        }
    }
}

#Preview {
    ContentView()
}

#Preview("Debug Label") {
    struct PreviewWrapper: View {
        @State private var counter: Int = 0
        
        var body: some View {
            VStack {
                Text("Counter: \(counter)")
                    .padding()
                
                DebugInfoLabel(
                    title: "Test", 
                    description: "Description",
                    onAction: {
                        counter += 1
                    }
                )
            }
        }
    }
    
    return PreviewWrapper()
}
