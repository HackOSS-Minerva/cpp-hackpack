#pragma once

namespace calculator {

/**
 * Return the sum of a and b.
 */
double add(double a, double b);

/**
 * Return the difference of a and b.
 */
double subtract(double a, double b);

/**
 * Return the product of a and b.
 */
double multiply(double a, double b);

/**
 * Return the quotient of a and b.
 *
 * @throws std::invalid_argument If b is zero.
 */
double divide(double a, double b);

}  // namespace calculator
