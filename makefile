build: add.o mul.o calc.c
	gcc calc.c add.o mul.o -o build

add.o: add.c
	gcc -c add.c
mul.o: mul.c
	gcc -c mul.c

#<테스트 케이스 관련 참고>

define test_case
	if [ "$(shell echo '$(1)' | ./$(BUILD)/calc)" -eq $(2) ]; then \
		echo "PASS"; 				\
	else 						\
		echo "FAIL - Expected: $(2), Actual: $(shell echo '$(1)' | ./$(BUILD)/calc)";	 \
		exit 1; 				\
	fi;
endef

test: TC1_INP := + 1 2
test: TC1_OUT := 3
test: TC2_INP := + 2000000000 2000000000
test: TC2_OUT := 4000000000
test: TC3_INP := * 1 2
test: TC3_OUT := 2
test: TC4_INP := * 200000 200000
test: TC4_OUT := 40000000000

test:
	@$(call test_case,$(TC1_INP),$(TC1_OUT))
	@$(call test_case,$(TC2_INP),$(TC2_OUT))
	@$(call test_case,$(TC3_INP),$(TC3_OUT))
	@$(call test_case,$(TC4_INP),$(TC4_OUT))

