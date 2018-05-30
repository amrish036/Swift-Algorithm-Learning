func binarySearch<T: Comparable>(_ a:[T], key: T, range: Range<Int>) -> Int?{
  
  if range.lowerBound >= range.upperBound{
    return nil
  }
  else{
    let midIndex = range.lowerBound + (range.upperBound - range.lowerBound)/2
    
    if a[midIndex] > key {
      return binarySearch(a, key: key, range: range.lowerBound ..< midIndex)
    }
    else if a[midIndex] < key{
      return binarySearch(a, key: key, range: midIndex+1 ..< range.upperBound)
    }
    else{
      return midIndex
    }
    
  }
  
}

let numbers = [1,2,6,5,3,2,7,9,10,124,554,78,34,01,56,345,11,3456].sorted()

binarySearch(numbers, key: 78, range: 0 ..< numbers.count)
