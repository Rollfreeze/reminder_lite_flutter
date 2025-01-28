import SwiftUI

struct SandboxView: View {
    @State private var text = ""
    @State private var notes = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello World!")
                    .foregroundStyle(.secondary)
                
                Spacer()
                
                Text("Hello World!")
                
                Text("largeTitle!")
                    .font(.largeTitle)
                Text("title!")
                    .font(.title)
                Text("title2!")
                    .font(.title2)
                Text("title3!")
                    .font(.title3)
                Text("caption!")
                    .font(.caption)
                Text("caption2!")
                    .font(.caption2)
                Text("footnote!")
                    .font(.footnote)
                Text("headline!")
                    .font(.headline)
                Text("callout!")
                    .font(.callout)
                Text("subheadline!")
                    .font(.subheadline)

                Spacer()
                
                TextField("TextField", text: $text)
                    .border(Color.gray)
                
                
                TextEditor(text: $notes)
                    .padding(.vertical, -6)
                    .padding(.horizontal, -4)
                    .border(Color.gray)
                    .frame(maxHeight: 50)
                    .overlay {
                        if (notes.isEmpty) {
                            VStack {
                                HStack {
                                    Text("TextEditor")
                                        .foregroundColor(.gray.opacity(0.5))
                                    Spacer()
                                }
                                Spacer()
                            }
                            .padding(.top, 2)
                        }
                    }
                
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("SandboxView")
                        .font(.headline)
                }
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SandboxView()
}
