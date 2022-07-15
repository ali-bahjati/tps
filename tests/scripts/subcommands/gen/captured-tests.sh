# Do not edit this file manually. It is automatically generated.
# Edit 'capture-all.sh' instead.

source ../../definition_get_head.sh
source ../../definition_not_web_terminal.sh
source definitions.sh


stage_dir_with_scripts stage1

expect_exec -oempty -e "captured-data/k-0/stderr" tgen --help
expect_exec -oempty -e "captured-data/k-1/stderr" -rnz tgen --unknown-flag
expect_exec -oempty -e "captured-data/k-2/stderr" -rnz tgen unknown-arg
expect_exec -f "tests" "captured-data/k-3/probed_files/0_tests" -o "captured-data/k-3/stdout" -eempty tgen
expect_exec -o "captured-data/k-4/stdout" -eempty tgen -s
expect_exec -o "captured-data/k-5/stdout" -eempty tgen -w
expect_exec -o "captured-data/k-6/stdout" -eempty tgen --no-val
expect_exec -o "captured-data/k-7/stdout" -eempty tgen --no-sol-compile
expect_exec -f "tests" "captured-data/k-8/probed_files/0_tests" -o "captured-data/k-8/stdout" -eempty tgen -u --no-gen
expect_exec -f "tests" "captured-data/k-9/probed_files/0_tests" -o "captured-data/k-9/stdout" -eempty tgen --no-sol
expect_exec -o "captured-data/k-10/stdout" -eempty tgen -u --no-gen --no-val
expect_exec -o "captured-data/k-11/stdout" -eempty tgen -u --no-gen --no-sol
expect_exec -o "captured-data/k-12/stdout" -eempty tgen --no-val --no-sol
expect_exec -o "captured-data/k-13/stdout" -eempty tgen -u --no-gen --no-val --no-sol

expect_exec -oempty -eh "Error: tests directory 'new-test-dir' does not exist (needed due to flag '--no-gen')." -rnz tgen --tests-dir=new-test-dir --no-gen
expect_exec -oempty -eh "Error: tests directory 'new-test-dir' does not exist (needed due to flag '-u')." -rnz tgen --tests-dir=new-test-dir -u

run_in_stage cp gen/gen1.cpp gen/gen2.cpp
expect_exec -o "captured-data/k-16/stdout" -eempty tgen
run_in_stage cp extra/gen-warn.cpp gen/gen3.cpp
expect_exec -oh3 "generator           compile[WARN]" "exit-code: 0" "warnings:" -eempty -rnz get_head 3 3 tgen -w
run_in_stage cp extra/gen-ce.cpp gen/gen4.cpp
expect_exec -oh "generator           compile[FAIL]" -eempty -rnz get_head 1 1 tgen
run_in_stage rm -f gen/gen4.cpp
run_in_stage rm -f gen/gen2.cpp
expect_exec -oh3 "generator           compile[WARN]" "exit-code: 0" "warnings:" -eempty -rnz get_head 3 3 tgen -w
run_in_stage rm -f gen/gen3.cpp
expect_exec -o "captured-data/k-20/stdout" -eempty tgen -w


stage_dir_with_scripts stage1


run_in_stage rm -f gen/gen1.cpp
expect_exec -o "captured-data/k-21/stdout" -eempty tgen
expect_exec -o "captured-data/k-22/stdout" -eempty -rnz get_head 8 8 tgen -s

run_in_stage cp extra/gen-ce.cpp gen/gen1.cpp
expect_exec -oh "generator           compile[FAIL]" -eempty -rnz get_head 1 1 tgen

run_in_stage cp extra/gen-warn.cpp gen/gen1.cpp
expect_exec -oh3 "generator           compile[WARN]" "exit-code: 0" "warnings:" -eempty -rnz get_head 3 3 tgen -w
expect_exec -o "captured-data/k-25/stdout" -eempty tgen
expect_exec -o "captured-data/k-26/stdout" -eempty tgen
expect_exec -oh3 "generator           compile[WARN]" "exit-code: 0" "warnings:" -eempty -rnz get_head 3 3 tgen -w
run_in_stage touch gen/gen1.cpp
expect_exec -o "captured-data/k-28/stdout" -eempty tgen
run_in_stage touch gen/gen1.cpp
expect_exec -oh3 "generator           compile[WARN]" "exit-code: 0" "warnings:" -eempty -rnz get_head 3 3 tgen -w

run_in_stage cp extra/gen-rte.cpp gen/gen1.cpp
expect_exec -o "captured-data/k-30/stdout" -eempty tgen
expect_exec -o "captured-data/k-31/stdout" -eempty -rnz get_head 8 8 tgen -s
expect_exec -o "captured-data/k-32/stdout" -eempty tgen --no-val
expect_exec -o "captured-data/k-33/stdout" -eempty tgen --no-sol

run_in_stage rm -f gen/manual/example-01.in
expect_exec -o "captured-data/k-34/stdout" -eempty tgen
expect_exec -o "captured-data/k-35/stdout" -eempty -rnz get_head 8 8 tgen -s


stage_dir_with_scripts stage1

run_in_stage get_head 0 0 tgen
run_in_stage rm -f tests/0-01.in
expect_exec -o "captured-data/k-36/stdout" -eempty tgen -u --no-gen --no-val --no-sol
expect_exec -o "captured-data/k-37/stdout" -eempty tgen -u --no-gen --no-val --no-sol -s
expect_exec -o "captured-data/k-38/stdout" -eempty tgen -u --no-gen --no-val
expect_exec -o "captured-data/k-39/stdout" -eempty -rnz get_head 7 7 tgen -u --no-gen --no-val -s
expect_exec -o "captured-data/k-40/stdout" -eempty tgen -u --no-gen --no-sol
expect_exec -o "captured-data/k-41/stdout" -eempty -rnz get_head 7 7 tgen -u --no-gen --no-sol -s
expect_exec -o "captured-data/k-42/stdout" -eempty tgen -u --no-gen
expect_exec -o "captured-data/k-43/stdout" -eempty -rnz get_head 7 7 tgen -u --no-gen -s


stage_dir_with_scripts stage1

run_in_stage rm -f validator/validator.cpp
expect_exec -o "captured-data/k-44/stdout" -eempty tgen
expect_exec -o "captured-data/k-45/stdout" -eempty -rnz get_head 6 6 tgen -s

run_in_stage cp extra/validator-ce.cpp validator/validator.cpp
expect_exec -oh2 "generator           compile[OK]" "validator           compile[FAIL]" -eempty -rnz get_head 2 2 tgen

run_in_stage cp extra/validator-warn.cpp validator/validator.cpp
expect_exec -o "captured-data/k-47/stdout" -eempty tgen
expect_exec -oh4 "generator           compile[OK]" "validator           compile[WARN]" "exit-code: 0" "warnings:" -eempty -rnz get_head 4 4 tgen -w

run_in_stage cp extra/validator-rte.cpp validator/validator.cpp
expect_exec -o "captured-data/k-49/stdout" -eempty tgen
expect_exec -o "captured-data/k-50/stdout" -eempty -rnz get_head 8 8 tgen -s


stage_dir_with_scripts stage1

run_in_stage rm -f solution/correct1.cpp
expect_exec -oempty -eh "Solution file 'correct1.cpp' not found." -rnz get_head 1 1 tgen
expect_exec -f "tests" "captured-data/k-52/probed_files/0_tests" -o "captured-data/k-52/stdout" -eempty tgen --no-sol

run_in_stage cp extra/sol-ce.cpp solution/correct1.cpp
expect_exec -oh3 "generator           compile[OK]" "validator           compile[OK]" "solution            compile[FAIL]" -eempty -rnz get_head 3 3 tgen
expect_exec -o "captured-data/k-54/stdout" -eempty tgen --no-sol-compile
expect_exec -o "captured-data/k-55/stdout" -eempty -rnz get_head 6 6 tgen --no-sol-compile -s

run_in_stage cp extra/sol-warn.cpp solution/correct1.cpp
expect_exec -o "captured-data/k-56/stdout" -eempty tgen
expect_exec -o "captured-data/k-57/stdout" -eempty -rnz get_head 5 5 tgen -w

run_in_stage cp extra/sol-rte.cpp solution/correct1.cpp
expect_exec -o "captured-data/k-58/stdout" -eempty tgen
expect_exec -o "captured-data/k-59/stdout" -eempty -rnz get_head 8 8 tgen -s


stage_dir_with_scripts stage1

run_in_stage cp extra/data-no-args gen/data
expect_exec -o "captured-data/k-60/stdout" -eempty tgen
expect_exec -o "captured-data/k-61/stdout" -eempty -rnz get_head 6 6 tgen -s

run_in_stage cp extra/data-two-args gen/data
expect_exec -o "captured-data/k-62/stdout" -eempty tgen
expect_exec -o "captured-data/k-63/stdout" -eempty -rnz get_head 6 6 tgen -s

run_in_stage cp extra/data-bad-arg gen/data
expect_exec -o "captured-data/k-64/stdout" -eempty tgen
expect_exec -o "captured-data/k-65/stdout" -eempty -rnz get_head 6 6 tgen -s

run_in_stage cp extra/data-bad-cmd gen/data
expect_exec -o "captured-data/k-66/stdout" -eempty tgen
expect_exec -o "captured-data/k-67/stdout" -eempty -rnz get_head 10 10 tgen -s
