class Animal {
  constructor(sound){
    this.sound = sound;
  }

  speak(){
    console.log(this.sound)
  }
}

class Dog extends Animal {
  constructor(sound, color){
    super(sound)

    this.color = color
  }

  speak(){
    //super.speak()
    console.log(`My ${this.sound} sounds different because I'm ${this.color}`)
  }
}

const dog = new Dog("woof", "brown");
dog.speak()
