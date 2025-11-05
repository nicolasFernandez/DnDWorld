//
//  PdfExporter.swift
//  TTRPGCharacterForge
//
//  Created by Nicolás Fernández on 12-10-25.
//

import Foundation
 
protocol PdfExporter {
    func export(_ character: Character) throws -> URL
}
