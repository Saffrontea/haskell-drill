.PHONY: test test-watch build backup revert

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

# 現在の .hs を .hs.orig として保存（新しい問題を追加した後などに実行）
backup:
	find src/Drill -name "*.hs" | while read f; do cp "$$f" "$${f}.orig"; done
	@echo "Backup complete."

# .hs.orig から .hs を復元（問題をリセットしたいときに実行）
# 使い方: make revert              （全問題をリセット）
#          make revert FILE=src/Drill/D01Basics/Hello.hs  （1ファイルだけリセット）
revert:
ifdef FILE
	cp "$(FILE).orig" "$(FILE)"
	@echo "Reverted: $(FILE)"
else
	find src/Drill -name "*.hs.orig" | while read f; do cp "$$f" "$${f%.orig}"; done
	@echo "Reverted all."
endif
