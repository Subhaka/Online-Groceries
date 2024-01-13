//
//  AuthViewModel.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2024-01-03.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

protocol AuthenticationFormProtocol{
    var formIsValid: Bool{
        get
    }
}
@MainActor
class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init(){
        self.userSession = Auth.auth().currentUser
        Task{
            await fetchUser()
        }
    }
    
    func signIn(withEmail email: String, password: String) async throws{
        do{
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            await fetchUser()
        }catch{
            print("DEBUG: Failed to Login with error \(error.localizedDescription)")
        }
    }
    func createUser(withEmail email: String, password: String, fullname: String) async throws{
        do{
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            let user = User(id: result.user.uid, username: fullname, email: email)
            
            guard let encodedUser = try? Firestore.Encoder().encode(user) else{return}
            try await Firestore.firestore().collection("Users").document(user.id).setData(encodedUser)
            await fetchUser()
            
        }catch{
            print("DEBUG- Failed to create user with error\(error.localizedDescription)")
        }
        
    }
    func signOut(){
        do{
            try Auth.auth().signOut() // signs out user in backend
            self.userSession = nil // wipes user session
            self.currentUser = nil
        }catch{
            print("DEBUG: Failed to Sign out with error \(error.localizedDescription)")
        }
    }
    func deleteAccount(){}
    
    func fetchUser()async{
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        guard let snapshot = try? await Firestore.firestore().collection("Users").document(uid).getDocument() else{return}
        self.currentUser = try? snapshot.data(as: User.self)
        print("DEBUG: Current user is\(self.currentUser) ")
        
    }
    
    func favourite(item:GroceryStructure) async throws{
        do {
            guard let uid = Auth.auth().currentUser?.uid else {
                print("User not authenticated.")
                return
            }
            
            
            
            print("DEBUG: Item added to favorites.")
        }catch{
            print("DEBUG: Failed to add item to favorites with error \(error.localizedDescription)")
            
        }
        
        
    }
    }
    
