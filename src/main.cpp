#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <chrono>
#include <thread>
#include <functional>

using namespace std;

// learn how to write classes and functions in C++
class Task {
  string command;
  string schedule;
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
        tasks.erase(tasks.begin() + index);
        cout << "Task removed." << endl;
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

// this is the main that shouldn't be touched apart from calling from classes
int main() {
    Scheduler myScheduler;
    myScheduler.addTask(Task("/path/to/backup.sh", "0 0 * * *")); // Every day at midnight
    myScheduler.listTasks();

    // Start the scheduler in a background thread
    std::thread schedulerThread(&Scheduler::runScheduler, &myScheduler);
    schedulerThread.join();

    return 0;
}
