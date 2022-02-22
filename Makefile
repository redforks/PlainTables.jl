.PHONY: test open-cli

test:
	julia -O1 --track-allocation=none --project=. -e 'using Pkg; Pkg.test()'

open-cli:
	julia --project=.

test-watch:
	noisy.py -d "src test" -e '.jl' -- make test
