//
//  Utils.swift
//  DuckDuckGo Privacy Essentials
//
//
//  Copyright © 2019 DuckDuckGo. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import AppKit

struct Utils {
    
    static func versionLabelAttributedString() -> NSAttributedString {
        let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] ?? "?.?"
        return NSAttributedString.withKern(string: "PRIVACY ESSENTIALS \(version)", 2.0)
    }
    
}

extension NSAttributedString {
    
    static func withKern(string: String, _ kern: CGFloat) -> NSAttributedString {
        let attributes: [NSAttributedString.Key: Any]? = [
            NSAttributedString.Key.kern: kern
        ]
        return NSAttributedString(string: string, attributes: attributes)
    }
    
}