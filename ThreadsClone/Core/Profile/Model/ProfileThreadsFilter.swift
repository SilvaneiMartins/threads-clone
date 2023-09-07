//
//  ProfileThreadsFilter.swift
//  ThreadsClone
//
//  Created by Silvanei  Martins on 05/09/23.
//

import Foundation

enum ProfileThreadsFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
    
    var title: String {
        switch self {
        case .threads: return "Tópicos"
        case .replies: return "Respostas"
        }
    }
    
    var id: Int { return self.rawValue }
}
