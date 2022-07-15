
set -euo pipefail

pushd_test_context_here
begin_capturing

capture_run source "../../definition_get_head.sh"
capture_run source "../../definition_not_web_terminal.sh"
capture_run source "definitions.sh"

capture_exec_key_counter=0
function capture_exec_k {
    capture_exec "k-$((capture_exec_key_counter++))" "$@"
}

function restage {
    echo
    capture_run stage_dir_with_scripts "${stage_dir}"
}

stage_dir="stage1"


restage
capture_exec_k -fc "tests" tgen
capture_exec_k tgen -s
capture_exec_k tgen -w
capture_exec_k tgen --no-val
capture_exec_k tgen --no-sol-compile
capture_exec_k -fc "tests" tgen -u --no-gen
capture_exec_k -fc "tests" tgen --no-sol
capture_exec_k tgen -u --no-gen --no-val
capture_exec_k tgen -u --no-gen --no-sol
capture_exec_k tgen --no-val --no-sol
capture_exec_k tgen -u --no-gen --no-val --no-sol

capture_exec_k tgen --tests-dir=new-test-dir --no-gen
capture_exec_k tgen --tests-dir=new-test-dir -u

capture_run_in_stage rm -f "gen/gen1.cpp"
capture_exec_k tgen
capture_exec_k get_head 8 8 tgen -s

capture_run_in_stage cp "extra/gen-ce.cpp" "gen/gen1.cpp"
capture_exec_k get_head 1 1 tgen

capture_run_in_stage cp "extra/gen-warn.cpp" "gen/gen1.cpp"
capture_exec_k tgen
capture_exec_k get_head 3 3 tgen -w

capture_run_in_stage cp "extra/gen-rte.cpp" "gen/gen1.cpp"
capture_exec_k tgen
capture_exec_k tgen -s
capture_exec_k tgen --no-val
capture_exec_k tgen --no-sol
capture_run_in_stage rm -f "gen/manual/example-01.in"
capture_exec_k tgen
capture_exec_k tgen -s


restage
capture_run_in_stage get_head 0 0 tgen
capture_run_in_stage rm -f "tests/0-01.in"
capture_exec_k tgen -u --no-gen --no-val --no-sol
capture_exec_k tgen -u --no-gen --no-val --no-sol -s
capture_exec_k tgen -u --no-gen --no-val
capture_exec_k tgen -u --no-gen --no-val -s
capture_exec_k tgen -u --no-gen --no-sol
capture_exec_k tgen -u --no-gen --no-sol -s
capture_exec_k tgen -u --no-gen
capture_exec_k tgen -u --no-gen -s


restage
capture_run_in_stage rm -f "validator/validator.cpp"
capture_exec_k tgen
capture_exec_k get_head 6 6 tgen -s

capture_run_in_stage cp "extra/validator-ce.cpp" "validator/validator.cpp"
capture_exec_k get_head 2 2 tgen

capture_run_in_stage cp "extra/validator-warn.cpp" "validator/validator.cpp"
capture_exec_k tgen
capture_exec_k get_head 4 4 tgen -w

capture_run_in_stage cp "extra/validator-rte.cpp" "validator/validator.cpp"
capture_exec_k tgen
capture_exec_k get_head 8 8 tgen -s


restage
capture_run_in_stage rm -f "solution/correct1.cpp"
capture_exec_k get_head 1 1 tgen
capture_exec_k -fc "tests" tgen --no-sol

capture_run_in_stage cp "extra/sol-ce.cpp" "solution/correct1.cpp"
capture_exec_k get_head 3 3 tgen
capture_exec_k tgen --no-sol-compile
capture_exec_k get_head 6 6 tgen --no-sol-compile -s

capture_run_in_stage cp "extra/sol-warn.cpp" "solution/correct1.cpp"
capture_exec_k tgen
capture_exec_k get_head 5 5 tgen -w

capture_run_in_stage cp "extra/sol-rte.cpp" "solution/correct1.cpp"
capture_exec_k tgen
capture_exec_k get_head 8 8 tgen -s


restage
capture_run_in_stage cp "extra/data-no-args" "gen/data"
capture_exec_k tgen
capture_exec_k tgen -s

capture_run_in_stage cp "extra/data-two-args" "gen/data"
capture_exec_k tgen
capture_exec_k tgen -s

capture_run_in_stage cp "extra/data-bad-arg" "gen/data"
capture_exec_k tgen
capture_exec_k tgen -s

capture_run_in_stage cp "extra/data-bad-cmd" "gen/data"
capture_exec_k tgen
capture_exec_k get_head 10 10 tgen -s


end_capturing
popd_test_context
