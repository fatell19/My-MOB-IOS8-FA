//
//  SessionView.swift
//  football-in-motion
//
//  Created by Francisco Arellanos on 4/17/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import Foundation

class DetailedSession {
    
    var dateOfSession: String
    var coachOfSession: String
    var sessionApproval: String
    
    init(dateOfSession: String, coachOfSession: String, sessionApproval: String) {
        self.dateOfSession = dateOfSession
        self.coachOfSession = coachOfSession
        self.sessionApproval = sessionApproval
    }
    
    func neatDisplay() -> String {
        return "\(dateOfSession) with \(coachOfSession)-\(sessionApproval)"
    }
}