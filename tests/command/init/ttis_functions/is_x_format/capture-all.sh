
set -euo pipefail

pushd_test_context_here
begin_capturing

echo

capture_run source "../../definitions.sh"
capture_run source "../definitions.sh"

echo
capture_run _TT_check_stage_not_in_a_tps_repo
capture_run stage_dir "stage"

template_name="default"
templates_dir="templates_dir"
TTIS_filepath="${templates_dir}/${template_name}/task-template-instantiate.sh"

capture_exec "k1" run_ttis "${TTIS_filepath}" -T "${templates_dir}" -t "${template_name}" "new-dir"

end_capturing
popd_test_context
