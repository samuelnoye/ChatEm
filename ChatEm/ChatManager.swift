//
//  ChatManager.swift
//  ChatEm
//
//  Created by Noye Samuel on 14/11/2022.
//
import StreamChat
import StreamChatUI
import Foundation

final class ChatManager {
    static let shared = ChatManager()
    
    private var client: ChatClient!
    
    func setUp() {
        let client = ChatClient(config: .init(apiKey: .init("69z8bzvavmcw")))
        self.client = client
    }
    
    //Authentication
    func signIn(with username: String, completion: @escaping (Bool) -> Void){
        
    }
    func signOut(){
        
    }
    var isSignIn: Bool {
        return false
    }
    var currentUser: String? {
        return nil
    }

    
}
