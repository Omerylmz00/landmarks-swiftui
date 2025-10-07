//
//  ModelData.swift
//  Landmarks
//
//  Created by Ömer Faruk Yılmaz on 2.10.2025.
//

import Foundation

enum DataLoadError: Error {
    case missingFile(String)
    case unreadableFile(String, underlying: Error)
    case decodingFailed(String, underlying: Error)
}

@Observable
class ModelData {
    var landmarks: [Landmark] = []

    init() {
        do {
            self.landmarks = try load("landmarkData.json")
        } catch {
            print("ModelData load error:", error)
            self.landmarks = []
        }
    }

    var categories: [String: [Landmark]] {
        Dictionary(grouping: landmarks, by: { $0.category.rawValue })
    }
    
    var features: [Landmark] {
        landmarks.filter {$0.isFeatured}
    }
}


func load<T: Decodable>(_ filename: String) throws -> T {
    // 1) Dosyayı bul
    
    guard let url = Bundle.main.url(forResource: filename, withExtension: nil) else {
        throw DataLoadError.missingFile(filename)
    }

    // 2) Dosyayı oku
    let data: Data
    do {
        data = try Data(contentsOf: url)
    } catch {
        throw DataLoadError.unreadableFile(filename, underlying: error)
    }

    // 3) Decode et
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        throw DataLoadError.decodingFailed(filename, underlying: error)
    }
}


