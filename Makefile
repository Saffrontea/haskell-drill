.PHONY: test test-watch build

test:
	stack test

# 特定のパターンにマッチするテストだけ実行
# 使い方: make match PATTERN="D02Recursion"
#          make match PATTERN="factorial"
match:
	stack test --test-arguments "--match /$(PATTERN)/"

# カテゴリ単位で実行
# 使い方: make category CAT=D01Basics
category:
	stack test --test-arguments "--match /Drill.$(CAT)/"

test-watch:
	stack test --file-watch

# 特定パターンをウォッチしながら実行
# 使い方: make watch-match PATTERN="D02Recursion"
watch-match:
	stack test --file-watch --test-arguments "--match /$(PATTERN)/"

build:
	stack build
