struct Box<Element> { let value: Element }
let score = Box(value: 90)
let topic: Box<String> = Box(value: "Swift")
print(score.value)
print(topic.value)
