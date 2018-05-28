public struct Queue<T>{
  
  fileprivate var array = [T]()
  
  public var isEmpty: Bool{
    return array.isEmpty
  }
  public var count: Int {
    return array.count
  }
  public mutating func enqueue(_ element: T){
    return array.append(element)
  }
  public mutating func dequeue() -> T?{
    if(!array.isEmpty) {return array.removeFirst()}
    else {return nil}
  }
  public var front: T?{
    return array.first
  }
  
}

var q = Queue<Int>()

q.enqueue(1)
q.enqueue(1231)

q.count
q.dequeue()
q.dequeue()
q.dequeue()
q.count



