set -euo pipefail

mkdir "${output_dir_name}"

function check {
	local -r value_to_check="$1"; shift
	echo -ne "${func_name}\t'${value_to_check}'\t"
	if "${func_name}" "${value_to_check}"; then
		echo "y" 
	else
		echo "n" 
	fi
}


echo
func_name="is_identifier_format"
for val in "t" "hi" "hey you" "hey_you" "hi3" "3hi" "h3i" "aa" "1a" "1" "_" "_a" "_1" "a_" "1_"; do
	check "${val}"
done


for func_name in "is_unsigned_integer_format" "is_signed_integer_format" "is_unsigned_decimal_format" "is_signed_decimal_format"; do
	echo
	for sign in "" "+" "-"; do
		for val in "0" "3" "13" "0.0" "1.2" "1." ".2" "" " " "." "x" "2x" "x2" "1.x" ".x" "x.2" "x."; do
			check "${sign}${val}"
		done
	done
done
