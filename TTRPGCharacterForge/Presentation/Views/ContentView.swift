import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue]

    @State private var selectedIndex = 0
    @State private var offset = CGSize.zero

    var body: some View {
        ZStack {
            // Fill background with a solid color
            Color.secondary
                .edgesIgnoringSafeArea(.all)

            TabView(selection: $selectedIndex) {
                ForEach(colors.indices, id: \.self) { index in
                    colors[index]
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .opacity(opacityForIndex(index))
                        .offset(x: offset.width, y: .zero)
                        .animation(.easeInOut, value: offset)
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .highPriorityGesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { value in
                        // Calculate drag distance
                        offset = value.translation
                    }
                    .onEnded { value in
                        let dragDistance = value.translation.width
                        // Determine swipe direction and update selected index
                        if abs(dragDistance) > 100 {
                            if dragDistance < 0 {
                                // Swipe left
                                selectedIndex = min(selectedIndex + 1, colors.count - 1)
                            } else {
                                // Swipe right
                                selectedIndex = max(selectedIndex - 1, 0)
                            }
                        }
                        // Reset offset
                        withAnimation(.easeInOut) {
                            offset = .zero
                        }
                    }
                , isEnabled: true
            )
            .animation(.default, value: selectedIndex)

            VStack {
                Text("Selected Index: \(selectedIndex)").foregroundColor(.primary).font(.headline)
                Text("Offset: \(offset.width)").foregroundColor(.primary).font(.headline)
            }
        }
    }

    private func opacityForIndex(_ index: Int) -> Double {
        let dragDistance = offset.width
        if index == selectedIndex {
            return max(0.0, 1.0 - abs(Double(dragDistance / 100)))
        } else if index == selectedIndex + 1 && dragDistance < 0 {
            return max(0.0, abs(Double(dragDistance / 100)))
        } else if index == selectedIndex - 1 && dragDistance > 0 {
            return max(0.0, abs(Double(dragDistance / 100)))
        }
        return 0.0
    }
}

#Preview {
    ContentView()
}
