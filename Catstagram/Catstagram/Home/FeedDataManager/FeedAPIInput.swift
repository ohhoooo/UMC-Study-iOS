//
//  FeedAPIInput.swift
//  Catstagram
//
//  Created by 김정호 on 12/4/23.
//

struct FeedAPIInput : Encodable {
    var limit: Int?
    var page: Int?
}
