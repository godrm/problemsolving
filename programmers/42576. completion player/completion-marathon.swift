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
        let participantGroup = Set(participant)
        let incompletionGroup = participantGroup.subtracting(completion)
        return incompletionGroup.first ?? ""
    }
}
