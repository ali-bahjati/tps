# Do not edit this file manually. It is automatically generated.
# Edit 'capture-all.sh' instead.

stage_dir stage


expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 bar
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 bar a_param
expect_exec -oh2 "a_dir/" "a_file " -eempty tps_bc 2 1 bar a_param
expect_exec -oh2 "a_dir/" "a_file " -eempty tps_bc 2 2 bar a_param
expect_exec -oempty -eempty tps_bc 2 3 bar a_param
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 bar
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 bar -a_param
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 bar -a_param
expect_exec -oempty -eempty tps_bc 2 2 bar -a_param
expect_exec -oempty -eempty tps_bc 2 3 bar -a_param
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 bar
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 bar --a_param
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 bar --a_param
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 2 bar --a_param
expect_exec -oempty -eempty tps_bc 2 3 bar --a_param
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 bar
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 bar hello
expect_exec -oempty -eempty tps_bc 2 1 bar hello
expect_exec -oempty -eempty tps_bc 2 2 bar hello
expect_exec -oempty -eempty tps_bc 2 3 bar hello
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 bar
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 bar -hello
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 bar -hello
expect_exec -oempty -eempty tps_bc 2 2 bar -hello
expect_exec -oempty -eempty tps_bc 2 3 bar -hello
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 bar
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 bar --hello
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 bar --hello
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 2 bar --hello
expect_exec -oh "--hello " -eempty tps_bc 2 3 bar --hello
expect_exec -oh "--type=" -eempty tps_bc 2 6 bar --type=a
expect_exec -oh4 "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 7 bar --type=a
expect_exec -oh2 "a_dir/" "a_file " -eempty tps_bc 2 8 bar --type=a
expect_exec -oh "--type=" -eempty tps_bc 2 6 bar --type=b
expect_exec -oh4 "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 7 bar --type=b
expect_exec -oempty -eempty tps_bc 2 8 bar --type=b

expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 foo
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 foo a_param
expect_exec -oh2 "a_dir/" "a_file " -eempty tps_bc 2 1 foo a_param
expect_exec -oh2 "a_dir/" "a_file " -eempty tps_bc 2 2 foo a_param
expect_exec -oempty -eempty tps_bc 2 3 foo a_param
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 foo
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 foo -a_param
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 foo -a_param
expect_exec -oempty -eempty tps_bc 2 2 foo -a_param
expect_exec -oempty -eempty tps_bc 2 3 foo -a_param
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 foo
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 foo --a_param
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 foo --a_param
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 2 foo --a_param
expect_exec -oempty -eempty tps_bc 2 3 foo --a_param
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 foo
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 foo hello
expect_exec -oempty -eempty tps_bc 2 1 foo hello
expect_exec -oempty -eempty tps_bc 2 2 foo hello
expect_exec -oempty -eempty tps_bc 2 3 foo hello
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 foo
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 foo -hello
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 foo -hello
expect_exec -oempty -eempty tps_bc 2 2 foo -hello
expect_exec -oempty -eempty tps_bc 2 3 foo -hello
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 foo
expect_exec -oh6 "--hello " "--type=" "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 0 foo --hello
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 foo --hello
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 2 foo --hello
expect_exec -oh "--hello " -eempty tps_bc 2 3 foo --hello
expect_exec -oh "--type=" -eempty tps_bc 2 6 foo --type=a
expect_exec -oh4 "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 7 foo --type=a
expect_exec -oh2 "a_dir/" "a_file " -eempty tps_bc 2 8 foo --type=a
expect_exec -oh "--type=" -eempty tps_bc 2 6 foo --type=b
expect_exec -oh4 "a_dir/" "a_file " "problem.json " "scripts/" -eempty tps_bc 2 7 foo --type=b
expect_exec -oempty -eempty tps_bc 2 8 foo --type=b

set_exec_cwd a_dir

expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 bar
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 bar a_param
expect_exec -oh "a_file " -eempty tps_bc 2 1 bar a_param
expect_exec -oh "a_file " -eempty tps_bc 2 2 bar a_param
expect_exec -oempty -eempty tps_bc 2 3 bar a_param
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 bar
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 bar -a_param
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 bar -a_param
expect_exec -oempty -eempty tps_bc 2 2 bar -a_param
expect_exec -oempty -eempty tps_bc 2 3 bar -a_param
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 bar
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 bar --a_param
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 bar --a_param
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 2 bar --a_param
expect_exec -oempty -eempty tps_bc 2 3 bar --a_param
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 bar
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 bar hello
expect_exec -oempty -eempty tps_bc 2 1 bar hello
expect_exec -oempty -eempty tps_bc 2 2 bar hello
expect_exec -oempty -eempty tps_bc 2 3 bar hello
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 bar
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 bar -hello
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 bar -hello
expect_exec -oempty -eempty tps_bc 2 2 bar -hello
expect_exec -oempty -eempty tps_bc 2 3 bar -hello
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 bar
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 bar --hello
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 bar --hello
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 2 bar --hello
expect_exec -oh "--hello " -eempty tps_bc 2 3 bar --hello
expect_exec -oh "--type=" -eempty tps_bc 2 6 bar --type=a
expect_exec -oh "a_file " -eempty tps_bc 2 7 bar --type=a
expect_exec -oh "a_file " -eempty tps_bc 2 8 bar --type=a
expect_exec -oh "--type=" -eempty tps_bc 2 6 bar --type=b
expect_exec -oh "a_file " -eempty tps_bc 2 7 bar --type=b
expect_exec -oempty -eempty tps_bc 2 8 bar --type=b

expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 foo
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 foo a_param
expect_exec -oh "a_file " -eempty tps_bc 2 1 foo a_param
expect_exec -oh "a_file " -eempty tps_bc 2 2 foo a_param
expect_exec -oempty -eempty tps_bc 2 3 foo a_param
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 foo
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 foo -a_param
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 foo -a_param
expect_exec -oempty -eempty tps_bc 2 2 foo -a_param
expect_exec -oempty -eempty tps_bc 2 3 foo -a_param
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 foo
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 foo --a_param
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 foo --a_param
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 2 foo --a_param
expect_exec -oempty -eempty tps_bc 2 3 foo --a_param
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 foo
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 foo hello
expect_exec -oempty -eempty tps_bc 2 1 foo hello
expect_exec -oempty -eempty tps_bc 2 2 foo hello
expect_exec -oempty -eempty tps_bc 2 3 foo hello
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 foo
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 foo -hello
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 foo -hello
expect_exec -oempty -eempty tps_bc 2 2 foo -hello
expect_exec -oempty -eempty tps_bc 2 3 foo -hello
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 foo
expect_exec -oh3 "--hello " "--type=" "a_file " -eempty tps_bc 2 0 foo --hello
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 1 foo --hello
expect_exec -oh2 "--hello " "--type=" -eempty tps_bc 2 2 foo --hello
expect_exec -oh "--hello " -eempty tps_bc 2 3 foo --hello
expect_exec -oh "--type=" -eempty tps_bc 2 6 foo --type=a
expect_exec -oh "a_file " -eempty tps_bc 2 7 foo --type=a
expect_exec -oh "a_file " -eempty tps_bc 2 8 foo --type=a
expect_exec -oh "--type=" -eempty tps_bc 2 6 foo --type=b
expect_exec -oh "a_file " -eempty tps_bc 2 7 foo --type=b
expect_exec -oempty -eempty tps_bc 2 8 foo --type=b
unset_exec_cwd
