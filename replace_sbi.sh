#!/bin/bash

# 文件路径
FILE="os/src/sbi.rs"

# 替换常量值
sed -i 's/const SBI_SHUTDOWN: usize = .*/const SBI_SHUTDOWN: usize = 0x53525354;/' "$FILE"
sed -i 's/const SBI_SET_TIMER: usize = .*/const SBI_SET_TIMER: usize = 0x54494D45;/' "$FILE"

echo "替换完成！"
