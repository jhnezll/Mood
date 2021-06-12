import Foundation
import Firebase

struct Entry: Codable, Identifiable {
    var id: String
    var title: String
    var msg: String
}

class JournalViewModel: ObservableObject {
    
    @Published var entries = [Entry]()
    private let db = Firestore.firestore()
    private let user = Auth.auth().currentUser
    
    func fetchData() {
        if (user != nil) {
            db.collection("journal").whereField("users", arrayContains: user!.uid).addSnapshotListener({(snapshot, error) in
                guard let documents = snapshot?.documents else {
                    print("No documents retruned!")
                    return
                }
                
                self.entries = documents.map({docSnapshot -> Entry in
                    let data = docSnapshot.data()
                    let docID = docSnapshot.documentID
                    let title = data["title"] as? String ?? ""
                    let msg = data["msg"] as? String ?? ""
                    return Entry(id: docID, title: title, msg: msg)
                })
            })
        }
    }
    
}
