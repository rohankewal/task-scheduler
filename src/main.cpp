#include <iostream>
#include <string>
#include <vector>
#include <chrono>
#include <thread>

using namespace std;

// learn how to write classes and functions in C++
class Task {
public:
    string command;
    string schedule; // Schedule as a string for simplicity
    bool active = true;

    Task(const string& cmd, const string& sch) : command(cmd), schedule(sch) {}
};

class Scheduler {
private:
    vector<Task> tasks;

public:
    void addTask(const Task& task) {
        tasks.push_back(task);
        cout << "Task added: " << task.command << " to run at " << task.schedule << endl;
    }

    void listTasks() {
        for (const auto& task : tasks) {
            cout << "Task: " << task.command << " Schedule: " << task.schedule << " Status: " << (task.active ? "Active" : "Inactive") << endl;
        }
    }

    void removeTask(int index) {
        if(index >= 0 && index < tasks.size()) {
            tasks.erase(tasks.begin() + index);
            cout << "Task removed." << endl;
        } else {
            cout << "Invalid task index." << endl;
        }
    }

    // Placeholder for the actual scheduling mechanism
    void runScheduler() {
        while (true) {
            // Here, you would check the current time and compare it with the task schedules
            // to determine if any task should run now.

            this_thread::sleep_for(chrono::minutes(1)); // Check every minute
        }
    }
};

// main function which really shouldn't change TOO much
int main() {
    Scheduler myScheduler;
    myScheduler.addTask(Task("/path/to/backup.sh", "0 0 * * *")); // Every day at midnight
    myScheduler.listTasks();

    // Start the scheduler in a background thread
    thread schedulerThread(&Scheduler::runScheduler, &myScheduler);
    schedulerThread.join();

    return 0;
}
