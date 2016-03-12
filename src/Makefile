.PHONY: clean

all: merge

rev:
	git show | head -n1 | sed -e 's|commit |rev=|' > rev
	git branch | grep '*' | sed -e 's|* |branch=|g' >> rev

merge: rev
	BRUTE=1 ../tools/merge
	mv out/* ../out

clean:
	rm -rf out rev xul_dat
