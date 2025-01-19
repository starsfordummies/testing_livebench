using BenchmarkTools

using ITensors, ITensorMPS
using Tenet

const BACKENDS = ["Library1", "Library2"]


function overlap_iten(L)
    ss = siteinds("S=1/2", L)

    psi = random_mps(ss, linkdims=30)
    phi = random_mps(ss, linkdims=50)
    
    o = random_mpo(ss) 

    psi = apply(o, psi, alg="naive")

    return inner(psi,phi)
end

function overlap_tenet(L)

    psi = rand(Tenet.MPS, n=L, maxdim=30)
    phi = rand(Tenet.MPS, n=L, maxdim=50)
    
    o = rand(Tenet.MPO, n=L, maxdim=1)

    evolve!(psi, o)

    return overlap(psi,phi)
end

bench_1 = "<phi|O|psi>"
bench_sub1 = "L=10"
bench_sub2 = "L=20"

suite = BenchmarkGroup()

suite[bench_1] = BenchmarkGroup(["overlaps"])

suite[bench_1][bench_sub1]["aa"]["Library1"] = @benchmarkable overlap_iten(10)
suite[bench_1][bench_sub2]["aa"]["Library1"] = @benchmarkable overlap_iten(20)

tune!(suite)
results1 = run(suite, verbose = true)

r1 = median(results1)


suite = BenchmarkGroup()

suite[bench_1] = BenchmarkGroup(["overlaps"])

suite[bench_1][bench_sub1]["aa"]["Library2"] = @benchmarkable overlap_tenet(10)
suite[bench_1][bench_sub2]["aa"]["Library2"] = @benchmarkable overlap_tenet(20)


tune!(suite)

results2 = run(suite, verbose = true)

r2 = median(results2)

r_tog = deepcopy(r1)


r_tog[bench_1][bench_sub1]["aa"]["Library2"] = r2[bench_1][bench_sub1]["aa"]["Library2"] 
r_tog[bench_1][bench_sub2]["aa"]["Library2"] = r2[bench_1][bench_sub2]["aa"]["Library2"] 


BenchmarkTools.save("output.json", r_tog)
