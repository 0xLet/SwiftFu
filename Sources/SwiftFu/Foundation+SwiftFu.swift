import Foundation

extension Data: Fuable { }
extension Date: Fuable { }

#if os(Linux)
#else
extension URL: Fuable { }
extension URLRequest: Fuable { }
extension NSObject: FuableClass { }
#endif
