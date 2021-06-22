//
//  bsUtilsMain.swift
//  bsUtils
//
//  Created by BangS00 on 2021/06/22.
//

import Foundation

public class bsUtils {
    private static let imageCache = NSCache<NSString, NSData>()
    
    public class func downloadImage(for stringUrl: String, defaultImage: UIImage? = nil, completion: @escaping(_ image: UIImage?) -> ()) {
        let url = URL(string: stringUrl)!
        
        DispatchQueue.global(qos: .background).async {
            if let data = self.imageCache.object(forKey: url.absoluteString as NSString) {
                DispatchQueue.main.async { completion(UIImage(data: data as Data)) }
                return
            }
            
            guard let data = NSData(contentsOf: url) else {
                if let image = defaultImage {
                    DispatchQueue.main.async { completion(image) }
                }
                else {
                    DispatchQueue.main.async { completion(nil) }
                }
                return
            }
            
            self.imageCache.setObject(data, forKey: url.absoluteString as NSString)
            DispatchQueue.main.async { completion(UIImage(data: data as Data)) }
        }
    }
    
}
