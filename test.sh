sudo apt install -y flex bison libssl-dev zip cpio make libelf-dev 7zip
export PATH="/home/people11/kernel_workspace_16/kernel_platform/prebuilts/clang/host/linux-x86/clang-r510928/bin:$PATH"
git config --global user.name "People-11" && git config --global user.email "349504120p@gmail.com"
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/repo && chmod a+x ~/repo && sudo mv ~/repo /usr/local/bin/repo
mkdir kernel_workspace_16 && cd kernel_workspace_16
repo init -u https://github.com/OnePlusOSS/kernel_manifest.git -b refs/heads/oneplus/sm8750 -m oneplus_13t_b.xml --depth=1
repo sync -c --no-tags

cd ~ && git clone -b 16 https://github.com/People-11/13sKernel.git --depth=1
cp -f ./13sKernel/patches/*.patch ./kernel_workspace_16/kernel_platform/ && cd ~/kernel_workspace_16/kernel_platform/
patch -p0 -l < 01_armv8.7-a.patch
patch -p0 -l < 02_noiostat.patch
patch -p0 -l < 03_polly.patch
patch -p0 -l < 04_lazyRCU.patch
patch -p0 -l < 05_nomitigate.patch
patch -p0 -l < 06_spdup_ioctl.patch
patch -p0 -l < 12_menu_cleanup.patch
patch -p0 -l < 13_menu_rm_iowait_influ.patch
patch -p0 -l < 14_disable_KFENCE_UBSAN.patch
patch -p0 -l < 15_idle_mem_barrier.patch
patch -p0 -l < 16_PM_Reduce_freeze_timeout_to_1.patch
patch -p0 -l < 17_mbcache_Speedup_cache_entry_creation.patch
patch -p0 -l < 18_arm64_lib_Optimize_memcmp.patch
patch -p0 -l < 19_arm64_clear_page_ali_16b.patch
patch -p0 -l < 20_arm64_disable_self-hosted_debug.patch
patch -p0 -l < 21_arm64_CRC32_1.patch
patch -p0 -l < 21_arm64_CRC32_2.patch
patch -p0 -l < 21_arm64_CRC32_3.patch
patch -p0 -l < 24_f2fs_Use_copy_page.patch
patch -p0 -l < 26_f2fs_set_ioprio.patch
patch -p0 -l < 27_f2fs_Demote_GC_thread.patch
patch -p0 -l < 28_fs_Reduce_cache_pressure.patch
patch -p0 -l < 29_fs_Align_file_struct_8b.patch
patch -p0 -l < 31_workqueue_Reduce_expensive_locks.patch
patch -p0 -l < 35_sched_fair_Remove_unnecessary_goto.patch
patch -p0 -l < 36_sched_fair_Simplify_continue_balancing.patch
patch -p0 -l < 37_sched_fair_Simplify_update_sd_pick_busiest.patch
patch -p0 -l < 38_sched_fair_Dont_compute_NUMA_Balancing.patch
patch -p0 -l < 39_sched_fair_Dont_compute_overloaded.patch
patch -p0 -l < 42_sched_Skip_barrier_in_ttwu.patch
patch -p0 -l < 43_sched_topology_Optimize_topology_span_sane.patch
patch -p0 -l < 44_sched_topology_improve_topology_span_sane_speed.patch
patch -p0 -l < 45_sched_topology_Refine_topology_span_sane_speedup.patch
patch -p0 -l < 46_sched_core_Prioritize_migrating.patch
patch -p0 -l < 47_Disable_CACHE_HOT_BUDDY.patch
patch -p0 -l < 48_mm_Omit_RCU_read_lock.patch
patch -p0 -l < 49_mm_Disable_watermark_boosting.patch
patch -p0 -l < 50_mm_Disable_proactive_compaction.patch
patch -p0 -l < 51_mm_Dont_exclude_allocation_types.patch
patch -p0 -l < 52_mm_Dont_reserve_memory.patch
patch -p0 -l < 53_mm_Optimize_loop_reduce_redundant.patch
patch -p0 -l < 54_selinux_Remove_audit_dependency.patch
patch -p0 -l < 55_selinux_Avoid_dynamic_memory_allocation1.patch
patch -p0 -l < 55_selinux_Avoid_dynamic_memory_allocation2.patch
patch -p0 -l < 56_bpf_Avoid_allocating_small_buffers.patch
patch -p0 -l < 57_profiling_disable_unnecessary_profiling.patch
patch -p0 -l < 58_uid_sys_stats_stutter_fix.patch
patch -p0 -l < 59_uid_sys_stats_Remove_dependency.patch
patch -p0 -l < 60_alarmtimer_Minimize_wakeup_time.patch
patch -p0 -l < 61_net_Prevent_NetlinkEvent_spam.patch
patch -p0 -l < 62_drm_bridge_Avoid_dynamic_memory_allocation.patch
patch -p0 -l < 64_irqchip_Remove_pr_devel_message.patch
patch -p0 -l < 65_rcu_Make_grace_period_unbound.patch
patch -p0 -l < 66_kernel_Avoid_dynamic_memory_allocation2.patch
patch -p0 -l < 66_kernfs_Avoid_dynamic_memory_allocation1.patch
patch -p0 -l < 67_kernel_IRQ_affinity_masks1.patch
patch -p0 -l < 67_kernel_IRQ_affinity_masks2.patch
patch -p0 -l < 68_kernel_Fix_cpufreq_memory_leaks.patch
patch -p0 -l < 70_treewide_Optimize_page_clearing.patch
patch -p0 -l < 71_drivers_O3.patch
patch -p0 -l < 72_zsmalloc_use_copy_page.patch
patch -p0 -l < 73_media_synchronized_wake.patch
patch -p0 -l < 74_Speedup_LZ4_Decompress.patch
patch -p0 -l < 75_loop_Add_WQ_HIGHPRI.patch
patch -p0 -l < 76_No_iosched.patch
patch -p0 -l < 77_Reduce_vm_stat_interval.patch
patch -p0 -l < 78_Debloat_some_vendor_modules.patch
patch -p0 -l < 79_psi_disable_debug_output.patch
patch -p0 -l < 80_riscv_Optimize_crc32.patch
patch -p0 -l < 82_Remove_HID.patch
patch -p0 -l < 84_1_block_use_bio_alloc_bioset.patch
patch -p0 -l < 84_block_enable_per-cpu_bio_cache.patch
patch -p0 -l < 85_optprobes_1.patch
patch -p0 -l < 85_optprobes_2.patch
patch -p0 -l < 85_optprobes_3.patch
patch -p0 -l < 86_mm_slab_common_Align_all_caches_to_hardware.patch
patch -p0 -l < 87_libstringc_Optimize_memchr_1.patch
patch -p0 -l < 87_libstringc_Optimize_memchr_2.patch

echo 'CONFIG_AUTOFDO_CLANG=y' >> ./common/arch/arm64/configs/gki_defconfig
echo 'CONFIG_LTO_CLANG_THIN=y' >> ./common/arch/arm64/configs/gki_defconfig
echo '# CONFIG_TCP_CONG_CUBIC is not set' >> ./common/arch/arm64/configs/gki_defconfig && echo 'CONFIG_DEFAULT_BBR=y' >> ./common/arch/arm64/configs/gki_defconfig
# echo 'CONFIG_WQ_POWER_EFFICIENT_DEFAULT=y' >> ./common/arch/arm64/configs/gki_defconfig
echo 'CONFIG_SCHED_CLUSTER=y' >> ./common/arch/arm64/configs/gki_defconfig
sed -i 's/^CONFIG_CPU_FREQ_GOV_POWERSAVE=.*/# CONFIG_CPU_FREQ_GOV_POWERSAVE is not set/' ./common/arch/arm64/configs/gki_defconfig
sed -i 's/^CONFIG_CPU_FREQ_GOV_CONSERVATIVE=.*/# CONFIG_CPU_FREQ_GOV_CONSERVATIVE is not set/' ./common/arch/arm64/configs/gki_defconfig
sed -i 's/^CONFIG_PPP=.*/# CONFIG_PPP is not set/' ./common/arch/arm64/configs/gki_defconfig
sed -i 's/^CONFIG_BLK_DEV_NVME=.*/# CONFIG_BLK_DEV_NVME is not set/' ./common/arch/arm64/configs/gki_defconfig
sed -i 's/^CONFIG_USB_NET_DRIVERS=.*/# CONFIG_USB_NET_DRIVERS is not set/' ./common/arch/arm64/configs/gki_defconfig
sed -i 's/^CONFIG_PM_DEBUG=.*/# CONFIG_PM_DEBUG is not set/' ./common/arch/arm64/configs/gki_defconfig
sed -i 's/^CONFIG_CRYPTO_LZO=.*/# CONFIG_CRYPTO_LZO is not set/' ./common/arch/arm64/configs/gki_defconfig
sed -i '/^CONFIG_NET_SCH_/d' ./common/arch/arm64/configs/gki_defconfig && echo -e 'CONFIG_NET_SCH_FQ=y\nCONFIG_DEFAULT_FQ=y' >> ./common/arch/arm64/configs/gki_defconfig
sed -i 's/check_defconfig//' ./common/build.config.gki

cd ~/kernel_workspace_16/kernel_platform && sed -i 's/${scm_version}//' ./common/scripts/setlocalversion && sed -i 's/-4k/-android16-Neko-Perf/g' ./common/arch/arm64/configs/gki_defconfig
cd ~/kernel_workspace_16 && rm kernel_platform/common/android/abi_gki_protected_exports_* && rm kernel_platform/msm-kernel/android/abi_gki_protected_exports_*

cd ~/kernel_workspace_16/kernel_platform/common
make -j$(nproc --all) LLVM=1 ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CC=clang RUSTC=../../prebuilts/rust/linux-x86/1.73.0b/bin/rustc PAHOLE=../../prebuilts/kernel-build-tools/linux-x86/bin/pahole LD=ld.lld HOSTLD=ld.lld O=out gki_defconfig all

cd ~/ && git clone https://github.com/Kernel-SU/AnyKernel3.git --depth=1 && rm -rf ./AnyKernel3/.git && cp -f kernel_workspace_16/kernel_platform/common/out/arch/arm64/boot/Image ./AnyKernel3/

cd ~/ && rm -rf 13sKernel AnyKernel3 kernel_workspace_16 && 7z x kernel_workspace_16.7z

cd ~/13sKernel/patches && export QUILT_PATCHES=$(pwd)/patches QUILT_PATCH_OPTS="-l" && rm -rf patches && mkdir patches && cp *.patch patches/ && (cd patches && ls *.patch > series) && cd ~/kernel_workspace/kernel_platform/common && while quilt push; do quilt refresh; done && quilt pop -a