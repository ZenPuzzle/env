#include <iostream>
#include <vector>

using namespace std;

class TTestCaseSolver {
private:
    int n;

public:
    TTestCaseSolver() = default;

    TTestCaseSolver& Read() {
        /* read single testcase */
        cin >> n;
        return *this;
    }

    void Solve() {
        /* Run solution and print result to stdout */
        cout << n;
    }
};

int main() {
    int t;
    cin >> t;
    vector<TTestCaseSolver> tests;
    for (int i = 0; i < t; ++i) {
        tests.emplace_back(TTestCaseSolver().Read());
    }
    for (TTestCaseSolver& solver: tests) {
        solver.Solve();
    }
    return 0;
}
