const task = {
  name: 'practice iteration in JavaScript',
  dueDate: 'end of the week',
  owner: 'dee',
  isComplete: false,
  markComplete() {
    console.log('Wow...');
    console.log(`The task "${this.name}" is complete!`);
    console.log('Congratulations! You won!');
    this.isComplete = true;
    return true;
  },
  describe(){
    console.log(`The task name is ${this.name}`)
    console.log(`The task owner is ${this.owner}`)
    return true
  },
  daysExtended: 0,
  extendDueDate(n){
    this.daysExtended+=n;
    console.log(`The task was extended by ${this.daysExtended} days`);
  }
}

task.describe();
task.extendDueDate(5);
