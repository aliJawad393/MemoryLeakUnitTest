
import Foundation

class WithMemoryLeak {
    
    var service: Service?
    
    init() {
        service = Service(wml: self)
    }
}



