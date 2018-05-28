public struct Stack<T>{
  fileprivate var array = [T]()
  
  public var isEmpty: Bool{
    return array.isEmpty
  }
  
  public var Count: Int{
    return array.count
  }
  
  public mutating func push(_ element: T){
    return array.append(element)
  }
  
  public mutating func pop()  -> T?{
    return array.popLast()
  }
  
  public var top: T?{
    return array.last
  }
  
}

var stack = Stack<Int>()

stack.isEmpty
stack.push(123912)
stack.push(989)
stack.top
stack.isEmpty
stack.pop()
stack.Count
stack.pop()
stack.Count
