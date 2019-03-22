# Add MicroBlaze Patches (only when using MicroBlaze)
FILESEXTRAPATHS_append_microblaze := "${THISDIR}/gcc-8:"
SRC_URI_append_microblaze = " \
file://0001-LOCAL-Testsuite-builtins-tests-require-fpic.patch \
        file://0002-LOCAL-Quick-fail-g-.dg-opt-memcpy1.C.patch \
        file://0003-LOCAL-Testsuite-explicitly-add-fivopts-for-tests-tha.patch \
        file://0004-LOCAL-For-dejagnu-static-testing-on-qemu-suppress-wa.patch \
        file://0005-Patch-testsuite-Add-MicroBlaze-to-target-supports-fo.patch \
        file://0006-Patch-testsuite-Update-MicroBlaze-strings-test.patch \
        file://0007-Patch-testsuite-Allow-MicroBlaze-.weakext-pattern-in.patch \
        file://0008-Patch-testsuite-Add-MicroBlaze-to-check_profiling_av.patch \
        file://0009-Patch-microblaze-Fix-atomic-side-effects.patch \
        file://0010-Patch-microblaze-Fix-atomic-boolean-return-value.patch \
        file://0011-Patch-microblaze-Fix-the-Microblaze-crash-with-msmal.patch \
        file://0012-Patch-microblaze-Added-ashrsi3_with_size_opt.patch \
        file://0013-Patch-microblaze-Fixed-missing-save-of-r18-in-fast_i.patch \
        file://0014-Patch-microblaze-Use-bralid-for-profiler-calls.patch \
        file://0015-Patch-microblaze-Disable-fivopts-by-default.patch \
        file://0016-Patch-microblaze-Removed-moddi3-routinue.patch \
        file://0017-Patch-microblaze-Add-INIT_PRIORITY-support.patch \
        file://0018-Patch-microblaze-Add-optimized-lshrsi3.patch \
        file://0019-Patch-microblaze-Modified-trap-instruction.patch \
        file://0020-Patch-microblaze-Reducing-Stack-space-for-arguments.patch \
        file://0021-Patch-microblaze-Add-cbranchsi4_reg.patch \
        file://0022-Patch-microblaze-Inline-Expansion-of-fsqrt-builtin.patch \
        file://0023-Patch-OPT-Update-heuristics-for-loop-invariant-for-a.patch \
        file://0024-PATCH-microblaze.md-Improve-adddi3-and-subdi3-insn-d.patch \
        file://0025-Patch-microblaze-Update-ashlsi3-movsf-patterns.patch \
        file://0026-Patch-microblaze-8-stage-pipeline-for-microblaze.patch \
        file://0027-Patch-rtl-Optimization-Better-register-pressure-esti.patch \
        file://0028-Patch-microblaze-Correct-the-const-high-double-immed.patch \
        file://0029-Fix-microblaze-Fix-internal-compiler-error-with-msma.patch \
        file://0030-patch-microblaze-Fix-the-calculation-of-high-word-in.patch \
        file://0031-Patch-microblaze-Add-new-bit-field-instructions.patch \
        file://0032-Patch-microblaze-Fix-bug-in-MB-version-calculation.patch \
        file://0033-Fixing-the-bug-in-the-bit-field-instruction.patch \
        file://0034-Patch-microblaze-Macros-used-in-Xilinx-internal-patc.patch \
        file://0035-Fixing-the-issue-with-the-builtin_alloc.patch \
        file://0036-Patch-Microblaze-reverting-the-cost-check-before-pro.patch \
        file://0037-Patch-Microblaze-update-in-constraints-for-bitfield-.patch \
        file://0038-Patch-Microblaze-Removed-fsqrt-generation-for-double.patch \
        file://0039-Intial-commit-of-64-bit-Microblaze.patch \
        file://0040-Added-load-store-pattern-movdi-and-also-adding-missi.patch \
        file://0041-Intial-commit-for-64bit-MB-sources.patch \
        file://0042-re-arrangement-of-the-compare-branches.patch \
        file://0043-Patch-Microblaze-previous-commit-broke-the-handling-.patch \
        file://0044-Patch-Microblaze-Support-of-multilibs-with-m64.patch \
        file://0045-Fixed-issues-like.patch \
        file://0046-Fixed-below-issues.patch \
        file://0047-Added-double-arith-instructions.patch \
        file://0048-Fixed-the-issue-in-the-delay-slot-with-swap-instruct.patch \
        file://0049-Fixed-the-load-store-issue-with-the-32bit-arith-libr.patch \
        file://0050-extending-the-Dwarf-support-to-64bit-Microblaze.patch \
        file://0051-fixing-the-typo-errors-in-umodsi3-file.patch \
        file://0052-fixing-the-32bit-LTO-related-issue9-1014024.patch \
        file://0053-Fixed-the-missing-stack-adjustment-in-prologue-of-mo.patch \
        file://0054-Patch-Microblaze-corrected-SPN-for-dlong-instruction.patch \
        file://0055-fixing-the-long-long-long-mingw-toolchain-issue.patch \
        file://0056-fix-the-lto-wrapper-issue-on-windows.patch \
        file://0057-Fix-the-MB-64-bug-of-handling-QI-objects.patch \
"
