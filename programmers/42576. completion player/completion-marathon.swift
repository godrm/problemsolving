//
//  completion-marathon.swift
//  leetcode
//
//  Created by JK on 2020/01/08.
//  Copyright © 2020 codesquad. All rights reserved.
//

import Foundation

extension Solution {
    func incompletionPlayers(participant : [String], completion : [String]) -> String {
        let participantGroup =  NSCountedSet(array:participant)
        for name in completion {
            participantGroup.remove(name)
        }
        return participantGroup.anyObject() as? String ?? ""
    }
}
