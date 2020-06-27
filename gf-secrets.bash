#!/usr/bin/env bash

gf-secrets() {
	[[ -z $1 ]] && { echo "Usage: ${FUNCNAME[0]} host"; return; }
	local OUT="$1-gfs"

	echo "----- Getting files from $1 by gau"
	# Specify for JS/JSON/JSONP files
	gau -subs $1 | cut -d"?" -f1 | grep -E "\.js(?:onp?)?$" | tee ${OUT}.txt

	# Checking gau results
	local GAU=$(sort -u ${OUT}.txt)
	[[ `echo "${GAU}" | wc -l` = "0" ]] && { echo -e "\nNo known URLs found! Exit."; rm -rf ${OUT}.txt; return; }

	echo "----- Fetching gau resulsts by fff"
	echo "${GAU}" | fff -s 200 -o ${OUT}/ # Save only 200 status code
	cd ${OUT}/

	echo "----- Digging secrets"
	for i in `gf -list`; do [[ ${i} =~ "_secrets"* ]] && gf ${i}; done

	cd - &>/dev/null
	echo -e "\nDone!"
}
