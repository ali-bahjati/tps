
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

function capture_invoke {
    capture_exec_k tinvoke "$@"
}

function capture_invoke_head {
    local -r n="$1"; shift
    capture_exec_k get_head "${n}" "${n}" tinvoke "$@"
}


function restage {
    echo
    capture_run stage_dir_with_scripts "${stage_dir}"
}

function invoke_java_solutions {
    : Commenting out java solutions as some test environments may not have java
    # capture_invoke "solution/correct1.java"
    # capture_invoke "solution/wrong1.java"
    # capture_invoke "solution/rte1.java"
    # capture_invoke "solution/slow1.java"
}

stage_dir="stage-without-checker"

restage
capture_invoke "solution/correct1.cpp"
capture_invoke "solution/wrong1.cpp"
capture_invoke "solution/rte1.cpp"
capture_invoke "solution/slow1.cpp"
capture_invoke "solution/slow2.cpp"
capture_invoke "solution/correct1.py"
capture_invoke "solution/wrong1.py"
capture_invoke "solution/rte1.py"
capture_invoke "solution/slow1.py"

invoke_java_solutions

capture_invoke -r "solution/correct1.cpp"
capture_invoke -r "solution/wrong1.cpp"
capture_invoke -r "solution/rte1.cpp"
capture_invoke -r "solution/slow1.cpp"
capture_invoke -r "solution/slow2.cpp"

capture_invoke "solution/nonexist.cpp"
capture_invoke_head 1 "solution/compile_error.cpp"

capture_invoke "solution/correct1-warn.cpp"
capture_invoke --no-sol-compile "solution/correct1-warn.cpp"
capture_invoke -s "solution/correct1-warn.cpp"
capture_invoke_head 3 -w "solution/correct1-warn.cpp"

capture_invoke --no-check "solution/correct1.cpp"
capture_invoke --no-check "solution/rte1.cpp"
capture_invoke --no-check "solution/slow1.cpp"

capture_invoke -r --no-check "solution/correct1.cpp"
capture_invoke -r --no-check "solution/rte1.cpp"
capture_invoke -r --no-check "solution/slow1.cpp"

capture_invoke "solution/slow2.cpp" -r --no-tle
capture_invoke "solution/slow2.cpp" -r --time-limit=4
capture_invoke "solution/slow1.cpp" -r --time-limit=4
capture_invoke "solution/slow1.cpp" -r --hard-time-limit=5

capture_invoke --tests-dir=new-test-dir "solution/correct1.cpp"
capture_run_in_stage mkdir "new-test-dir"
capture_invoke_head 2 --tests-dir=new-test-dir "solution/correct1.cpp"

capture_run_in_stage rm -f "tests/0-01.in"
capture_invoke -r "solution/correct1.cpp"
capture_invoke -r -s "solution/correct1.cpp"
capture_run_in_stage rm -f "tests/1-01.out"
capture_invoke -r "solution/correct1.cpp"
capture_invoke -r -s "solution/correct1.cpp"


stage_dir="stage-with-checker"

restage
capture_invoke "solution/correct1.cpp"
capture_invoke "solution/wrong1.cpp"
capture_invoke "solution/rte1.cpp"
capture_invoke "solution/slow1.cpp"

capture_invoke -r "solution/correct1.cpp"
capture_invoke -r "solution/wrong1.cpp"
capture_invoke -r "solution/rte1.cpp"
capture_invoke -r "solution/slow1.cpp"
capture_invoke -r "solution/slow2.cpp"

capture_invoke --no-check "solution/correct1.cpp"
capture_invoke --no-check "solution/rte1.cpp"
capture_invoke --no-check "solution/slow1.cpp"

capture_invoke -r --no-check "solution/correct1.cpp"
capture_invoke -r --no-check "solution/rte1.cpp"
capture_invoke -r --no-check "solution/slow1.cpp"


capture_run_in_stage rm -f "checker/checker.cpp"
capture_invoke "solution/correct1.cpp"
capture_invoke "solution/correct1.cpp" -r
capture_invoke_head 5 "solution/correct1.cpp" -s
capture_invoke_head 5 "solution/correct1.cpp" -sr

capture_run_in_stage cp "extra/checker-ce.cpp" "checker/checker.cpp"
capture_invoke_head 3 "solution/correct1.cpp"

capture_run_in_stage cp "extra/checker-warn.cpp" "checker/checker.cpp"
capture_invoke "solution/correct1.cpp"
capture_invoke_head 4 "solution/correct1.cpp" -w

capture_run_in_stage cp "extra/checker-rte.cpp" "checker/checker.cpp"
capture_invoke "solution/correct1.cpp"
capture_invoke "solution/correct1.cpp" -r
capture_invoke_head 7 "solution/correct1.cpp" -s
capture_invoke_head 7 "solution/correct1.cpp" -sr

capture_run_in_stage cp "extra/checker-fail.cpp" "checker/checker.cpp"
capture_invoke "solution/correct1.cpp"
capture_invoke "solution/correct1.cpp" -r
capture_invoke "solution/correct1.cpp" -s
capture_invoke "solution/correct1.cpp" -sr

capture_run_in_stage rm -rf "checker"
capture_invoke_head 2 "solution/correct1.cpp"

end_capturing
popd_test_context
