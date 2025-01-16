using BenchmarkTools
using ITensors, ITensorMPS

function over_lap(L)
ss = siteinds("S=1/2", L)

psi = random_mps(ss, linkdims=100)
phi = random_mps(ss, linkdims=100)

return inner(psi,phi)

suite = BenchmarkGroup()

suite["fib"] = BenchmarkGroup(["tag1", "tag2"])

suite["fib"][10] = @benchmarkable over_lap(10)
suite["fib"][20] = @benchmarkable over_lap(20)

tune!(suite)
results = run(suite, verbose = true)

BenchmarkTools.save("output.json", median(results))
