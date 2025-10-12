//
//  ImageGenService.swift
//  DnDWorld
//
//  Created by Nicolás Fernández on 12-10-25.
//

import Foundation

protocol ImageGenService {
    func generatePortrait(prompt: String) throws -> URL
    func generateToken(from portraitURL: URL) throws -> URL
}
