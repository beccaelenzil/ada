const task = {
  name: 'practice iteration in JavaScript',
  dueDate: 'end of the week',
  owner: 'dee',
  isComplete: false,
  daysExtended: 0,
  markComplete() {
    console.log('Wow...');
    console.log(`The task "${this.name}" is complete!`);
    console.log('Congratulations! You won!');
    this.isComplete = true;
    return true;
  },
  describe() {
    console.log(`The task name is ${this.name}`);
    console.log(`The task owner is ${this.owner}`);
    return true;
  },
  extendDueDate(n) {
    this.daysExtended += n;
  },
}

task.extendDueDate(5)
task.extendDueDate(2)
console.log(task.daysExtended)