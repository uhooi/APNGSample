//
//  APNGImage+URL.swift
//  APNGSample
//
//  Created by uhooi on 2020/07/06.
//

import APNGKit

extension APNGImage {
    convenience init?(urlString: String?) {
        guard let urlString = urlString, let url = URL(string: urlString) else {
            return nil
        }
        self.init(url: url)
    }
    
    convenience init?(url: URL) {
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        self.init(data: data)
    }
}
