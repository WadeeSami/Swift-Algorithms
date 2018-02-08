import UIKit

struct Stack<T>{
    fileprivate var array:[T] = []
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop()->T?{
        return array.popLast()
    }
    
    public func top()->T?{
        return self.array.last as? T
    }
    
    public func isEmpty()->Bool{
        return self.array.isEmpty
    }
    
    public func count()->Int{
        return self.array.count
    }
}


