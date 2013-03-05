all: $(patsubst %.hs,%,$(wildcard *.hs))

Main: Main.hs
	ghc --make Main.hs

Reverse: Reverse.hs
	ghc --make Reverse.hs -main-is Reverse
