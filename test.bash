#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Kento Tsutsui
# SPDX-License-Identifier: BSD-3-Clause

ng(){
    echo NG at Line $1
    res=1
}

res=0

### plus TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(seq 10 | ./plus)
[ "${out}" = 55 ] || ng ${LINENO}

out=$(seq 100 | ./plus)
[ "${out}" = 5050 ] || ng ${LINENO}

out=$(seq 0 | ./plus)
[ "${out}" = "Error" ] || ng ${LINENO}

out=$(seq -10 | ./plus)
[ "${out}" =  "Error" ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo a| ./plus)
#[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "Error" ] || ng ${LINENO}

out=$(echo あ| ./plus)
#[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "Error" ] || ng ${LINENO}

out=$(echo | ./plus) #空文字
#[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "Error" ] || ng ${LINENO}

### omikuzi TEST ###
out=$(./omikuzi)
[ "$?" = 0 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
