# Sequential Circuits: Latches

In this lab, we learned that latches are basic memory elements that let sequential circuits store and recall past states. 
This allows outputs to depend on both current and previous inputs, enabling more complex behavior. Unlike combinational circuits, which react instantly to 
inputs, sequential circuits use timing and stored states, making them useful in systems like counters and registers.
## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
We can’t just use structural Verilog because it only connects logic gates and doesn’t show how signals change over time. To model 
timing and data storage correctly, we use behavioral Verilog with always blocks.

### What is the meaning of always @(*) in a sensitivity block?
The meaning of always @(*) in a sensitivity block is that the block is run whenever the input inside the block changes. This helps prevent any unwanted latch behavior
and ensures the circuit updates correctly.

### What importance is memory to digital circuits?
Memory is important because it allows digital circuits to remember past inputs and use that information later. Systems like counters and 
registers depend on stored data to function properly.
