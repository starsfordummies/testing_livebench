using BenchmarkTools

using ITensors, ITensorMPS

const BACKENDS = ["Library1", "Library2"]


function over_lap(L)
    ss = siteinds("S=1/2", L)

    psi = random_mps(ss, linkdims=100)
    o = random_mpo(ss) + random_mpo(ss) 

    psi = apply(o, psi, alg="naive")
    phi = random_mps(ss, linkdims=100)

    return inner(psi,phi)
end

bench_root1 = "ITensors <phi|O|psi>"
bench_sub1 = "L=10, chi=100"
bench_sub2 = "L=20, chi=100"

suite = BenchmarkGroup()

suite[bench_root1] = BenchmarkGroup(["ITensors", "overlaps"])

suite[bench_root1][bench_sub1] = @benchmarkable over_lap(10)
suite[bench_root1][bench_sub2] = @benchmarkable over_lap(20)

tune!(suite)
results1 = run(suite, verbose = true)

r1 = median(results1)


suite = BenchmarkGroup()

suite[bench_root1] = BenchmarkGroup(["ITensors", "overlaps"])

suite[bench_root1][bench_sub1] = @benchmarkable over_lap(8)
suite[bench_root1][bench_sub2] = @benchmarkable over_lap(18)

tune!(suite)

results2 = run(suite, verbose = true)

r2 = median(results2)

#for resu in [r1,r2]



RESULTS[bench_root1][bench_sub1]["one"]["aa"] = r1
RESULTS[bench_root1][bench_sub1]["two"]["aa"] = r2

BenchmarkTools.save("output.json", RESULTS)
