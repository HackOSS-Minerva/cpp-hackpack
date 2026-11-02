#include <iostream>

#include "calculator/utils.hpp"

int main() {
    double a = 10;
    double b = 5;

    std::cout << a << " + " << b << " = " << calculator::add(a, b) << "\n";
    std::cout << a << " - " << b << " = " << calculator::subtract(a, b) << "\n";
    std::cout << a << " * " << b << " = " << calculator::multiply(a, b) << "\n";
    std::cout << a << " / " << b << " = " << calculator::divide(a, b) << "\n";

    return 0;
}
