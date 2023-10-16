require 'sinatra'
require 'json'

def fibonacci(n)
  unless n.is_a?(Integer) && n >= 0
    raise ArgumentError, $e
  end

  return n if n <= 1

  fib_sequence = [0, 1]

  (2..n).each do |i|
    next_fib = fib_sequence[i - 1] + fib_sequence[i - 2]
    fib_sequence << next_fib
  end

  return fib_sequence[n]
end


get '/fibonacci/:n' do
  n = params['n'].to_i

  if n >= 0
    result = fibonacci(n)
    content_type :json
    { n: n, result: result }.to_json
  else
    status 400
    { error: $e }.to_json
  end
end

$e = "Input must be a non-negative integer"
