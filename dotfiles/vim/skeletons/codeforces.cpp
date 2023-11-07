#include <iostream>
#include <vector>

using namespace std;

struct TTestCase {
    /* define the input scheme here */
    int i;

    TTestCase() = default;

    static TTestCase read() {
        /* read single testcase */
        TTestCase test;
        cin >> test.i;
        return test;
    }
};

void Solution(const TTestCase& test) {
    /* Run solution and print result to stdout */
}

int main() {
    int t;
    cin >> t;
    vector<TTestCase> tests;
    for (int i = 0; i < t; ++i) {
        tests.emplace_back(TTestCase::read());
    }

    for (const TTestCase& test : tests) {
        Solution(test);
    }
    return 0;
}
