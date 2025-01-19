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

bench_1 = "ITensors <phi|O|psi>"

suite = BenchmarkGroup()

suite[bench_1] = BenchmarkGroup(["ITensors", "overlaps"])

suite[bench_1][bench_sub1]["aa"]["Library1"] = @benchmarkable over_lap(11)
suite[bench_1][bench_sub2]["aa"]["Library1"] = @benchmarkable over_lap(21)

tune!(suite)
results1 = run(suite, verbose = true)

r1 = median(results1)


suite = BenchmarkGroup()

suite[bench_1] = BenchmarkGroup(["ITensors", "overlaps"])

suite[bench_1][bench_sub1]["aa"]["Library2"] = @benchmarkable over_lap(8)
suite[bench_1][bench_sub2]["aa"]["Library2"] = @benchmarkable over_lap(18)


tune!(suite)

results2 = run(suite, verbose = true)

r2 = median(results2)

r_tog = deepcopy(r1)


r_tog[bench_1][bench_sub1]["aa"]["Library2"] = r2[bench_1][bench_sub1]["aa"]["Library2"] 
r_tog[bench_1][bench_sub2]["aa"]["Library2"] = r2[bench_1][bench_sub2]["aa"]["Library2"] 


BenchmarkTools.save("output.json", r_tog)
