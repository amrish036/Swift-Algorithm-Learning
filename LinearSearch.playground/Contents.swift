func linearSearch<T: Equatable>(_ array: [T], object: T) -> Int?{
  for (index, obj) in array.enumerated() where obj == object{
    return index
  }
  return nil
}

linearSearch([1,3,5,9,45,6,8,12,43,2], object: 2)
