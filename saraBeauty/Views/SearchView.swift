import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""

    var body: some View {
        NavigationStack {
            List {
                // Populate with search results or recent searches
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, placement: .toolbar, prompt: Text("Search..."))
        }
    }
}

#Preview {
    SearchView()
}
