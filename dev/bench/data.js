window.BENCHMARK_DATA = {
  "lastUpdate": 1737068395716,
  "repoUrl": "https://github.com/starsfordummies/testing_livebench",
  "entries": {
    "Julia benchmark result": [
      {
        "commit": {
          "author": {
            "email": "stefano.carignano@fqa.ub.edu",
            "name": "Stefano Carignano",
            "username": "starsfordummies"
          },
          "committer": {
            "email": "stefano.carignano@fqa.ub.edu",
            "name": "Stefano Carignano",
            "username": "starsfordummies"
          },
          "distinct": true,
          "id": "47adbb1edcf1c8aa749b9b1b4a1fd0521edba204",
          "message": "need also that",
          "timestamp": "2025-01-16T23:58:54+01:00",
          "tree_id": "0625306d766dc154ba9eeeca66f936e673b92350",
          "url": "https://github.com/starsfordummies/testing_livebench/commit/47adbb1edcf1c8aa749b9b1b4a1fd0521edba204"
        },
        "date": 1737068395474,
        "tool": "julia",
        "benches": [
          {
            "name": "fib/10",
            "value": 300.804780876494,
            "unit": "ns",
            "extra": "gctime=0\nmemory=0\nallocs=0\nparams={\"gctrial\":true,\"time_tolerance\":0.05,\"evals_set\":false,\"samples\":10000,\"evals\":251,\"gcsample\":false,\"seconds\":5,\"overhead\":0,\"memory_tolerance\":0.01}"
          },
          {
            "name": "fib/20",
            "value": 41628,
            "unit": "ns",
            "extra": "gctime=0\nmemory=0\nallocs=0\nparams={\"gctrial\":true,\"time_tolerance\":0.05,\"evals_set\":false,\"samples\":10000,\"evals\":1,\"gcsample\":false,\"seconds\":5,\"overhead\":0,\"memory_tolerance\":0.01}"
          }
        ]
      }
    ]
  }
}