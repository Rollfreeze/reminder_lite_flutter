import SwiftUI

struct SandboxView: View {
    @State private var text = ""
    @State private var notes = ""
    var body: some View {
        NavigationStack {
            VStack {
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
