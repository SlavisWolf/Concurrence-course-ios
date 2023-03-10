import Foundation

public func slowAdd(_ input: (Int, Int) ) -> Int {
    sleep(1)
    return input.0 + input.1
}


public func slowAddArray(_ input: [(Int, Int)], progress: ( (Double) -> (Bool) )? = nil) -> [Int] {
    var results = [Int]()
    for pair in input {
        results.append(slowAdd(pair))
        if let progress {
            if !progress(Double(results.count) / Double(input.count)) { return results}
        }
    }
    
    return results
}
