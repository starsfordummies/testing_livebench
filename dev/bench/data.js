window.BENCHMARK_DATA = {
  "lastUpdate": 1737284778419,
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
          "id": "d9e38179867dd0c5f61e0a8bfd4c7eae788488b1",
          "message": "new test3",
          "timestamp": "2025-01-19T12:02:53+01:00",
          "tree_id": "96aaaad057f358a72290abfc3a27160d8fb29121",
          "url": "https://github.com/starsfordummies/testing_livebench/commit/d9e38179867dd0c5f61e0a8bfd4c7eae788488b1"
        },
        "date": 1737284777976,
        "tool": "julia",
        "benches": [
          {
            "name": "ITensors <phi|O|psi>/lib2/bb",
            "value": 50585705,
            "unit": "ns",
            "extra": "gctime=4116990\nmemory=83916392\nallocs=86195\nparams={\"gctrial\":true,\"time_tolerance\":0.05,\"evals_set\":false,\"samples\":10000,\"evals\":1,\"gcsample\":false,\"seconds\":5,\"overhead\":0,\"memory_tolerance\":0.01}"
          },
          {
            "name": "ITensors <phi|O|psi>/lib2/aa",
            "value": 3485515,
            "unit": "ns",
            "extra": "gctime=0\nmemory=6020216\nallocs=24564\nparams={\"gctrial\":true,\"time_tolerance\":0.05,\"evals_set\":false,\"samples\":10000,\"evals\":1,\"gcsample\":false,\"seconds\":5,\"overhead\":0,\"memory_tolerance\":0.01}"
          },
          {
            "name": "ITensors <phi|O|psi>/lib1/bb",
            "value": 8277073.5,
            "unit": "ns",
            "extra": "gctime=0\nmemory=15059616\nallocs=42580\nparams={\"gctrial\":true,\"time_tolerance\":0.05,\"evals_set\":false,\"samples\":10000,\"evals\":1,\"gcsample\":false,\"seconds\":5,\"overhead\":0,\"memory_tolerance\":0.01}"
          },
          {
            "name": "ITensors <phi|O|psi>/lib1/aa",
            "value": 16778467.5,
            "unit": "ns",
            "extra": "gctime=1744843\nmemory=28227632\nallocs=54869\nparams={\"gctrial\":true,\"time_tolerance\":0.05,\"evals_set\":false,\"samples\":10000,\"evals\":1,\"gcsample\":false,\"seconds\":5,\"overhead\":0,\"memory_tolerance\":0.01}"
          }
        ]
      }
    ]
  }
}