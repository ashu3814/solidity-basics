// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Creating a contract to demonstrate enums and structs in Solidity
contract EnumStructExample {

    // Enum representing different states
    enum State { Created, InProgress, Completed, Cancelled }
    
    // Struct representing a Task
    struct Task {
        uint id;
        string name;
        State state;
    }

    // Mapping from uint to Task
    mapping(uint => Task) public tasks;

    // Event declaration for logging task updates
    event TaskUpdated(uint indexed taskId, string name, State state);

    // Counter for task IDs
    uint public taskCounter;

    // Function to create a new task
    function createTask(string memory _name) public {
        taskCounter++;
        tasks[taskCounter] = Task(taskCounter, _name, State.Created);
        emit TaskUpdated(taskCounter, _name, State.Created);
    }

    // Function to update the state of a task
    function updateTaskState(uint _taskId, State _state) public {
        require(_taskId > 0 && _taskId <= taskCounter, "Invalid task ID");
        Task storage task = tasks[_taskId];
        task.state = _state;
        emit TaskUpdated(_taskId, task.name, _state);
    }

    // Function to get the details of a task
    function getTask(uint _taskId) public view returns (uint, string memory, State) {
        require(_taskId > 0 && _taskId <= taskCounter, "Invalid task ID");
        Task storage task = tasks[_taskId];
        return (task.id, task.name, task.state);
    }
}
