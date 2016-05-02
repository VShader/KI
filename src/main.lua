local function main()

  print("hallo")
  

  
  local Queue = {kind = 'fifo', head = nil, tail = nil}
  function Queue:push(value)
    if self.kind == 'fifo' then
      self.tail = {next = nil, prev = self.tail, item = value}
      if self.tail.prev then
        self.tail.prev.next = self.tail
      end
      if not self.head then
        self.head = self.tail
      end
    end
  end
  
  function Queue:pop()
    if self.kind == 'fifo' then
      local temp = self.head.item
      self.head = self.head.next
      if self.head then
        self.head.prev = nil
      end
      return temp
    end
  end
  
  --[[list = {next = list, prev = nil, value = 1}
  local front  = list
  local back = list
  list = {next = list, prev = nil, value = v}
  list.next.prev = list
  front = list
  list = {next = list, prev = nil, value = v}
  list.next.prev = list
  list = {next = list, prev = nil, value = 3}
  list.next.prev = list
  front = list
  ]]
  
  for i = 0, 9 do
    Queue:push(i)
  end
  
  
  local l = Queue.head
  while l do
    print(l.item)
    l = l.next
  end
  
  while Queue.head do
    print(Queue:pop())
  end
  
  --print("\n", front.value, back.value, "\n")
--  temp = back.prev
--[[
local l = list
  while l do
    print(l.value)
    l = l.prev
  end]]
end
main()

