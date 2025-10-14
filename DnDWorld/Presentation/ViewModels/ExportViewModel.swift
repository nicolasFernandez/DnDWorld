//
//  ExportViewModel.swift
//  DnDWorld
//
//  Created by Nicolás Fernández on 12-10-25.
//

import Foundation

final class ExportViewModel: ObservableObject {
    private let exportCharacterPdfUseCase: ExportCharacterPdfUseCase
    
    init(exportCharacterPdfUseCase: ExportCharacterPdfUseCase) {
        self.exportCharacterPdfUseCase = exportCharacterPdfUseCase
    }
}
