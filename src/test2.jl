using BenchmarkTools
using ITensors, ITensorMPS

function over_lap(L)
    ss = siteinds("S=1/2", L)

    psi = random_mps(ss, linkdims=100)
    o = random_mpo(ss) + random_mpo(ss)

    psi = apply(o, psi, alg="naive")
    phi = random_mps(ss, linkdims=100)
    println("applied")

    return inner(psi,phi)
end


suite = BenchmarkGroup()

suite["ITensors <phi|O|psi>"] = BenchmarkGroup(["ITensors", "overlaps"])

suite["ITensors <phi|O|psi>"]["L=10, chi=100"] = @benchmarkable over_lap(10)
suite["ITensors <phi|O|psi>"]["L=20, chi=100"] = @benchmarkable over_lap(20)

tune!(suite)
results = run(suite, verbose = true)

BenchmarkTools.save("output.json", median(results))
