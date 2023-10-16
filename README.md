# Fibonacci REST API

This project is a simple implementation of a REST API that calculates and returns Fibonacci sequence values based on the provided index. The API has been developed in Ruby using the Sinatra framework.

Resources needed 
gem install sinatra
gem install minitest


## Functionality

The API consists of a single endpoint that accepts the index `n` and returns the corresponding Fibonacci value. The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the two previous numbers.

### Example Usage:

To calculate the Fibonacci value at index `n`, you can make a GET request to the following URL:

For example, if you request `/fibonacci/6`, you will receive a JSON response with the value `8`.

run it localy by:
>> ruby fibonacci.rb
test API BY:
>> http://localhost:4567/fibonacci/6

## Testing

Unit tests have been conducted to ensure the correct functioning of the API. This includes test cases for:

- Valid values of `n`.
- Invalid values of `n`, such as negative values.
- Request errors (e.g., incorrect routes).

The tests are performed using the `Minitest` testing framework for Ruby. You can run the tests with the following command:

run it localy by:
>> ruby fibonacci_test.rb

## Error Handling

The API handles errors gracefully and provides appropriate responses in case of:

- Negative indices: If a negative index is provided in the request, an error will be raised, and a response with an explanatory error message will be returned.

- Request errors: The API handles requests to non-existent or poorly formatted routes and provides error responses with descriptive messages.

## Additional Usage

You can use this API both as a standalone application and as a function in other Ruby projects. To incorporate it into other parts of your application, simply import the `fibonacci.rb` file and call the `fibonacci(n)` function with the desired `n` value.

Enjoy calculating Fibonacci numbers with this simple and effective API!

---

If you have any questions or need further assistance, please don't hesitate to get in touch with us.
