
secureflow/auth-service:v1 (debian 13.4)
========================================
Total: 112 (UNKNOWN: 2, LOW: 64, MEDIUM: 39, HIGH: 7, CRITICAL: 0)

┌────────────────┬─────────────────────┬──────────┬──────────────┬─────────────────────────────┬───────────────┬──────────────────────────────────────────────────────────────┐
│    Library     │    Vulnerability    │ Severity │    Status    │      Installed Version      │ Fixed Version │                            Title                             │
├────────────────┼─────────────────────┼──────────┼──────────────┼─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ apt            │ CVE-2011-3374       │ LOW      │ affected     │ 3.0.3                       │               │ It was found that apt-key in apt, all versions, do not       │
│                │                     │          │              │                             │               │ correctly...                                                 │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2011-3374                    │
├────────────────┼─────────────────────┤          │              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ bash           │ TEMP-0841856-B18BAF │          │              │ 5.2.37-2+b8                 │               │ [Privilege escalation possible to other user than root]      │
│                │                     │          │              │                             │               │ https://security-tracker.debian.org/tracker/TEMP-0841856-B1- │
│                │                     │          │              │                             │               │ 8BAF                                                         │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ bsdutils       │ CVE-2026-27456      │ MEDIUM   │              │ 1:2.41-5                    │               │ util-linux: TOCTOU in the mount program when setting up loop │
│                │                     │          │              │                             │               │ devices                                                      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-27456                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-3184       │          │              │                             │               │ util-linux: util-linux: Access control bypass due to         │
│                │                     │          │              │                             │               │ improper hostname canonicalization                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-3184                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2022-0563       │ LOW      │              │                             │               │ util-linux: partial disclosure of arbitrary files in chfn    │
│                │                     │          │              │                             │               │ and chsh when compiled...                                    │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2022-0563                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-14104      │          │              │                             │               │ util-linux: util-linux: Heap buffer overread in setpwnam()   │
│                │                     │          │              │                             │               │ when processing 256-byte usernames                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-14104                   │
├────────────────┼─────────────────────┤          │              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ coreutils      │ CVE-2017-18018      │          │              │ 9.7-3                       │               │ coreutils: race condition vulnerability in chown and chgrp   │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2017-18018                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-5278       │          │              │                             │               │ coreutils: Heap Buffer Under-Read in GNU Coreutils sort via  │
│                │                     │          │              │                             │               │ Key Specification                                            │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-5278                    │
├────────────────┼─────────────────────┤          │              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libapt-pkg7.0  │ CVE-2011-3374       │          │              │ 3.0.3                       │               │ It was found that apt-key in apt, all versions, do not       │
│                │                     │          │              │                             │               │ correctly...                                                 │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2011-3374                    │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libblkid1      │ CVE-2026-27456      │ MEDIUM   │              │ 2.41-5                      │               │ util-linux: TOCTOU in the mount program when setting up loop │
│                │                     │          │              │                             │               │ devices                                                      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-27456                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-3184       │          │              │                             │               │ util-linux: util-linux: Access control bypass due to         │
│                │                     │          │              │                             │               │ improper hostname canonicalization                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-3184                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2022-0563       │ LOW      │              │                             │               │ util-linux: partial disclosure of arbitrary files in chfn    │
│                │                     │          │              │                             │               │ and chsh when compiled...                                    │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2022-0563                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-14104      │          │              │                             │               │ util-linux: util-linux: Heap buffer overread in setpwnam()   │
│                │                     │          │              │                             │               │ when processing 256-byte usernames                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-14104                   │
├────────────────┼─────────────────────┼──────────┼──────────────┼─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libc-bin       │ CVE-2026-4046       │ MEDIUM   │ fix_deferred │ 2.41-12+deb13u2             │               │ glibc: glibc: Denial of Service via iconv() function with    │
│                │                     │          │              │                             │               │ specific character sets...                                   │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-4046                    │
│                ├─────────────────────┤          ├──────────────┤                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-4437       │          │ affected     │                             │               │ glibc: glibc: Incorrect DNS response parsing via crafted DNS │
│                │                     │          │              │                             │               │ server response                                              │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-4437                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-4438       │          │              │                             │               │ glibc: glibc: Invalid DNS hostname returned via              │
│                │                     │          │              │                             │               │ gethostbyaddr functions                                      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-4438                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-5435       │          │              │                             │               │ glibc: glibc: Out-of-bounds write via TSIG record processing │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-5435                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-5450       │          │              │                             │               │ glibc: glibc: Heap Buffer Overflow in `scanf` with `%mc`     │
│                │                     │          │              │                             │               │ format specifier and...                                      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-5450                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-5928       │          │              │                             │               │ glibc: glibc: Information disclosure or denial of service    │
│                │                     │          │              │                             │               │ via ungetwc function with...                                 │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-5928                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2010-4756       │ LOW      │              │                             │               │ glibc: glob implementation can cause excessive CPU and       │
│                │                     │          │              │                             │               │ memory consumption due to...                                 │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2010-4756                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2018-20796      │          │              │                             │               │ glibc: uncontrolled recursion in function                    │
│                │                     │          │              │                             │               │ check_dst_limits_calc_pos_1 in posix/regexec.c               │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2018-20796                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2019-1010022    │          │              │                             │               │ glibc: stack guard protection bypass                         │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2019-1010022                 │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2019-1010023    │          │              │                             │               │ glibc: running ldd on malicious ELF leads to code execution  │
│                │                     │          │              │                             │               │ because of...                                                │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2019-1010023                 │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2019-1010024    │          │              │                             │               │ glibc: ASLR bypass using cache of thread stack and heap      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2019-1010024                 │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2019-1010025    │          │              │                             │               │ glibc: information disclosure of heap addresses of           │
│                │                     │          │              │                             │               │ pthread_created thread                                       │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2019-1010025                 │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2019-9192       │          │              │                             │               │ glibc: uncontrolled recursion in function                    │
│                │                     │          │              │                             │               │ check_dst_limits_calc_pos_1 in posix/regexec.c               │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2019-9192                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-6238       │ UNKNOWN  │              │                             │               │ The deprecated functions ns_printrrf, ns_printrr and         │
│                │                     │          │              │                             │               │ fp_nquery in the ...                                         │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-6238                    │
├────────────────┼─────────────────────┼──────────┼──────────────┤                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│ libc6          │ CVE-2026-4046       │ MEDIUM   │ fix_deferred │                             │               │ glibc: glibc: Denial of Service via iconv() function with    │
│                │                     │          │              │                             │               │ specific character sets...                                   │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-4046                    │
│                ├─────────────────────┤          ├──────────────┤                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-4437       │          │ affected     │                             │               │ glibc: glibc: Incorrect DNS response parsing via crafted DNS │
│                │                     │          │              │                             │               │ server response                                              │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-4437                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-4438       │          │              │                             │               │ glibc: glibc: Invalid DNS hostname returned via              │
│                │                     │          │              │                             │               │ gethostbyaddr functions                                      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-4438                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-5435       │          │              │                             │               │ glibc: glibc: Out-of-bounds write via TSIG record processing │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-5435                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-5450       │          │              │                             │               │ glibc: glibc: Heap Buffer Overflow in `scanf` with `%mc`     │
│                │                     │          │              │                             │               │ format specifier and...                                      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-5450                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-5928       │          │              │                             │               │ glibc: glibc: Information disclosure or denial of service    │
│                │                     │          │              │                             │               │ via ungetwc function with...                                 │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-5928                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2010-4756       │ LOW      │              │                             │               │ glibc: glob implementation can cause excessive CPU and       │
│                │                     │          │              │                             │               │ memory consumption due to...                                 │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2010-4756                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2018-20796      │          │              │                             │               │ glibc: uncontrolled recursion in function                    │
│                │                     │          │              │                             │               │ check_dst_limits_calc_pos_1 in posix/regexec.c               │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2018-20796                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2019-1010022    │          │              │                             │               │ glibc: stack guard protection bypass                         │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2019-1010022                 │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2019-1010023    │          │              │                             │               │ glibc: running ldd on malicious ELF leads to code execution  │
│                │                     │          │              │                             │               │ because of...                                                │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2019-1010023                 │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2019-1010024    │          │              │                             │               │ glibc: ASLR bypass using cache of thread stack and heap      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2019-1010024                 │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2019-1010025    │          │              │                             │               │ glibc: information disclosure of heap addresses of           │
│                │                     │          │              │                             │               │ pthread_created thread                                       │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2019-1010025                 │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2019-9192       │          │              │                             │               │ glibc: uncontrolled recursion in function                    │
│                │                     │          │              │                             │               │ check_dst_limits_calc_pos_1 in posix/regexec.c               │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2019-9192                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-6238       │ UNKNOWN  │              │                             │               │ The deprecated functions ns_printrrf, ns_printrr and         │
│                │                     │          │              │                             │               │ fp_nquery in the ...                                         │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-6238                    │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libcap2        │ CVE-2026-4878       │ HIGH     │              │ 1:2.75-10+b8                │               │ libcap: libcap: Privilege escalation via TOCTOU race         │
│                │                     │          │              │                             │               │ condition in cap_set_file()                                  │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-4878                    │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ liblastlog2-2  │ CVE-2026-27456      │ MEDIUM   │              │ 2.41-5                      │               │ util-linux: TOCTOU in the mount program when setting up loop │
│                │                     │          │              │                             │               │ devices                                                      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-27456                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-3184       │          │              │                             │               │ util-linux: util-linux: Access control bypass due to         │
│                │                     │          │              │                             │               │ improper hostname canonicalization                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-3184                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2022-0563       │ LOW      │              │                             │               │ util-linux: partial disclosure of arbitrary files in chfn    │
│                │                     │          │              │                             │               │ and chsh when compiled...                                    │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2022-0563                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-14104      │          │              │                             │               │ util-linux: util-linux: Heap buffer overread in setpwnam()   │
│                │                     │          │              │                             │               │ when processing 256-byte usernames                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-14104                   │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ liblzma5       │ CVE-2026-34743      │ MEDIUM   │              │ 5.8.1-1                     │               │ xz: XZ Utils: Denial of Service via buffer overflow in index │
│                │                     │          │              │                             │               │ decoding...                                                  │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-34743                   │
├────────────────┼─────────────────────┤          │              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libmount1      │ CVE-2026-27456      │          │              │ 2.41-5                      │               │ util-linux: TOCTOU in the mount program when setting up loop │
│                │                     │          │              │                             │               │ devices                                                      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-27456                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-3184       │          │              │                             │               │ util-linux: util-linux: Access control bypass due to         │
│                │                     │          │              │                             │               │ improper hostname canonicalization                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-3184                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2022-0563       │ LOW      │              │                             │               │ util-linux: partial disclosure of arbitrary files in chfn    │
│                │                     │          │              │                             │               │ and chsh when compiled...                                    │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2022-0563                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-14104      │          │              │                             │               │ util-linux: util-linux: Heap buffer overread in setpwnam()   │
│                │                     │          │              │                             │               │ when processing 256-byte usernames                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-14104                   │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libncursesw6   │ CVE-2025-69720      │ HIGH     │              │ 6.5+20250216-2              │               │ ncurses: ncurses: Buffer overflow vulnerability may lead to  │
│                │                     │          │              │                             │               │ arbitrary code execution.                                    │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-69720                   │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-6141       │ LOW      │              │                             │               │ gnu-ncurses: ncurses Stack Buffer Overflow                   │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-6141                    │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libsmartcols1  │ CVE-2026-27456      │ MEDIUM   │              │ 2.41-5                      │               │ util-linux: TOCTOU in the mount program when setting up loop │
│                │                     │          │              │                             │               │ devices                                                      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-27456                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-3184       │          │              │                             │               │ util-linux: util-linux: Access control bypass due to         │
│                │                     │          │              │                             │               │ improper hostname canonicalization                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-3184                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2022-0563       │ LOW      │              │                             │               │ util-linux: partial disclosure of arbitrary files in chfn    │
│                │                     │          │              │                             │               │ and chsh when compiled...                                    │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2022-0563                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-14104      │          │              │                             │               │ util-linux: util-linux: Heap buffer overread in setpwnam()   │
│                │                     │          │              │                             │               │ when processing 256-byte usernames                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-14104                   │
├────────────────┼─────────────────────┤          │              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libsqlite3-0   │ CVE-2021-45346      │          │              │ 3.46.1-7+deb13u1            │               │ sqlite: crafted SQL query allows a malicious user to obtain  │
│                │                     │          │              │                             │               │ sensitive information...                                     │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2021-45346                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-70873      │          │              │                             │               │ sqlite: SQLite: Information Disclosure via Crafted ZIP File  │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-70873                   │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libsystemd0    │ CVE-2026-29111      │ HIGH     │              │ 257.9-1~deb13u1             │               │ systemd: systemd: Arbitrary code execution or Denial of      │
│                │                     │          │              │                             │               │ Service via spurious IPC...                                  │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-29111                   │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-40225      │ MEDIUM   │              │                             │               │ systemd: udev in systemd: Privilege escalation via malicious │
│                │                     │          │              │                             │               │ hardware devices and unsanitized...                          │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-40225                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-40226      │          │              │                             │               │ systemd: systemd nspawn: Escape-to-host action via crafted   │
│                │                     │          │              │                             │               │ config file                                                  │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-40226                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-4105       │          │              │                             │               │ systemd: systemd: Privilege escalation via improper access   │
│                │                     │          │              │                             │               │ control in RegisterMachine D-Bus method...                   │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-4105                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2013-4392       │ LOW      │              │                             │               │ systemd: TOCTOU race condition when updating file            │
│                │                     │          │              │                             │               │ permissions and SELinux security contexts...                 │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2013-4392                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2023-31437      │          │              │                             │               │ An issue was discovered in systemd 253. An attacker can      │
│                │                     │          │              │                             │               │ modify a...                                                  │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2023-31437                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2023-31438      │          │              │                             │               │ An issue was discovered in systemd 253. An attacker can      │
│                │                     │          │              │                             │               │ truncate a...                                                │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2023-31438                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2023-31439      │          │              │                             │               │ An issue was discovered in systemd 253. An attacker can      │
│                │                     │          │              │                             │               │ modify the...                                                │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2023-31439                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-40228      │          │              │                             │               │ systemd: systemd-journald: Unintended output to user         │
│                │                     │          │              │                             │               │ terminals via logger command                                 │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-40228                   │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libtinfo6      │ CVE-2025-69720      │ HIGH     │              │ 6.5+20250216-2              │               │ ncurses: ncurses: Buffer overflow vulnerability may lead to  │
│                │                     │          │              │                             │               │ arbitrary code execution.                                    │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-69720                   │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-6141       │ LOW      │              │                             │               │ gnu-ncurses: ncurses Stack Buffer Overflow                   │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-6141                    │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libudev1       │ CVE-2026-29111      │ HIGH     │              │ 257.9-1~deb13u1             │               │ systemd: systemd: Arbitrary code execution or Denial of      │
│                │                     │          │              │                             │               │ Service via spurious IPC...                                  │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-29111                   │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-40225      │ MEDIUM   │              │                             │               │ systemd: udev in systemd: Privilege escalation via malicious │
│                │                     │          │              │                             │               │ hardware devices and unsanitized...                          │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-40225                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-40226      │          │              │                             │               │ systemd: systemd nspawn: Escape-to-host action via crafted   │
│                │                     │          │              │                             │               │ config file                                                  │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-40226                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-4105       │          │              │                             │               │ systemd: systemd: Privilege escalation via improper access   │
│                │                     │          │              │                             │               │ control in RegisterMachine D-Bus method...                   │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-4105                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2013-4392       │ LOW      │              │                             │               │ systemd: TOCTOU race condition when updating file            │
│                │                     │          │              │                             │               │ permissions and SELinux security contexts...                 │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2013-4392                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2023-31437      │          │              │                             │               │ An issue was discovered in systemd 253. An attacker can      │
│                │                     │          │              │                             │               │ modify a...                                                  │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2023-31437                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2023-31438      │          │              │                             │               │ An issue was discovered in systemd 253. An attacker can      │
│                │                     │          │              │                             │               │ truncate a...                                                │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2023-31438                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2023-31439      │          │              │                             │               │ An issue was discovered in systemd 253. An attacker can      │
│                │                     │          │              │                             │               │ modify the...                                                │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2023-31439                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-40228      │          │              │                             │               │ systemd: systemd-journald: Unintended output to user         │
│                │                     │          │              │                             │               │ terminals via logger command                                 │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-40228                   │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libuuid1       │ CVE-2026-27456      │ MEDIUM   │              │ 2.41-5                      │               │ util-linux: TOCTOU in the mount program when setting up loop │
│                │                     │          │              │                             │               │ devices                                                      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-27456                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-3184       │          │              │                             │               │ util-linux: util-linux: Access control bypass due to         │
│                │                     │          │              │                             │               │ improper hostname canonicalization                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-3184                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2022-0563       │ LOW      │              │                             │               │ util-linux: partial disclosure of arbitrary files in chfn    │
│                │                     │          │              │                             │               │ and chsh when compiled...                                    │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2022-0563                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-14104      │          │              │                             │               │ util-linux: util-linux: Heap buffer overread in setpwnam()   │
│                │                     │          │              │                             │               │ when processing 256-byte usernames                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-14104                   │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ login          │ CVE-2026-27456      │ MEDIUM   │              │ 1:4.16.0-2+really2.41-5     │               │ util-linux: TOCTOU in the mount program when setting up loop │
│                │                     │          │              │                             │               │ devices                                                      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-27456                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-3184       │          │              │                             │               │ util-linux: util-linux: Access control bypass due to         │
│                │                     │          │              │                             │               │ improper hostname canonicalization                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-3184                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2022-0563       │ LOW      │              │                             │               │ util-linux: partial disclosure of arbitrary files in chfn    │
│                │                     │          │              │                             │               │ and chsh when compiled...                                    │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2022-0563                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-14104      │          │              │                             │               │ util-linux: util-linux: Heap buffer overread in setpwnam()   │
│                │                     │          │              │                             │               │ when processing 256-byte usernames                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-14104                   │
├────────────────┼─────────────────────┤          │              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ login.defs     │ CVE-2007-5686       │          │              │ 1:4.17.4-2                  │               │ initscripts in rPath Linux 1 sets insecure permissions for   │
│                │                     │          │              │                             │               │ the /var/lo ......                                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2007-5686                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2024-56433      │          │              │                             │               │ shadow-utils: Default subordinate ID configuration in        │
│                │                     │          │              │                             │               │ /etc/login.defs could lead to compromise                     │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2024-56433                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ TEMP-0628843-DBAD28 │          │              │                             │               │ [more related to CVE-2005-4890]                              │
│                │                     │          │              │                             │               │ https://security-tracker.debian.org/tracker/TEMP-0628843-DB- │
│                │                     │          │              │                             │               │ AD28                                                         │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ mount          │ CVE-2026-27456      │ MEDIUM   │              │ 2.41-5                      │               │ util-linux: TOCTOU in the mount program when setting up loop │
│                │                     │          │              │                             │               │ devices                                                      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-27456                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-3184       │          │              │                             │               │ util-linux: util-linux: Access control bypass due to         │
│                │                     │          │              │                             │               │ improper hostname canonicalization                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-3184                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2022-0563       │ LOW      │              │                             │               │ util-linux: partial disclosure of arbitrary files in chfn    │
│                │                     │          │              │                             │               │ and chsh when compiled...                                    │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2022-0563                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-14104      │          │              │                             │               │ util-linux: util-linux: Heap buffer overread in setpwnam()   │
│                │                     │          │              │                             │               │ when processing 256-byte usernames                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-14104                   │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ ncurses-base   │ CVE-2025-69720      │ HIGH     │              │ 6.5+20250216-2              │               │ ncurses: ncurses: Buffer overflow vulnerability may lead to  │
│                │                     │          │              │                             │               │ arbitrary code execution.                                    │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-69720                   │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-6141       │ LOW      │              │                             │               │ gnu-ncurses: ncurses Stack Buffer Overflow                   │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-6141                    │
├────────────────┼─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│ ncurses-bin    │ CVE-2025-69720      │ HIGH     │              │                             │               │ ncurses: ncurses: Buffer overflow vulnerability may lead to  │
│                │                     │          │              │                             │               │ arbitrary code execution.                                    │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-69720                   │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-6141       │ LOW      │              │                             │               │ gnu-ncurses: ncurses Stack Buffer Overflow                   │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-6141                    │
├────────────────┼─────────────────────┤          │              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ passwd         │ CVE-2007-5686       │          │              │ 1:4.17.4-2                  │               │ initscripts in rPath Linux 1 sets insecure permissions for   │
│                │                     │          │              │                             │               │ the /var/lo ......                                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2007-5686                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2024-56433      │          │              │                             │               │ shadow-utils: Default subordinate ID configuration in        │
│                │                     │          │              │                             │               │ /etc/login.defs could lead to compromise                     │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2024-56433                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ TEMP-0628843-DBAD28 │          │              │                             │               │ [more related to CVE-2005-4890]                              │
│                │                     │          │              │                             │               │ https://security-tracker.debian.org/tracker/TEMP-0628843-DB- │
│                │                     │          │              │                             │               │ AD28                                                         │
├────────────────┼─────────────────────┤          │              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ perl-base      │ CVE-2011-4116       │          │              │ 5.40.1-6                    │               │ perl: File:: Temp insecure temporary file handling           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2011-4116                    │
├────────────────┼─────────────────────┤          │              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ sed            │ CVE-2026-5958       │          │              │ 4.9-2                       │               │ When sed is invoked with both -i (in-place edit) and         │
│                │                     │          │              │                             │               │ --follow-symlinks ......                                     │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-5958                    │
├────────────────┼─────────────────────┤          │              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ sysvinit-utils │ TEMP-0517018-A83CE6 │          │              │ 3.14-4                      │               │ [sysvinit: no-root option in expert installer exposes        │
│                │                     │          │              │                             │               │ locally exploitable security flaw]                           │
│                │                     │          │              │                             │               │ https://security-tracker.debian.org/tracker/TEMP-0517018-A8- │
│                │                     │          │              │                             │               │ 3CE6                                                         │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ tar            │ CVE-2026-5704       │ MEDIUM   │              │ 1.35+dfsg-3.1               │               │ tar: tar: Hidden file injection via crafted archives         │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-5704                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2005-2541       │ LOW      │              │                             │               │ tar: does not properly warn the user when extracting setuid  │
│                │                     │          │              │                             │               │ or setgid...                                                 │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2005-2541                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ TEMP-0290435-0B57B5 │          │              │                             │               │ [tar's rmt command may have undesired side effects]          │
│                │                     │          │              │                             │               │ https://security-tracker.debian.org/tracker/TEMP-0290435-0B- │
│                │                     │          │              │                             │               │ 57B5                                                         │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ util-linux     │ CVE-2026-27456      │ MEDIUM   │              │ 2.41-5                      │               │ util-linux: TOCTOU in the mount program when setting up loop │
│                │                     │          │              │                             │               │ devices                                                      │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-27456                   │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2026-3184       │          │              │                             │               │ util-linux: util-linux: Access control bypass due to         │
│                │                     │          │              │                             │               │ improper hostname canonicalization                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-3184                    │
│                ├─────────────────────┼──────────┤              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2022-0563       │ LOW      │              │                             │               │ util-linux: partial disclosure of arbitrary files in chfn    │
│                │                     │          │              │                             │               │ and chsh when compiled...                                    │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2022-0563                    │
│                ├─────────────────────┤          │              │                             ├───────────────┼──────────────────────────────────────────────────────────────┤
│                │ CVE-2025-14104      │          │              │                             │               │ util-linux: util-linux: Heap buffer overread in setpwnam()   │
│                │                     │          │              │                             │               │ when processing 256-byte usernames                           │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2025-14104                   │
├────────────────┼─────────────────────┼──────────┤              ├─────────────────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ zlib1g         │ CVE-2026-27171      │ MEDIUM   │              │ 1:1.3.dfsg+really1.3.1-1+b1 │               │ zlib: zlib: Denial of Service via infinite loop in CRC32     │
│                │                     │          │              │                             │               │ combine functions...                                         │
│                │                     │          │              │                             │               │ https://avd.aquasec.com/nvd/cve-2026-27171                   │
└────────────────┴─────────────────────┴──────────┴──────────────┴─────────────────────────────┴───────────────┴──────────────────────────────────────────────────────────────┘

Python (python-pkg)
===================
Total: 20 (UNKNOWN: 0, LOW: 2, MEDIUM: 13, HIGH: 5, CRITICAL: 0)

┌─────────────────────┬────────────────┬──────────┬──────────┬───────────────────┬───────────────┬──────────────────────────────────────────────────────────────┐
│       Library       │ Vulnerability  │ Severity │  Status  │ Installed Version │ Fixed Version │                            Title                             │
├─────────────────────┼────────────────┼──────────┼──────────┼───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ Flask (METADATA)    │ CVE-2026-27205 │ LOW      │ fixed    │ 2.2.5             │ 3.1.3         │ flask: Flask: Information disclosure via improper caching of │
│                     │                │          │          │                   │               │ session data                                                 │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2026-27205                   │
├─────────────────────┼────────────────┼──────────┤          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ PyJWT (METADATA)    │ CVE-2026-32597 │ HIGH     │          │ 2.4.0             │ 2.12.0        │ pyjwt: PyJWT accepts unknown `crit` header extensions (RFC   │
│                     │                │          │          │                   │               │ 7515 §4.1.11 MUST violation)...                              │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2026-32597                   │
├─────────────────────┼────────────────┤          │          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ Werkzeug (METADATA) │ CVE-2024-34069 │          │          │ 2.2.3             │ 3.0.3         │ python-werkzeug: user may execute code on a developer's      │
│                     │                │          │          │                   │               │ machine                                                      │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-34069                   │
│                     ├────────────────┼──────────┤          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                     │ CVE-2023-46136 │ MEDIUM   │          │                   │ 3.0.1, 2.3.8  │ python-werkzeug: high resource consumption leading to denial │
│                     │                │          │          │                   │               │ of service                                                   │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2023-46136                   │
│                     ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                     │ CVE-2024-49766 │          │          │                   │ 3.0.6         │ werkzeug: python-werkzeug: Werkzeug safe_join not safe on    │
│                     │                │          │          │                   │               │ Windows                                                      │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-49766                   │
│                     ├────────────────┤          │          │                   │               ├──────────────────────────────────────────────────────────────┤
│                     │ CVE-2024-49767 │          │          │                   │               │ werkzeug: python-werkzeug: Werkzeug possible resource        │
│                     │                │          │          │                   │               │ exhaustion when parsing file data in forms...                │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-49767                   │
│                     ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                     │ CVE-2025-66221 │          │          │                   │ 3.1.4         │ Werkzeug: Werkzeug: Denial of service via Windows device     │
│                     │                │          │          │                   │               │ names in path segments...                                    │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2025-66221                   │
│                     ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                     │ CVE-2026-21860 │          │          │                   │ 3.1.5         │ Werkzeug safe_join() allows Windows special device names     │
│                     │                │          │          │                   │               │ with compound extensions                                     │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2026-21860                   │
│                     ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                     │ CVE-2026-27199 │          │          │                   │ 3.1.6         │ Werkzeug safe_join() allows Windows special device names     │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2026-27199                   │
├─────────────────────┼────────────────┤          │          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ pip (METADATA)      │ CVE-2025-8869  │          │          │ 25.0.1            │ 25.3          │ pip: pip missing checks on symbolic link extraction          │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2025-8869                    │
│                     ├────────────────┤          ├──────────┤                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                     │ CVE-2026-3219  │          │ affected │                   │               │ pip: pip: Incorrect file installation due to improper        │
│                     │                │          │          │                   │               │ archive handling                                             │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2026-3219                    │
│                     ├────────────────┼──────────┼──────────┤                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                     │ CVE-2026-1703  │ LOW      │ fixed    │                   │ 26.0          │ pip: pip: Information disclosure via path traversal when     │
│                     │                │          │          │                   │               │ installing crafted wheel archives...                         │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2026-1703                    │
├─────────────────────┼────────────────┼──────────┤          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ requests (METADATA) │ CVE-2023-32681 │ MEDIUM   │          │ 2.28.1            │ 2.31.0        │ python-requests: Unintended leak of Proxy-Authorization      │
│                     │                │          │          │                   │               │ header                                                       │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2023-32681                   │
│                     ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                     │ CVE-2024-35195 │          │          │                   │ 2.32.0        │ requests: subsequent requests to the same host ignore cert   │
│                     │                │          │          │                   │               │ verification                                                 │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-35195                   │
│                     ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                     │ CVE-2024-47081 │          │          │                   │ 2.32.4        │ requests: Requests vulnerable to .netrc credentials leak via │
│                     │                │          │          │                   │               │ malicious URLs                                               │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-47081                   │
│                     ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                     │ CVE-2026-25645 │          │          │                   │ 2.33.0        │ requests: Requests: Security bypass due to predictable       │
│                     │                │          │          │                   │               │ temporary file creation                                      │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2026-25645                   │
├─────────────────────┼────────────────┼──────────┤          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ urllib3 (METADATA)  │ CVE-2025-66418 │ HIGH     │          │ 1.26.20           │ 2.6.0         │ urllib3: urllib3: Unbounded decompression chain leads to     │
│                     │                │          │          │                   │               │ resource exhaustion                                          │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2025-66418                   │
│                     ├────────────────┤          │          │                   │               ├──────────────────────────────────────────────────────────────┤
│                     │ CVE-2025-66471 │          │          │                   │               │ urllib3: urllib3 Streaming API improperly handles highly     │
│                     │                │          │          │                   │               │ compressed data                                              │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2025-66471                   │
│                     ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                     │ CVE-2026-21441 │          │          │                   │ 2.6.3         │ urllib3: urllib3 vulnerable to decompression-bomb safeguard  │
│                     │                │          │          │                   │               │ bypass when following HTTP redirects (streaming...           │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2026-21441                   │
│                     ├────────────────┼──────────┤          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                     │ CVE-2025-50181 │ MEDIUM   │          │                   │ 2.5.0         │ urllib3: urllib3 redirects are not disabled when retries are │
│                     │                │          │          │                   │               │ disabled on PoolManager...                                   │
│                     │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2025-50181                   │
└─────────────────────┴────────────────┴──────────┴──────────┴───────────────────┴───────────────┴──────────────────────────────────────────────────────────────┘
