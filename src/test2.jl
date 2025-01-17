using BenchmarkTools
using ITensors, ITensorMPS

function over_lap(L)
    ss = siteinds("S=1/2", L)

    psi = random_mps(ss, linkdims=100)
    o = random_mps(ss) + random_mpo(ss)

    psi = apply(o, psi)
    phi = random_mps(ss, linkdims=100)

    return inner(psi,phi)
end



suite = BenchmarkGroup()

suite["ITensors overlap"] = BenchmarkGroup(["tag1", "tag2"])

suite["L=10, chi=100"][10] = @benchmarkable over_lap(10)
suite["L=20, chi=100"][20] = @benchmarkable over_lap(20)

tune!(suite)
results = run(suite, verbose = true)

BenchmarkTools.save("output.json", median(results))
