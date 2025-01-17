window.BENCHMARK_DATA = {
  "lastUpdate": 1737107494349,
  "repoUrl": "https://github.com/starsfordummies/testing_livebench",
  "entries": {
    "Julia benchmark result": [
      {
        "commit": {
          "author": {
            "email": "70697517+starsfordummies@users.noreply.github.com",
            "name": "Stefano Carignano",
            "username": "starsfordummies"
          },
          "committer": {
            "email": "noreply@github.com",
            "name": "GitHub",
            "username": "web-flow"
          },
          "distinct": true,
          "id": "18afc1f234a24155cb024c0ee92298b11d7c7858",
          "message": "test",
          "timestamp": "2025-01-17T10:48:29+01:00",
          "tree_id": "5ae7e435d9d588d29c3f27727509e02866f51017",
          "url": "https://github.com/starsfordummies/testing_livebench/commit/18afc1f234a24155cb024c0ee92298b11d7c7858"
        },
        "date": 1737107493569,
        "tool": "julia",
        "benches": [
          {
            "name": "ITensors <phi|O|psi>/L=10, chi=100",
            "value": 17876208,
            "unit": "ns",
            "extra": "gctime=1722159\nmemory=34120656\nallocs=55177\nparams={\"gctrial\":true,\"time_tolerance\":0.05,\"evals_set\":false,\"samples\":10000,\"evals\":1,\"gcsample\":false,\"seconds\":5,\"overhead\":0,\"memory_tolerance\":0.01}"
          },
          {
            "name": "ITensors <phi|O|psi>/L=20, chi=100",
            "value": 187545256,
            "unit": "ns",
            "extra": "gctime=7997059.5\nmemory=240310736\nallocs=118745\nparams={\"gctrial\":true,\"time_tolerance\":0.05,\"evals_set\":false,\"samples\":10000,\"evals\":1,\"gcsample\":false,\"seconds\":5,\"overhead\":0,\"memory_tolerance\":0.01}"
          }
        ]
      }
    ]
  }
}