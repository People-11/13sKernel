# POPO — People's OnePlus 13s OKI

这是为 **OnePlus 13s** 编译的内核，目标是做减法并优化，不引入新的东西:

---
合并了部分来自 **sultan, kdrag0n, arter97, brokestar233** 等内核大佬的优化:

- 启用 O2 优化编译
- 启用 Polly 优化编译
- 启用 Armv8.7-a 优化编译
- 启用 ThinLTO 优化编译
- 启用 AutoFDO 优化编译
- 启用 DCE 优化编译
- ⚠ 禁用 Spectre 缓解以提升性能
- ⚠ 禁用 Meltdown 缓解以提升性能
- ⚠ 禁用软件 Pan 模拟以提升性能
- ⚠ 禁用 KFENCE/UBSAN 以提升性能
- 一些 文件系统优化
- 一些 内存缓存优化
- 一些 电源管理优化
- 一些 核心调度优化

---
## 致谢

- [TheGeniusClub](https://github.com/TheGeniusClub/android_kernel_common_oneplus_sm8750/)
- [co2kernel](https://github.com/co2kernel)
- [OnePlusOSS/oneplus_sm8750](https://github.com/OnePlusOSS/android_kernel_common_oneplus_sm8750) 
- [HanKuCha/oneplus13_a5p_sukisu](https://github.com/HanKuCha/oneplus13_a5p_sukisu)

## Ignore

- UKSM ZRAM OF ADIOS SBALANCE NTSYNC
