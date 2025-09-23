{"app_name":"IntelligencePlatformComputeService","timestamp":"2025-07-01 01:30:30.00 +0200","app_version":"1.0","slice_uuid":"F00E5713-3216-39BC-AFD0-508E701C3A3E","build_version":"195","bundleID":"com.apple.intelligenceplatform.IntelligencePlatformComputeService","duration_ms":"51680829","share_with_app_devs":1,"is_first_party":0,"bug_type":"145","os_version":"iPhone OS 26.0 (23A5276f)","roots_installed":0,"name":"IntelligencePlatformComputeService","incident_id":"F2ADCFAE-E41A-46EC-8986-B11A5BEF4FA4"}
Date/Time:        2025-06-30 11:09:04.038 +0200
End time:         2025-07-01 01:30:24.867 +0200
OS Version:       iPhone OS 26.0 (Build 23A5276f)
Architecture:     arm64e
Report Version:   65
Incident Identifier: F2ADCFAE-E41A-46EC-8986-B11A5BEF4FA4
Share With Devs:  Yes

Data Source:      Microstackshots
Shared Cache:     BE221ED3-3A82-3E6B-ABFE-398B0EA9B103 slid base address 0x193fb4000, slide 0x13fb4000

Command:          IntelligencePlatformComputeService
Path:             /System/Library/PrivateFrameworks/IntelligencePlatformCompute.framework/XPCServices/IntelligencePlatformComputeService.xpc/IntelligencePlatformComputeService
Identifier:       com.apple.intelligenceplatform.IntelligencePlatformComputeService
Version:          1.0 (195)
Resource Coalition: 47
Architecture:     arm64
PID:              15571

Event:            disk writes
Action taken:     none
Writes:           1073.75 MB of file backed memory dirtied over 51681 seconds (20.78 KB per second average), exceeding limit of 12.43 KB per second over 86400 seconds
Writes limit:     1073.74 MB
Limit duration:   86400s
Writes caused:    1073.75 MB
Writes duration:  51681s
Duration:         51680.83s
Duration Sampled: 51679.61s (event starts 1.21s before samples)
Steps:            4401 (10 gigacycles/step, 30 samples lost, 10.49 MB/step)

Hardware model:   iPhone12,3
Active cpus:      6
Memory size:      3.68 GB
HW page size:     16384
VM page size:     16384

Models:           UNKNOWN

OS Cryptex File Extents: 10231

Heaviest stack for the target process:
  2  ??? (libswift_Concurrency.dylib + 448348) [0x1a34ea75c]
  2  ??? (IntelligencePlatformCore + 444124) [0x1debc36dc]
  2  ??? (IntelligencePlatformCore + 239468) [0x1deb9176c]
  2  ??? (IntelligencePlatformCore + 239244) [0x1deb9168c]
  2  ??? (IntelligencePlatformCore + 8972088) [0x1df3e5738]
  2  ??? (IntelligencePlatformCore + 444124) [0x1debc36dc]
  2  ??? (IntelligencePlatformCore + 8976768) [0x1df3e6980]
  2  ??? (IntelligencePlatformCore + 339568) [0x1deba9e70]
  2  ??? (IntelligencePlatformCore + 334736) [0x1deba8b90]
  2  ??? (IntelligencePlatformCore + 333724) [0x1deba879c]
  2  ??? (BiomeStreams + 1361264) [0x1a37f4570]
  2  ??? (IntelligencePlatformLibrary + 16620) [0x275e270ec]
  2  ??? (IntelligencePlatformLibrary + 16644) [0x275e27104]
  1  ??? (IntelligencePlatformLibrary + 9892) [0x275e256a4]
  1  ??? (IntelligencePlatformLibrary + 13160) [0x275e26368]
  1  ??? (BiomeStreams + 1369932) [0x1a37f674c]
  1  ??? (BiomeStreams + 25540) [0x1a36ae3c4]
  1  ??? (BiomeStreams + 1366668) [0x1a37f5a8c]
  1  ??? (libsqlite3.dylib + 33036) [0x1c841010c]
  1  ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
  1  ??? (libsqlite3.dylib + 233516) [0x1c844102c]
  1  ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
  1  ??? (libsqlite3.dylib + 259440) [0x1c8447570]
  1  ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
  1  ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
  1  ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
  1  ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
  1  ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]


Powerstats for:   IntelligencePlatformComputeService (IntelligencePlatformComputeService) [15571]
UUID:             F00E5713-3216-39BC-AFD0-508E701C3A3E
Path:             /System/Library/PrivateFrameworks/IntelligencePlatformCompute.framework/XPCServices/IntelligencePlatformComputeService.xpc/IntelligencePlatformComputeService
Identifier:       com.apple.intelligenceplatform.IntelligencePlatformComputeService
Version:          1.0 (195)
Resource Coalition: 2 samples 47
Architecture:     arm64
Sudden Term:      Tracked (allows idle exit)
Footprint:        12.03 MB -> 14.72 MB (+2752 KB)
Pageins:          942 pages
Start time:       2025-07-01 01:16:32.926 +0200
End time:         2025-07-01 01:30:24.858 +0200
Num samples:      2 (0%)
Num threads:      2
Primary state:    2 samples Non-Frontmost App, Non-Suppressed, Kernel mode, Effective Thread QoS Background, Requested Thread QoS Background, Override Thread QoS Unspecified, e-core
User Activity:    2 samples Idle, 0 samples Active
Power Source:     0 samples on Battery, 2 samples on AC
  2  ??? (libswift_Concurrency.dylib + 448348) [0x1a34ea75c]
    2  ??? (IntelligencePlatformCore + 444124) [0x1debc36dc]
      2  ??? (IntelligencePlatformCore + 239468) [0x1deb9176c]
        2  ??? (IntelligencePlatformCore + 239244) [0x1deb9168c]
          2  ??? (IntelligencePlatformCore + 8972088) [0x1df3e5738]
            2  ??? (IntelligencePlatformCore + 444124) [0x1debc36dc]
              2  ??? (IntelligencePlatformCore + 8976768) [0x1df3e6980]
                2  ??? (IntelligencePlatformCore + 339568) [0x1deba9e70]
                  2  ??? (IntelligencePlatformCore + 334736) [0x1deba8b90]
                    2  ??? (IntelligencePlatformCore + 333724) [0x1deba879c]
                      2  ??? (BiomeStreams + 1361264) [0x1a37f4570]
                        2  ??? (IntelligencePlatformLibrary + 16620) [0x275e270ec]
                          2  ??? (IntelligencePlatformLibrary + 16644) [0x275e27104]
                            1  ??? (IntelligencePlatformLibrary + 9892) [0x275e256a4]
                              1  ??? (IntelligencePlatformLibrary + 13160) [0x275e26368]
                                1  ??? (BiomeStreams + 1369932) [0x1a37f674c]
                                  1  ??? (BiomeStreams + 25540) [0x1a36ae3c4]
                                    1  ??? (BiomeStreams + 1366668) [0x1a37f5a8c]
                                      1  ??? (libsqlite3.dylib + 33036) [0x1c841010c]
                                        1  ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                          1  ??? (libsqlite3.dylib + 233516) [0x1c844102c]
                                            1  ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                              1  ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                1  ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                  1  ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                    1  ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                      1  ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                        1  ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                            1  ??? (IntelligencePlatformLibrary + 9840) [0x275e25670]
                              1  ??? (IntelligencePlatformLibrary + 12660) [0x275e26174]
                                1  ??? (BiomeStreams + 1369932) [0x1a37f674c]
                                  1  ??? (BiomeStreams + 25540) [0x1a36ae3c4]
                                    1  ??? (BiomeStreams + 1366668) [0x1a37f5a8c]
                                      1  ??? (libsqlite3.dylib + 33036) [0x1c841010c]
                                        1  ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                          1  ??? (libsqlite3.dylib + 233516) [0x1c844102c]
                                            1  ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                              1  ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                1  ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                  1  ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                    1  ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                      1  ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                        1  ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]

  Binary Images:
           0x100540000 -                ???  com.apple.intelligenceplatform.IntelligencePlatformComputeService 1.0 (195) <F00E5713-3216-39BC-AFD0-508E701C3A3E>  /System/Library/PrivateFrameworks/IntelligencePlatformCompute.framework/XPCServices/IntelligencePlatformComputeService.xpc/IntelligencePlatformComputeService
           0x1a347d000 -        0x1a350737f  libswift_Concurrency.dylib                                                  <1F17709C-929D-397C-A965-EF901EFEE2E7>  /usr/lib/swift/libswift_Concurrency.dylib
           0x1a36a8000 -        0x1a3c33c9f  BiomeStreams                                                                <AE2A4D12-3117-387F-973E-98536B337C09>  /System/Library/PrivateFrameworks/BiomeStreams.framework/BiomeStreams
           0x1c8408000 -        0x1c85b157b  libsqlite3.dylib                                                            <43AB2CB4-806E-3E39-ABA8-A07D47AE2349>  /usr/lib/libsqlite3.dylib
           0x1deb57000 -        0x1df839adf  IntelligencePlatformCore                                                    <18B01D02-1664-360F-AE47-B3B8AC315DD5>  /System/Library/PrivateFrameworks/IntelligencePlatformCore.framework/IntelligencePlatformCore
           0x1ec329000 -        0x1ec363f5f  libsystem_kernel.dylib                                                      <DDB32429-91E9-39F6-9665-3CC1F44502AD>  /usr/lib/system/libsystem_kernel.dylib
           0x275e23000 -        0x27642ac7f  IntelligencePlatformLibrary                                                 <75AADD32-449E-3B25-B1CC-93C627A10D7F>  /System/Library/PrivateFrameworks/IntelligencePlatformLibrary.framework/IntelligencePlatformLibrary


Powerstats for:   STExtractionService
UUID:             68F09E74-0634-383F-8C81-393E3F468E9E
Path:             /System/Library/PrivateFrameworks/StreamingExtractor.framework/XPCServices/STExtractionService.xpc/STExtractionService
Identifier:       com.apple.STExtractionService
Version:          1.0 (1)
Resource Coalition: 410 samples 233
On Behalf Of:     410 samples nsurlsessiond [149, 12093] (410 samples originated by nsurlsessiond [149, 12093])
Architecture:     arm64
Start time:       2025-06-30 11:22:05.772 +0200
End time:         2025-06-30 23:20:36.316 +0200
Num samples:      410 (9%)
Primary state:    283 samples Non-Frontmost App, Non-Suppressed, Kernel mode, Effective Thread QoS User Initiated, Requested Thread QoS User Initiated, Override Thread QoS Unspecified, e-core
User Activity:    339 samples Idle, 71 samples Active
Power Source:     410 samples on Battery, 0 samples on AC
  410  ??? (libsystem_pthread.dylib + 2732) [0x2266beaac]
    410  ??? (libsystem_pthread.dylib + 2572) [0x2266bea0c]
      410  ??? (libdispatch.dylib + 85188) [0x19f665cc4]
        410  ??? (libdispatch.dylib + 86988) [0x19f6663cc]
          410  ??? (libdispatch.dylib + 44836) [0x19f65bf24]
            410  ??? (libdispatch.dylib + 42056) [0x19f65b448]
              410  ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                410  ??? (libdispatch.dylib + 6844) [0x19f652abc]
                  409  ??? (STExtractionService + 12112) [0x1000c2f50]
                    409  ??? (<37F4702D-5035-308D-9F89-DB346C7275D8> + 9964) [0x1037566ec]
                      409  ??? (Foundation + 9531800) [0x196163198]
                        409  ??? (<37F4702D-5035-308D-9F89-DB346C7275D8> + 10796) [0x103756a2c]
                          409  ??? (libAppleArchive.dylib + 105856) [0x22e9b5d80]
                            409  ??? (libAppleArchive.dylib + 376344) [0x22e9f7e18]
                              409  ??? (libAppleArchive.dylib + 96972) [0x22e9b3acc]
                                409  ??? (libAppleArchive.dylib + 257648) [0x22e9dae70]
                                  285  ??? (libAppleArchive.dylib + 97692) [0x22e9b3d9c]
                                    160  ??? (libAppleArchive.dylib + 297092) [0x22e9e4884]
                                      160  ??? (libAppleArchive.dylib + 46200) [0x22e9a7478]
                                        150  ??? (libAppleArchive.dylib + 504500) [0x22ea172b4]
                                          150  ??? (libsystem_kernel.dylib + 31744) [0x1ec330c00]
                                            99   <on behalf of nsurlsessiond [149] (originated by nsurlsessiond [149])>
                                            51   <on behalf of nsurlsessiond [149] (originated by nsurlsessiond [149]), Effective Thread QoS Default, Requested Thread QoS Default>
                                        10   ??? (libAppleArchive.dylib + 504768) [0x22ea173c0]
                                          10   ??? (libsystem_kernel.dylib + 31744) [0x1ec330c00]
                                            6    <on behalf of nsurlsessiond [149] (originated by nsurlsessiond [149]), Effective Thread QoS Default, Requested Thread QoS Default>
                                            2    <on behalf of nsurlsessiond [149] (originated by nsurlsessiond [149])>
                                            2    <on behalf of nsurlsessiond [12093] (originated by nsurlsessiond [12093])>
                                    125  ??? (libAppleArchive.dylib + 297740) [0x22e9e4b0c]
                                      125  ??? (libAppleArchive.dylib + 301204) [0x22e9e5894]
                                        125  ??? (libAppleArchive.dylib + 49068) [0x22e9a7fac]
                                          125  ??? (libAppleArchive.dylib + 49172) [0x22e9a8014]
                                            125  ??? (libAppleArchive.dylib + 49068) [0x22e9a7fac]
                                              125  ??? (libAppleArchive.dylib + 503940) [0x22ea17084]
                                                125  ??? (libsystem_kernel.dylib + 28424) [0x1ec32ff08]
                                                  91   <on behalf of nsurlsessiond [149] (originated by nsurlsessiond [149])>
                                                  34   <on behalf of nsurlsessiond [149] (originated by nsurlsessiond [149]), Effective Thread QoS Default, Requested Thread QoS Default>
                                  124  ??? (libAppleArchive.dylib + 98580) [0x22e9b4114]
                                    123  ??? (libAppleArchive.dylib + 296204) [0x22e9e450c]
                                      123  ??? (libAppleArchive.dylib + 298616) [0x22e9e4e78]
                                        123  ??? (libAppleArchive.dylib + 397160) [0x22e9fcf68]
                                          119  ??? (libAppleArchive.dylib + 266152) [0x22e9dcfa8]
                                            119  ??? (libAppleArchive.dylib + 261996) [0x22e9dbf6c]
                                              119  ??? (libsystem_kernel.dylib + 31744) [0x1ec330c00]
                                                86   <on behalf of nsurlsessiond [149] (originated by nsurlsessiond [149])>
                                                33   <on behalf of nsurlsessiond [149] (originated by nsurlsessiond [149]), Effective Thread QoS Default, Requested Thread QoS Default>
                                          3    ??? (libAppleArchive.dylib + 267096) [0x22e9dd358]
                                            3    ??? (libAppleArchive.dylib + 262808) [0x22e9dc298]
                                              3    ??? (libsystem_kernel.dylib + 31744) [0x1ec330c00]
                                                2    <on behalf of nsurlsessiond [149] (originated by nsurlsessiond [149]), Effective Thread QoS Default, Requested Thread QoS Default>
                                                1    <on behalf of nsurlsessiond [149] (originated by nsurlsessiond [149])>
                                          1    ??? (libAppleArchive.dylib + 267156) [0x22e9dd394]
                                            1    ??? (libsystem_kernel.dylib + 21664) [0x1ec32e4a0]
                                              1    <on behalf of nsurlsessiond [149] (originated by nsurlsessiond [149])>
                                    1    ??? (libAppleArchive.dylib + 296132) [0x22e9e44c4]
                                      1    ??? (libAppleArchive.dylib + 47324) [0x22e9a78dc]
                                        1    ??? (libsystem_kernel.dylib + 26776) [0x1ec32f898]
                                          1    <on behalf of nsurlsessiond [149] (originated by nsurlsessiond [149]), Effective Thread QoS Default, Requested Thread QoS Default>
                  1    ??? (STExtractionService + 12580) [0x1000c3124]
                    1    ??? (<37F4702D-5035-308D-9F89-DB346C7275D8> + 11632) [0x103756d70]
                      1    ??? (libAppleArchive.dylib + 105272) [0x22e9b5b38]
                        1    ??? (libAppleArchive.dylib + 96548) [0x22e9b3924]
                          1    ??? (libAppleArchive.dylib + 256528) [0x22e9daa10]
                            1    ??? (libsystem_kernel.dylib + 20516) [0x1ec32e024]
                              1    <on behalf of nsurlsessiond [149] (originated by nsurlsessiond [149])>

  Binary Images:
           0x1000c0000 -                ???  com.apple.STExtractionService 1.0 (1) <68F09E74-0634-383F-8C81-393E3F468E9E>  /System/Library/PrivateFrameworks/StreamingExtractor.framework/XPCServices/STExtractionService.xpc/STExtractionService
           0x103754000 -                ???  ???                                   <37F4702D-5035-308D-9F89-DB346C7275D8>
           0x19584c000 -        0x1966bfe1f  Foundation                            <6C918DA7-AD82-3699-99AB-30DF73088BB5>  /System/Library/Frameworks/Foundation.framework/Foundation
           0x19f651000 -        0x19f69721f  libdispatch.dylib                     <C4A46C83-ED82-3F9A-B1FE-0EB48C7A4F18>  /usr/lib/system/libdispatch.dylib
           0x1ec329000 -        0x1ec363f5f  libsystem_kernel.dylib                <DDB32429-91E9-39F6-9665-3CC1F44502AD>  /usr/lib/system/libsystem_kernel.dylib
           0x2266be000 -        0x2266ca3f3  libsystem_pthread.dylib               <65C2B5C0-EDD7-3F41-9B47-F95ABAFF89DB>  /usr/lib/system/libsystem_pthread.dylib
           0x22e99c000 -        0x22ea33faf  libAppleArchive.dylib                 <B127EF6A-1138-3D47-BEA2-A41D3D82B32D>  /usr/lib/libAppleArchive.dylib


Powerstats for:   searchd
UUID:             736B5664-4F0E-3070-A2CF-33DAD71346B8
Path:             /System/Library/PrivateFrameworks/Search.framework/searchd
Resource Coalition: 380 samples 413
On Behalf Of:     81 samples UNKNOWN [244, 708, 877, 4095, 12032, 12863, 12999, 13308, 13579, 14919] (78 samples originated by UNKNOWN [244, 708, 4095, 12032, 12863, 13579, 14919], 2 samples originated by CommCenter [104], 1 sample originated by Preferences (Settings) [13030]), 41 samples spotlightknowledged [11930] (41 samples originated by UNKNOWN [34]), 23 samples fileproviderd [11913, 14357, 14405] (23 samples originated by fileproviderd [11913, 14357, 14405]), 22 samples Developer [3824, 15693] (22 samples originated by Developer [3824, 15693]), 12 samples maild [303, 5059, 10674] (12 samples originated by maild [303, 5059, 10674]), 12 samples Preferences (Settings) [13030, 13595, 15237] (12 samples originated by Preferences (Settings) [13030, 13595, 15237]), 10 samples Chrome [3989, 14471] (10 samples originated by Chrome [3989, 14471]), 4 samples biomed [55, 7783] (4 samples originated by SpringBoard [37]), 4 samples Outlook-iOS (Outlook) [3083, 14331, 14795] (4 samples originated by Outlook-iOS (Outlook) [3083, 14331, 14795]), 2 samples assetsd [13000] (2 samples originated by dasd [15924]), 1 sample CallHistorySyncHelper [2958] (1 sample originated by UNKNOWN [872]), 1 sample MobileSafari [13787] (1 sample originated by MobileSafari [13787])
Architecture:     arm64
Start time:       2025-06-30 11:15:55.701 +0200
End time:         2025-07-01 01:21:39.817 +0200
Num samples:      380 (9%)
Primary state:    323 samples Non-Frontmost App, Non-Suppressed, Kernel mode, Effective Thread QoS Background, Requested Thread QoS Background, Override Thread QoS Unspecified, e-core
User Activity:    74 samples Idle, 306 samples Active
Power Source:     191 samples on Battery, 189 samples on AC
  380  ??? (libsystem_pthread.dylib + 2732) [0x2266beaac]
    350  ??? (libsystem_pthread.dylib + 2512) [0x2266be9d0]
      350  ??? (libdispatch.dylib + 83676) [0x19f6656dc]
        334  ??? (libdispatch.dylib + 81704) [0x19f664f28]
          318  ??? (libdispatch.dylib + 23736) [0x19f656cb8]
            318  ??? (libdispatch.dylib + 25792) [0x19f6574c0]
              318  ??? (libdispatch.dylib + 44888) [0x19f65bf58]
                318  ??? (libdispatch.dylib + 41648) [0x19f65b2b0]
                  318  ??? (libdispatch.dylib + 44888) [0x19f65bf58]
                    318  ??? (libdispatch.dylib + 42056) [0x19f65b448]
                      318  ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                        318  ??? (libdispatch.dylib + 70704) [0x19f662430]
                          250  ??? (MobileSpotlightIndex + 10120) [0x1d548a788]
                            250  ??? (MobileSpotlightIndex + 1897532) [0x1d565743c]
                              250  ??? (MobileSpotlightIndex + 8784) [0x1d548a250]
                                134  ??? (MobileSpotlightIndex + 317864) [0x1d54d59a8]
                                  106  ??? (MobileSpotlightIndex + 813412) [0x1d554e964]
                                    47   ??? (MobileSpotlightIndex + 837076) [0x1d55545d4]
                                      39   ??? (MobileSpotlightIndex + 839768) [0x1d5555058]
                                        39   ??? (MobileSpotlightIndex + 848496) [0x1d5557270]
                                          19   ??? (MobileSpotlightIndex + 2151264) [0x1d5695360]
                                            11   ??? (MobileSpotlightIndex + 2041016) [0x1d567a4b8]
                                              5    ??? (libsystem_platform.dylib + 3408) [0x22660bd50]
                                                1    <on behalf of UNKNOWN [708] (originated by UNKNOWN [708])>
                                              3    ??? (libsystem_platform.dylib + 3336) [0x22660bd08]
                                                1    <Override Thread QoS User Initiated>
                                              2    ??? (libsystem_platform.dylib + 3320) [0x22660bcf8]
                                              1    ??? (libsystem_platform.dylib + 3424) [0x22660bd60]
                                            8    ??? (MobileSpotlightIndex + 2040864) [0x1d567a420]
                                              8    ??? (MobileSpotlightIndex + 2041124) [0x1d567a524]
                                                8    ??? (MobileSpotlightIndex + 2041788) [0x1d567a7bc]
                                                  4    ??? (MobileSpotlightIndex + 2041788) [0x1d567a7bc]
                                                    3    ??? (MobileSpotlightIndex + 2041788) [0x1d567a7bc]
                                                      3    ??? (MobileSpotlightIndex + 2042348) [0x1d567a9ec]
                                                        2    ??? (libsystem_platform.dylib + 3408) [0x22660bd50]
                                                        1    ??? (libsystem_platform.dylib + 3424) [0x22660bd60]
                                                    1    ??? (MobileSpotlightIndex + 2041984) [0x1d567a880]
                                                      1    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                        1    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                          1    ??? (MobileSpotlightIndex + 2043764) [0x1d567af74]
                                                            1    ??? (libsystem_platform.dylib + 3408) [0x22660bd50]
                                                  2    ??? (MobileSpotlightIndex + 2041984) [0x1d567a880]
                                                    2    ??? (MobileSpotlightIndex + 2043764) [0x1d567af74]
                                                      2    ??? (libsystem_platform.dylib + 3336) [0x22660bd08]
                                                  2    ??? (MobileSpotlightIndex + 2042348) [0x1d567a9ec]
                                                    1    ??? (libsystem_platform.dylib + 3336) [0x22660bd08]
                                                    1    ??? (MobileSpotlightIndex + 2126084) [0x1d568f104]
                                                      1    ??? (MobileSpotlightIndex + 2134752) [0x1d56912e0]
                                                        1    ??? (libsystem_platform.dylib + 2888) [0x22660bb48]
                                          13   ??? (MobileSpotlightIndex + 2153784) [0x1d5695d38]
                                            11   ??? (MobileSpotlightIndex + 2233076) [0x1d56a92f4]
                                              1    <Override Thread QoS Background>
                                            1    ??? (MobileSpotlightIndex + 2232860) [0x1d56a921c]
                                              1    ??? (MobileSpotlightIndex + 2229048) [0x1d56a8338]
                                                1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                            1    ??? (MobileSpotlightIndex + 2232740) [0x1d56a91a4]
                                              1    ??? (MobileSpotlightIndex + 2229352) [0x1d56a8468]
                                                1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                  1    <on behalf of fileproviderd [14357] (originated by fileproviderd [14357])>
                                          4    ??? (MobileSpotlightIndex + 2154268) [0x1d5695f1c]
                                            3    ??? (MobileSpotlightIndex + 2050424) [0x1d567c978]
                                              1    <Override Thread QoS Background>
                                            1    ??? (MobileSpotlightIndex + 2050640) [0x1d567ca50]
                                              1    ??? (MobileSpotlightIndex + 2052528) [0x1d567d1b0]
                                                1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                          1    ??? (libsystem_kernel.dylib + 33820) [0x1ec33141c]
                                            1    <Override Thread QoS Background>
                                          1    ??? (MobileSpotlightIndex + 2155128) [0x1d5696278]
                                            1    ??? (MobileSpotlightIndex + 2159636) [0x1d5697414]
                                              1    ??? (MobileSpotlightIndex + 609848) [0x1d551ce38]
                                                1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                          1    ??? (MobileSpotlightIndex + 2148656) [0x1d5694930]
                                      6    ??? (MobileSpotlightIndex + 840036) [0x1d5555164]
                                        6    ??? (MobileSpotlightIndex + 828348) [0x1d55523bc]
                                          5    ??? (MobileSpotlightIndex + 592804) [0x1d5518ba4]
                                            5    ??? (MobileSpotlightIndex + 606608) [0x1d551c190]
                                              5    ??? (libsystem_kernel.dylib + 33820) [0x1ec33141c]
                                                1    <on behalf of spotlightknowledged [11930] (originated by UNKNOWN [34]), Override Thread QoS Background>
                                                1    <Override Thread QoS Background>
                                                1    <on behalf of Chrome [3989] (originated by Chrome [3989])>
                                          1    ??? (MobileSpotlightIndex + 592196) [0x1d5518944]
                                            1    ??? (MobileSpotlightIndex + 597920) [0x1d5519fa0]
                                              1    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                  1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                      2    ??? (MobileSpotlightIndex + 840320) [0x1d5555280]
                                        2    ??? (MobileSpotlightIndex + 849924) [0x1d5557804]
                                          1    ??? (MobileSpotlightIndex + 2201644) [0x1d56a182c]
                                            1    ??? (MobileSpotlightIndex + 2027364) [0x1d5676f64]
                                              1    ??? (MobileSpotlightIndex + 2290588) [0x1d56b739c]
                                                1    ??? (MobileSpotlightIndex + 31060) [0x1d548f954]
                                                  1    ??? (libsystem_kernel.dylib + 34464) [0x1ec3316a0]
                                          1    ??? (MobileSpotlightIndex + 2201268) [0x1d56a16b4]
                                            1    ??? (MobileSpotlightIndex + 2343380) [0x1d56c41d4]
                                              1    ??? (MobileSpotlightIndex + 2290588) [0x1d56b739c]
                                                1    ??? (MobileSpotlightIndex + 31060) [0x1d548f954]
                                                  1    ??? (libsystem_kernel.dylib + 34464) [0x1ec3316a0]
                                                    1    <Effective Thread QoS Utility, Override Thread QoS Utility>
                                    28   ??? (MobileSpotlightIndex + 837764) [0x1d5554884]
                                      28   ??? (MobileSpotlightIndex + 851428) [0x1d5557de4]
                                        26   ??? (MobileSpotlightIndex + 2187568) [0x1d569e130]
                                          26   ??? (MobileSpotlightIndex + 4070620) [0x1d5869cdc]
                                            26   ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                              4    <Override Thread QoS Background>
                                              1    <Effective Thread QoS Default, Override Thread QoS Default>
                                              1    <Override Thread QoS User Initiated>
                                        1    ??? (MobileSpotlightIndex + 2188888) [0x1d569e658]
                                          1    ??? (MobileSpotlightIndex + 4070620) [0x1d5869cdc]
                                            1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                        1    ??? (MobileSpotlightIndex + 2187144) [0x1d569df88]
                                          1    ??? (MobileSpotlightIndex + 14900) [0x1d548ba34]
                                            1    ??? (MobileSpotlightIndex + 15920) [0x1d548be30]
                                              1    ??? (MobileSpotlightIndex + 18952) [0x1d548ca08]
                                                1    ??? (MobileSpotlightIndex + 21928) [0x1d548d5a8]
                                                  1    ??? (libsystem_kernel.dylib + 21300) [0x1ec32e334]
                                                    1    <Override Thread QoS Background>
                                    26   ??? (MobileSpotlightIndex + 837792) [0x1d55548a0]
                                      22   ??? (MobileSpotlightIndex + 840884) [0x1d55554b4]
                                        22   ??? (MobileSpotlightIndex + 580300) [0x1d5515acc]
                                          22   ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                            22   ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                              1    <User mode, Override Thread QoS Background>
                                              1    <Override Thread QoS Background>
                                              1    <on behalf of UNKNOWN [244] (originated by UNKNOWN [244]), Effective Thread QoS Default, Override Thread QoS Default>
                                              1    <Effective Thread QoS Default, Override Thread QoS Default>
                                              1    <Override Thread QoS User Initiated>
                                              1    <Effective Thread QoS User Initiated, Override Thread QoS User Initiated>
                                      3    ??? (MobileSpotlightIndex + 841024) [0x1d5555540]
                                        3    ??? (libsystem_kernel.dylib + 43916) [0x1ec333b8c]
                                          1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                      1    ??? (MobileSpotlightIndex + 841004) [0x1d555552c]
                                        1    ??? (MobileSpotlightIndex + 607272) [0x1d551c428]
                                          1    ??? (libsystem_kernel.dylib + 25892) [0x1ec32f524]
                                    3    ??? (MobileSpotlightIndex + 837168) [0x1d5554630]
                                      2    ??? (MobileSpotlightIndex + 824944) [0x1d5551670]
                                        2    ??? (MobileSpotlightIndex + 826916) [0x1d5551e24]
                                          2    ??? (MobileSpotlightIndex + 190152) [0x1d54b66c8]
                                            2    ??? (MobileSpotlightIndex + 190936) [0x1d54b69d8]
                                              1    ??? (MobileSpotlightIndex + 191964) [0x1d54b6ddc]
                                                1    ??? (libsystem_kernel.dylib + 28424) [0x1ec32ff08]
                                                  1    <Override Thread QoS Background>
                                              1    ??? (MobileSpotlightIndex + 191908) [0x1d54b6da4]
                                                1    ??? (MobileSpotlightIndex + 192464) [0x1d54b6fd0]
                                                  1    ??? (libsystem_kernel.dylib + 27212) [0x1ec32fa4c]
                                      1    ??? (MobileSpotlightIndex + 825664) [0x1d5551940]
                                        1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                          1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                            1    <Override Thread QoS Background>
                                    2    ??? (MobileSpotlightIndex + 837620) [0x1d55547f4]
                                      2    ??? (MobileSpotlightIndex + 842392) [0x1d5555a98]
                                        2    ??? (MobileSpotlightIndex + 612832) [0x1d551d9e0]
                                          2    ??? (MobileSpotlightIndex + 852540) [0x1d555823c]
                                            2    ??? (MobileSpotlightIndex + 858340) [0x1d55598e4]
                                              2    ??? (libsystem_kernel.dylib + 21432) [0x1ec32e3b8]
                                                2    <Override Thread QoS Background>
                                  24   ??? (MobileSpotlightIndex + 3868952) [0x1d5838918]
                                    24   ??? (MobileSpotlightIndex + 2098792) [0x1d5688668]
                                      19   ??? (MobileSpotlightIndex + 2151264) [0x1d5695360]
                                        12   ??? (MobileSpotlightIndex + 2040864) [0x1d567a420]
                                          12   ??? (MobileSpotlightIndex + 2041124) [0x1d567a524]
                                            11   ??? (MobileSpotlightIndex + 2041788) [0x1d567a7bc]
                                              7    ??? (MobileSpotlightIndex + 2041788) [0x1d567a7bc]
                                                5    ??? (MobileSpotlightIndex + 2041984) [0x1d567a880]
                                                  3    ??? (MobileSpotlightIndex + 2044036) [0x1d567b084]
                                                    3    ??? (MobileSpotlightIndex + 2041984) [0x1d567a880]
                                                      3    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                        2    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                          2    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                            2    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                              2    ??? (MobileSpotlightIndex + 2043764) [0x1d567af74]
                                                                1    ??? (MobileSpotlightIndex + 2130236) [0x1d569013c]
                                                                  1    <on behalf of Developer [15693] (originated by Developer [15693])>
                                                                1    ??? (MobileSpotlightIndex + 2129616) [0x1d568fed0]
                                                                  1    <on behalf of Developer [15693] (originated by Developer [15693])>
                                                        1    ??? (MobileSpotlightIndex + 2044036) [0x1d567b084]
                                                          1    ??? (MobileSpotlightIndex + 2042348) [0x1d567a9ec]
                                                            1    ??? (MobileSpotlightIndex + 2126084) [0x1d568f104]
                                                              1    ??? (MobileSpotlightIndex + 2134752) [0x1d56912e0]
                                                                1    ??? (libsystem_platform.dylib + 2876) [0x22660bb3c]
                                                                  1    <on behalf of Developer [15693] (originated by Developer [15693])>
                                                  2    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                    2    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                      2    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                        2    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                          1    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                            1    ??? (MobileSpotlightIndex + 2043764) [0x1d567af74]
                                                              1    ??? (libsystem_platform.dylib + 3424) [0x22660bd60]
                                                                1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                                          1    ??? (MobileSpotlightIndex + 2043764) [0x1d567af74]
                                                            1    ??? (libsystem_platform.dylib + 3336) [0x22660bd08]
                                                              1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032]), Override Thread QoS Background>
                                                2    ??? (MobileSpotlightIndex + 2041788) [0x1d567a7bc]
                                                  1    ??? (MobileSpotlightIndex + 2042348) [0x1d567a9ec]
                                                    1    ??? (libsystem_platform.dylib + 3408) [0x22660bd50]
                                                      1    <on behalf of Developer [3824] (originated by Developer [3824])>
                                                  1    ??? (MobileSpotlightIndex + 2041984) [0x1d567a880]
                                                    1    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                      1    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                        1    ??? (MobileSpotlightIndex + 2043764) [0x1d567af74]
                                                          1    ??? (libsystem_platform.dylib + 3408) [0x22660bd50]
                                                            1    <on behalf of spotlightknowledged [11930] (originated by UNKNOWN [34])>
                                              2    ??? (MobileSpotlightIndex + 2042348) [0x1d567a9ec]
                                                1    ??? (MobileSpotlightIndex + 2129568) [0x1d568fea0]
                                                  1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032]), Override Thread QoS Background>
                                                1    ??? (MobileSpotlightIndex + 2126084) [0x1d568f104]
                                                  1    ??? (MobileSpotlightIndex + 2134752) [0x1d56912e0]
                                                    1    ??? (MobileSpotlightIndex + 2297972) [0x1d56b9074]
                                                      1    ??? (libsystem_platform.dylib + 4524) [0x22660c1ac]
                                                        1    <on behalf of fileproviderd [11913] (originated by fileproviderd [11913])>
                                              2    ??? (MobileSpotlightIndex + 2041984) [0x1d567a880]
                                                1    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                  1    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                    1    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                      1    ??? (MobileSpotlightIndex + 2043764) [0x1d567af74]
                                                        1    ??? (libsystem_platform.dylib + 3320) [0x22660bcf8]
                                                          1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032]), Override Thread QoS Background>
                                                1    ??? (MobileSpotlightIndex + 2043764) [0x1d567af74]
                                                  1    ??? (MobileSpotlightIndex + 2128868) [0x1d568fbe4]
                                                    1    <on behalf of Chrome [3989] (originated by Chrome [3989])>
                                            1    ??? (MobileSpotlightIndex + 2041984) [0x1d567a880]
                                              1    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                1    ??? (MobileSpotlightIndex + 2045456) [0x1d567b610]
                                                  1    <on behalf of spotlightknowledged [11930] (originated by UNKNOWN [34])>
                                        7    ??? (MobileSpotlightIndex + 2041016) [0x1d567a4b8]
                                          4    ??? (libsystem_platform.dylib + 3408) [0x22660bd50]
                                            1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032]), Override Thread QoS Background>
                                            1    <on behalf of CallHistorySyncHelper [2958] (originated by UNKNOWN [872])>
                                            1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                            1    <on behalf of Developer [15693] (originated by Developer [15693])>
                                          2    ??? (libsystem_platform.dylib + 3320) [0x22660bcf8]
                                            1    <on behalf of Outlook-iOS (Outlook) [3083] (originated by Outlook-iOS (Outlook) [3083])>
                                            1    <on behalf of Developer [3824] (originated by Developer [3824])>
                                          1    ??? (libsystem_platform.dylib + 3336) [0x22660bd08]
                                            1    <on behalf of Developer [15693] (originated by Developer [15693])>
                                      3    ??? (MobileSpotlightIndex + 2153784) [0x1d5695d38]
                                        2    ??? (MobileSpotlightIndex + 2232740) [0x1d56a91a4]
                                          2    ??? (MobileSpotlightIndex + 2229352) [0x1d56a8468]
                                            2    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                              1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                              1    <on behalf of Developer [15693] (originated by Developer [15693])>
                                        1    ??? (MobileSpotlightIndex + 2233076) [0x1d56a92f4]
                                          1    <on behalf of Developer [3824] (originated by Developer [3824])>
                                      2    ??? (MobileSpotlightIndex + 2154268) [0x1d5695f1c]
                                        1    ??? (MobileSpotlightIndex + 2050640) [0x1d567ca50]
                                          1    ??? (MobileSpotlightIndex + 2052528) [0x1d567d1b0]
                                            1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                              1    <on behalf of Developer [15693] (originated by Developer [15693])>
                                        1    ??? (MobileSpotlightIndex + 2050424) [0x1d567c978]
                                          1    <on behalf of Developer [15693] (originated by Developer [15693])>
                                  2    ??? (MobileSpotlightIndex + 3864904) [0x1d5837948]
                                    2    ??? (MobileSpotlightIndex + 3865452) [0x1d5837b6c]
                                      2    ??? (MobileSpotlightIndex + 813412) [0x1d554e964]
                                        1    ??? (MobileSpotlightIndex + 837620) [0x1d55547f4]
                                          1    ??? (MobileSpotlightIndex + 842392) [0x1d5555a98]
                                            1    ??? (MobileSpotlightIndex + 612832) [0x1d551d9e0]
                                              1    ??? (MobileSpotlightIndex + 852540) [0x1d555823c]
                                                1    ??? (MobileSpotlightIndex + 858340) [0x1d55598e4]
                                                  1    ??? (libsystem_kernel.dylib + 21432) [0x1ec32e3b8]
                                                    1    <on behalf of Developer [3824] (originated by Developer [3824]), Override Thread QoS User Initiated>
                                        1    ??? (MobileSpotlightIndex + 837076) [0x1d55545d4]
                                          1    ??? (MobileSpotlightIndex + 840036) [0x1d5555164]
                                            1    ??? (MobileSpotlightIndex + 828348) [0x1d55523bc]
                                              1    ??? (MobileSpotlightIndex + 592804) [0x1d5518ba4]
                                                1    ??? (MobileSpotlightIndex + 606608) [0x1d551c190]
                                                  1    ??? (libsystem_kernel.dylib + 33820) [0x1ec33141c]
                                                    1    <on behalf of fileproviderd [14357] (originated by fileproviderd [14357]), User mode>
                                  1    ??? (MobileSpotlightIndex + 3864728) [0x1d5837898]
                                    1    ??? (libsystem_kernel.dylib + 25892) [0x1ec32f524]
                                      1    <on behalf of fileproviderd [14357] (originated by fileproviderd [14357])>
                                  1    ??? (MobileSpotlightIndex + 812612) [0x1d554e644]
                                    1    ??? (MobileSpotlightIndex + 810884) [0x1d554df84]
                                      1    ??? (MobileSpotlightIndex + 197532) [0x1d54b839c]
                                        1    ??? (MobileSpotlightIndex + 218784) [0x1d54bd6a0]
                                          1    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                            1    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                              1    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                  1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                116  ??? (MobileSpotlightIndex + 34432) [0x1d5490680]
                                  103  ??? (MobileSpotlightIndex + 903904) [0x1d5564ae0]
                                    62   ??? (MobileSpotlightIndex + 1499000) [0x1d55f5f78]
                                      58   ??? (MobileSpotlightIndex + 358896) [0x1d54df9f0]
                                        58   ??? (SpotlightDaemon + 208276) [0x23a50ad94]
                                          58   ??? (MobileSpotlightIndex + 1568040) [0x1d5606d28]
                                            58   ??? (MobileSpotlightIndex + 37884) [0x1d54913fc]
                                              58   ??? (MobileSpotlightIndex + 866208) [0x1d555b7a0]
                                                58   ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                                  32   ??? (MobileSpotlightIndex + 172424) [0x1d54b2188]
                                                    32   ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                                                      32   ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                                        32   ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                          32   ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                            32   ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                              32   ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                32   ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                  23   <on behalf of spotlightknowledged [11930] (originated by UNKNOWN [34])>
                                                                  8    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                                                  1    <on behalf of assetsd [13000] (originated by dasd [15924])>
                                                  20   ??? (MobileSpotlightIndex + 172216) [0x1d54b20b8]
                                                    20   ??? (MobileSpotlightIndex + 799112) [0x1d554b188]
                                                      20   ??? (MobileSpotlightIndex + 199168) [0x1d54b8a00]
                                                        20   ??? (MobileSpotlightIndex + 216448) [0x1d54bcd80]
                                                          20   ??? (MobileSpotlightIndex + 215448) [0x1d54bc998]
                                                            20   ??? (MobileSpotlightIndex + 217688) [0x1d54bd258]
                                                              20   ??? (MobileSpotlightIndex + 897860) [0x1d5563344]
                                                                20   ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                                  20   ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                                    20   ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                                      20   ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                        20   ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                          20   <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                                  5    ??? (MobileSpotlightIndex + 175096) [0x1d54b2bf8]
                                                    4    ??? (MobileSpotlightIndex + 3858116) [0x1d5835ec4]
                                                      3    ??? (MobileSpotlightIndex + 2121068) [0x1d568dd6c]
                                                        2    ??? (MobileSpotlightIndex + 2338324) [0x1d56c2e14]
                                                          1    ??? (MobileSpotlightIndex + 2336016) [0x1d56c2510]
                                                            1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                                          1    ??? (MobileSpotlightIndex + 2335644) [0x1d56c239c]
                                                            1    ??? (libsystem_platform.dylib + 4492) [0x22660c18c]
                                                              1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                                        1    ??? (MobileSpotlightIndex + 2337584) [0x1d56c2b30]
                                                          1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                                      1    ??? (MobileSpotlightIndex + 2120532) [0x1d568db54]
                                                        1    ??? (MobileSpotlightIndex + 367660) [0x1d54e1c2c]
                                                          1    ??? (MobileSpotlightIndex + 195108) [0x1d54b7a24]
                                                            1    ??? (MobileSpotlightIndex + 190152) [0x1d54b66c8]
                                                              1    ??? (MobileSpotlightIndex + 190936) [0x1d54b69d8]
                                                                1    ??? (MobileSpotlightIndex + 191908) [0x1d54b6da4]
                                                                  1    ??? (MobileSpotlightIndex + 192464) [0x1d54b6fd0]
                                                                    1    ??? (libsystem_kernel.dylib + 27212) [0x1ec32fa4c]
                                                                      1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                                    1    ??? (MobileSpotlightIndex + 3857928) [0x1d5835e08]
                                                      1    ??? (MobileSpotlightIndex + 2361036) [0x1d56c86cc]
                                                        1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                                  1    ??? (MobileSpotlightIndex + 173604) [0x1d54b2624]
                                                    1    ??? (MobileSpotlightIndex + 387544) [0x1d54e69d8]
                                                      1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                      2    ??? (MobileSpotlightIndex + 359632) [0x1d54dfcd0]
                                        2    ??? (MobileSpotlightIndex + 40856) [0x1d5491f98]
                                          2    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                            2    ??? (MobileSpotlightIndex + 172424) [0x1d54b2188]
                                              2    ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                                                2    ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                                  2    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                    2    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                      2    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                        2    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                          2    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                            1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                                            1    <on behalf of UNKNOWN [13579] (originated by UNKNOWN [13579])>
                                      2    ??? (MobileSpotlightIndex + 35860) [0x1d5490c14]
                                        2    ??? (SpotlightDaemon + 208276) [0x23a50ad94]
                                          2    ??? (MobileSpotlightIndex + 40688) [0x1d5491ef0]
                                            2    ??? (MobileSpotlightIndex + 37884) [0x1d54913fc]
                                              2    ??? (MobileSpotlightIndex + 38800) [0x1d5491790]
                                                2    ??? (libdispatch.dylib + 90212) [0x19f667064]
                                                  2    ??? (libdispatch.dylib + 89820) [0x19f666edc]
                                                    2    ??? (libdispatch.dylib + 93672) [0x19f667de8]
                                                      2    ??? (libdispatch.dylib + 18880) [0x19f6559c0]
                                                        2    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                          2    ??? (libdispatch.dylib + 91968) [0x19f667740]
                                                            2    ??? (libdispatch.dylib + 112612) [0x19f66c7e4]
                                                              2    ??? (MobileSpotlightIndex + 39872) [0x1d5491bc0]
                                                                2    ??? (MobileSpotlightIndex + 40856) [0x1d5491f98]
                                                                  2    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                                                    2    ??? (MobileSpotlightIndex + 172424) [0x1d54b2188]
                                                                      2    ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                                                                        2    ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                                                          2    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                                            2    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                                              2    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                                                2    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                                  2    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                    2    <Override Thread QoS Background>
                                    31   ??? (MobileSpotlightIndex + 903964) [0x1d5564b1c]
                                      29   ??? (MobileSpotlightIndex + 358896) [0x1d54df9f0]
                                        29   ??? (SpotlightDaemon + 208276) [0x23a50ad94]
                                          29   ??? (MobileSpotlightIndex + 1568040) [0x1d5606d28]
                                            29   ??? (MobileSpotlightIndex + 37884) [0x1d54913fc]
                                              29   ??? (MobileSpotlightIndex + 866208) [0x1d555b7a0]
                                                29   ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                                  26   ??? (MobileSpotlightIndex + 172424) [0x1d54b2188]
                                                    26   ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                                                      26   ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                                        26   ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                          26   ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                            26   ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                              26   ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                26   ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                  11   <on behalf of spotlightknowledged [11930] (originated by UNKNOWN [34])>
                                                                  7    <on behalf of fileproviderd [11913] (originated by fileproviderd [11913])>
                                                                  6    <on behalf of fileproviderd [14357] (originated by fileproviderd [14357])>
                                                                  1    <on behalf of UNKNOWN [244] (originated by UNKNOWN [244])>
                                                                  1    <on behalf of assetsd [13000] (originated by dasd [15924])>
                                                  1    ??? (MobileSpotlightIndex + 173604) [0x1d54b2624]
                                                    1    ??? (MobileSpotlightIndex + 387896) [0x1d54e6b38]
                                                      1    ??? (MobileSpotlightIndex + 195108) [0x1d54b7a24]
                                                        1    ??? (MobileSpotlightIndex + 190152) [0x1d54b66c8]
                                                          1    ??? (MobileSpotlightIndex + 190936) [0x1d54b69d8]
                                                            1    ??? (MobileSpotlightIndex + 191908) [0x1d54b6da4]
                                                              1    ??? (MobileSpotlightIndex + 192464) [0x1d54b6fd0]
                                                                1    ??? (libsystem_kernel.dylib + 27212) [0x1ec32fa4c]
                                                                  1    <on behalf of fileproviderd [14357] (originated by fileproviderd [14357])>
                                                  1    ??? (MobileSpotlightIndex + 171956) [0x1d54b1fb4]
                                                    1    ??? (MobileSpotlightIndex + 360632) [0x1d54e00b8]
                                                      1    ??? (MobileSpotlightIndex + 362008) [0x1d54e0618]
                                                        1    ??? (MobileSpotlightIndex + 367660) [0x1d54e1c2c]
                                                          1    ??? (MobileSpotlightIndex + 195108) [0x1d54b7a24]
                                                            1    ??? (MobileSpotlightIndex + 190152) [0x1d54b66c8]
                                                              1    ??? (MobileSpotlightIndex + 190936) [0x1d54b69d8]
                                                                1    ??? (MobileSpotlightIndex + 191908) [0x1d54b6da4]
                                                                  1    ??? (MobileSpotlightIndex + 192464) [0x1d54b6fd0]
                                                                    1    ??? (libsystem_kernel.dylib + 27212) [0x1ec32fa4c]
                                                                      1    <on behalf of UNKNOWN [244] (originated by UNKNOWN [244])>
                                                  1    ??? (MobileSpotlightIndex + 171816) [0x1d54b1f28]
                                                    1    ??? (MobileSpotlightIndex + 187372) [0x1d54b5bec]
                                                      1    ??? (MobileSpotlightIndex + 187984) [0x1d54b5e50]
                                                        1    ??? (MobileSpotlightIndex + 195108) [0x1d54b7a24]
                                                          1    ??? (MobileSpotlightIndex + 190152) [0x1d54b66c8]
                                                            1    ??? (MobileSpotlightIndex + 190936) [0x1d54b69d8]
                                                              1    ??? (MobileSpotlightIndex + 192020) [0x1d54b6e14]
                                                                1    ??? (libsystem_kernel.dylib + 33820) [0x1ec33141c]
                                                                  1    <on behalf of UNKNOWN [244] (originated by UNKNOWN [244])>
                                      1    ??? (MobileSpotlightIndex + 359632) [0x1d54dfcd0]
                                        1    ??? (MobileSpotlightIndex + 40856) [0x1d5491f98]
                                          1    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                            1    ??? (MobileSpotlightIndex + 172424) [0x1d54b2188]
                                              1    ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                                                1    ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                                  1    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                    1    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                      1    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                        1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                          1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                            1    <on behalf of fileproviderd [11913] (originated by fileproviderd [11913])>
                                      1    ??? (MobileSpotlightIndex + 35860) [0x1d5490c14]
                                        1    ??? (SpotlightDaemon + 208276) [0x23a50ad94]
                                          1    ??? (MobileSpotlightIndex + 40688) [0x1d5491ef0]
                                            1    ??? (MobileSpotlightIndex + 37884) [0x1d54913fc]
                                              1    ??? (MobileSpotlightIndex + 38800) [0x1d5491790]
                                                1    ??? (libdispatch.dylib + 90212) [0x19f667064]
                                                  1    ??? (libdispatch.dylib + 89820) [0x19f666edc]
                                                    1    ??? (libdispatch.dylib + 93672) [0x19f667de8]
                                                      1    ??? (libdispatch.dylib + 18880) [0x19f6559c0]
                                                        1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                          1    ??? (libdispatch.dylib + 91968) [0x19f667740]
                                                            1    ??? (libdispatch.dylib + 112612) [0x19f66c7e4]
                                                              1    ??? (MobileSpotlightIndex + 39872) [0x1d5491bc0]
                                                                1    ??? (MobileSpotlightIndex + 40856) [0x1d5491f98]
                                                                  1    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                                                    1    ??? (MobileSpotlightIndex + 172424) [0x1d54b2188]
                                                                      1    ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                                                                        1    ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                                                          1    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                                            1    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                                              1    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                                                1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                                  1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                    1    <Override Thread QoS Background>
                                    10   ??? (MobileSpotlightIndex + 1496840) [0x1d55f5708]
                                      10   ??? (MobileSpotlightIndex + 358896) [0x1d54df9f0]
                                        10   ??? (SpotlightDaemon + 208276) [0x23a50ad94]
                                          10   ??? (MobileSpotlightIndex + 1568040) [0x1d5606d28]
                                            10   ??? (MobileSpotlightIndex + 37884) [0x1d54913fc]
                                              9    ??? (MobileSpotlightIndex + 866208) [0x1d555b7a0]
                                                6    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                                  3    ??? (MobileSpotlightIndex + 172216) [0x1d54b20b8]
                                                    3    ??? (MobileSpotlightIndex + 799112) [0x1d554b188]
                                                      3    ??? (MobileSpotlightIndex + 199168) [0x1d54b8a00]
                                                        3    ??? (MobileSpotlightIndex + 216448) [0x1d54bcd80]
                                                          3    ??? (MobileSpotlightIndex + 215448) [0x1d54bc998]
                                                            3    ??? (MobileSpotlightIndex + 217688) [0x1d54bd258]
                                                              3    ??? (MobileSpotlightIndex + 897860) [0x1d5563344]
                                                                2    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                                  2    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                                    2    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                                      2    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                        2    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                          1    <on behalf of Outlook-iOS (Outlook) [14331] (originated by Outlook-iOS (Outlook) [14331])>
                                                                          1    <on behalf of Developer [15693] (originated by Developer [15693])>
                                                                1    ??? (MobileSpotlightIndex + 66584) [0x1d5498418]
                                                                  1    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                                    1    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                                      1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                        1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                          1    <on behalf of Developer [15693] (originated by Developer [15693])>
                                                  2    ??? (MobileSpotlightIndex + 172076) [0x1d54b202c]
                                                    2    ??? (MobileSpotlightIndex + 3844380) [0x1d583291c]
                                                      2    ??? (libsystem_kernel.dylib + 20516) [0x1ec32e024]
                                                        2    <on behalf of Chrome [3989] (originated by Chrome [3989])>
                                                  1    ??? (MobileSpotlightIndex + 171956) [0x1d54b1fb4]
                                                    1    ??? (MobileSpotlightIndex + 360632) [0x1d54e00b8]
                                                      1    ??? (MobileSpotlightIndex + 364608) [0x1d54e1040]
                                                        1    ??? (MobileSpotlightIndex + 368344) [0x1d54e1ed8]
                                                          1    <on behalf of Chrome [3989] (originated by Chrome [3989])>
                                                3    ??? (MobileSpotlightIndex + 51928) [0x1d5494ad8]
                                                  3    ??? (MobileSpotlightIndex + 142480) [0x1d54aac90]
                                                    3    ??? (CoreFoundation + 995936) [0x196f49260]
                                                      3    ??? (MobileSpotlightIndex + 142816) [0x1d54aade0]
                                                        3    ??? (MobileSpotlightIndex + 147500) [0x1d54ac02c]
                                                          3    ??? (MobileSpotlightIndex + 152100) [0x1d54ad224]
                                                            3    ??? (MobileSpotlightIndex + 116344) [0x1d54a4678]
                                                              2    ??? (MobileSpotlightIndex + 121072) [0x1d54a58f0]
                                                                2    ??? (MobileSpotlightIndex + 881220) [0x1d555f244]
                                                                  1    ??? (MobileSpotlightIndex + 158016) [0x1d54ae940]
                                                                    1    <on behalf of Chrome [3989] (originated by Chrome [3989])>
                                                                  1    ??? (MobileSpotlightIndex + 157888) [0x1d54ae8c0]
                                                                    1    <on behalf of Chrome [3989] (originated by Chrome [3989])>
                                                              1    ??? (MobileSpotlightIndex + 120860) [0x1d54a581c]
                                                                1    ??? (MobileSpotlightIndex + 187372) [0x1d54b5bec]
                                                                  1    ??? (MobileSpotlightIndex + 188312) [0x1d54b5f98]
                                                                    1    ??? (MobileSpotlightIndex + 192804) [0x1d54b7124]
                                                                      1    ??? (libsystem_kernel.dylib + 23908) [0x1ec32ed64]
                                                                        1    <on behalf of Chrome [14471] (originated by Chrome [14471])>
                                              1    ??? (MobileSpotlightIndex + 867916) [0x1d555be4c]
                                                1    ??? (libdispatch.dylib + 90212) [0x19f667064]
                                                  1    ??? (libdispatch.dylib + 89820) [0x19f666edc]
                                                    1    ??? (libdispatch.dylib + 93672) [0x19f667de8]
                                                      1    ??? (libdispatch.dylib + 18880) [0x19f6559c0]
                                                        1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                          1    ??? (libdispatch.dylib + 91968) [0x19f667740]
                                                            1    ??? (libdispatch.dylib + 112612) [0x19f66c7e4]
                                                              1    ??? (MobileSpotlightIndex + 890408) [0x1d5561628]
                                                                1    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                                                  1    ??? (MobileSpotlightIndex + 172216) [0x1d54b20b8]
                                                                    1    ??? (MobileSpotlightIndex + 799112) [0x1d554b188]
                                                                      1    ??? (MobileSpotlightIndex + 199168) [0x1d54b8a00]
                                                                        1    ??? (MobileSpotlightIndex + 216448) [0x1d54bcd80]
                                                                          1    ??? (MobileSpotlightIndex + 215448) [0x1d54bc998]
                                                                            1    ??? (MobileSpotlightIndex + 217688) [0x1d54bd258]
                                                                              1    ??? (MobileSpotlightIndex + 897860) [0x1d5563344]
                                                                                1    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                                                  1    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                                                    1    ??? (MobileSpotlightIndex + 600216) [0x1d551a898]
                                                                                      1    ??? (MobileSpotlightIndex + 223428) [0x1d54be8c4]
                                                                                        1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                                          1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                            1    <on behalf of Developer [3824] (originated by Developer [3824])>
                                  13   ??? (MobileSpotlightIndex + 757396) [0x1d5540e94]
                                    13   ??? (MobileSpotlightIndex + 37884) [0x1d54913fc]
                                      13   ??? (MobileSpotlightIndex + 759084) [0x1d554152c]
                                        13   ??? (libdispatch.dylib + 90212) [0x19f667064]
                                          13   ??? (libdispatch.dylib + 89932) [0x19f666f4c]
                                            13   ??? (libdispatch.dylib + 33968) [0x19f6594b0]
                                              13   ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                13   ??? (libdispatch.dylib + 92392) [0x19f6678e8]
                                                  13   ??? (libdispatch.dylib + 112612) [0x19f66c7e4]
                                                    13   ??? (MobileSpotlightIndex + 760124) [0x1d554193c]
                                                      13   ??? (MobileSpotlightIndex + 760912) [0x1d5541c50]
                                                        13   ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                                                          13   ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                                            13   ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                              13   ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                                13   ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                                  13   ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                    13   ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                      11   <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                                                      2    <on behalf of UNKNOWN [4095] (originated by UNKNOWN [4095])>
                          47   ??? (MobileSpotlightIndex + 9952) [0x1d548a6e0]
                            47   ??? (MobileSpotlightIndex + 1897532) [0x1d565743c]
                              47   ??? (MobileSpotlightIndex + 8784) [0x1d548a250]
                                41   ??? (MobileSpotlightIndex + 317864) [0x1d54d59a8]
                                  35   ??? (MobileSpotlightIndex + 813412) [0x1d554e964]
                                    16   ??? (MobileSpotlightIndex + 837076) [0x1d55545d4]
                                      6    ??? (MobileSpotlightIndex + 840320) [0x1d5555280]
                                        6    ??? (MobileSpotlightIndex + 849924) [0x1d5557804]
                                          6    ??? (MobileSpotlightIndex + 2201644) [0x1d56a182c]
                                            6    ??? (MobileSpotlightIndex + 2027364) [0x1d5676f64]
                                              6    ??? (MobileSpotlightIndex + 2290588) [0x1d56b739c]
                                                6    ??? (MobileSpotlightIndex + 31060) [0x1d548f954]
                                                  6    ??? (libsystem_kernel.dylib + 34464) [0x1ec3316a0]
                                                    1    <Override Thread QoS Background>
                                      5    ??? (MobileSpotlightIndex + 840036) [0x1d5555164]
                                        5    ??? (MobileSpotlightIndex + 828348) [0x1d55523bc]
                                          3    ??? (MobileSpotlightIndex + 592196) [0x1d5518944]
                                            3    ??? (MobileSpotlightIndex + 597920) [0x1d5519fa0]
                                              3    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                3    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                  3    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                          2    ??? (MobileSpotlightIndex + 592804) [0x1d5518ba4]
                                            2    ??? (MobileSpotlightIndex + 606608) [0x1d551c190]
                                              2    ??? (libsystem_kernel.dylib + 33820) [0x1ec33141c]
                                      5    ??? (MobileSpotlightIndex + 839768) [0x1d5555058]
                                        5    ??? (MobileSpotlightIndex + 848496) [0x1d5557270]
                                          3    ??? (MobileSpotlightIndex + 2151264) [0x1d5695360]
                                            2    ??? (MobileSpotlightIndex + 2040864) [0x1d567a420]
                                              2    ??? (MobileSpotlightIndex + 2041124) [0x1d567a524]
                                                2    ??? (MobileSpotlightIndex + 2041984) [0x1d567a880]
                                                  2    ??? (MobileSpotlightIndex + 2043764) [0x1d567af74]
                                                    2    ??? (MobileSpotlightIndex + 2130236) [0x1d569013c]
                                            1    ??? (MobileSpotlightIndex + 2041016) [0x1d567a4b8]
                                              1    ??? (libsystem_platform.dylib + 3408) [0x22660bd50]
                                          2    ??? (MobileSpotlightIndex + 2153784) [0x1d5695d38]
                                            2    ??? (MobileSpotlightIndex + 2233076) [0x1d56a92f4]
                                    10   ??? (MobileSpotlightIndex + 837792) [0x1d55548a0]
                                      8    ??? (MobileSpotlightIndex + 840884) [0x1d55554b4]
                                        8    ??? (MobileSpotlightIndex + 580300) [0x1d5515acc]
                                          8    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                            8    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                      1    ??? (MobileSpotlightIndex + 841024) [0x1d5555540]
                                        1    ??? (MobileSpotlightIndex + 841860) [0x1d5555884]
                                      1    ??? (MobileSpotlightIndex + 841004) [0x1d555552c]
                                        1    ??? (MobileSpotlightIndex + 607928) [0x1d551c6b8]
                                          1    ??? (MobileSpotlightIndex + 609868) [0x1d551ce4c]
                                            1    ??? (libsystem_kernel.dylib + 28424) [0x1ec32ff08]
                                    5    ??? (MobileSpotlightIndex + 837764) [0x1d5554884]
                                      5    ??? (MobileSpotlightIndex + 851428) [0x1d5557de4]
                                        3    ??? (MobileSpotlightIndex + 2187568) [0x1d569e130]
                                          3    ??? (MobileSpotlightIndex + 4070620) [0x1d5869cdc]
                                            3    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                        2    ??? (MobileSpotlightIndex + 2189152) [0x1d569e760]
                                          2    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                            2    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                    3    ??? (MobileSpotlightIndex + 837168) [0x1d5554630]
                                      2    ??? (MobileSpotlightIndex + 824944) [0x1d5551670]
                                        2    ??? (MobileSpotlightIndex + 826916) [0x1d5551e24]
                                          2    ??? (MobileSpotlightIndex + 190152) [0x1d54b66c8]
                                            2    ??? (MobileSpotlightIndex + 190936) [0x1d54b69d8]
                                              2    ??? (MobileSpotlightIndex + 191908) [0x1d54b6da4]
                                                2    ??? (MobileSpotlightIndex + 192464) [0x1d54b6fd0]
                                                  2    ??? (libsystem_kernel.dylib + 27212) [0x1ec32fa4c]
                                      1    ??? (MobileSpotlightIndex + 825664) [0x1d5551940]
                                        1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                          1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                    1    ??? (MobileSpotlightIndex + 837620) [0x1d55547f4]
                                      1    ??? (MobileSpotlightIndex + 842392) [0x1d5555a98]
                                        1    ??? (MobileSpotlightIndex + 612832) [0x1d551d9e0]
                                          1    ??? (MobileSpotlightIndex + 852540) [0x1d555823c]
                                            1    ??? (MobileSpotlightIndex + 858340) [0x1d55598e4]
                                              1    ??? (libsystem_kernel.dylib + 21432) [0x1ec32e3b8]
                                  6    ??? (MobileSpotlightIndex + 3868952) [0x1d5838918]
                                    6    ??? (MobileSpotlightIndex + 2098792) [0x1d5688668]
                                      6    ??? (MobileSpotlightIndex + 2153784) [0x1d5695d38]
                                        4    ??? (MobileSpotlightIndex + 2233076) [0x1d56a92f4]
                                          2    <on behalf of Preferences (Settings) [13030] (originated by Preferences (Settings) [13030])>
                                          1    <on behalf of Preferences (Settings) [13595] (originated by Preferences (Settings) [13595])>
                                          1    <on behalf of Preferences (Settings) [15237] (originated by Preferences (Settings) [15237])>
                                        2    ??? (MobileSpotlightIndex + 2232740) [0x1d56a91a4]
                                          2    ??? (MobileSpotlightIndex + 2229352) [0x1d56a8468]
                                            2    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                              1    <on behalf of Preferences (Settings) [13030] (originated by Preferences (Settings) [13030])>
                                              1    <on behalf of Preferences (Settings) [13595] (originated by Preferences (Settings) [13595])>
                                6    ??? (MobileSpotlightIndex + 34432) [0x1d5490680]
                                  6    ??? (MobileSpotlightIndex + 34860) [0x1d549082c]
                                    6    ??? (MobileSpotlightIndex + 36592) [0x1d5490ef0]
                                      5    ??? (MobileSpotlightIndex + 358896) [0x1d54df9f0]
                                        5    ??? (SpotlightDaemon + 208276) [0x23a50ad94]
                                          5    ??? (MobileSpotlightIndex + 1568040) [0x1d5606d28]
                                            5    ??? (MobileSpotlightIndex + 37884) [0x1d54913fc]
                                              4    ??? (MobileSpotlightIndex + 867916) [0x1d555be4c]
                                                4    ??? (libdispatch.dylib + 90212) [0x19f667064]
                                                  4    ??? (libdispatch.dylib + 89820) [0x19f666edc]
                                                    4    ??? (libdispatch.dylib + 93672) [0x19f667de8]
                                                      4    ??? (libdispatch.dylib + 18880) [0x19f6559c0]
                                                        4    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                          4    ??? (libdispatch.dylib + 91968) [0x19f667740]
                                                            4    ??? (libdispatch.dylib + 112612) [0x19f66c7e4]
                                                              4    ??? (MobileSpotlightIndex + 890408) [0x1d5561628]
                                                                4    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                                                  3    ??? (MobileSpotlightIndex + 172216) [0x1d54b20b8]
                                                                    3    ??? (MobileSpotlightIndex + 799112) [0x1d554b188]
                                                                      3    ??? (MobileSpotlightIndex + 199168) [0x1d54b8a00]
                                                                        3    ??? (MobileSpotlightIndex + 216448) [0x1d54bcd80]
                                                                          3    ??? (MobileSpotlightIndex + 215448) [0x1d54bc998]
                                                                            3    ??? (MobileSpotlightIndex + 217688) [0x1d54bd258]
                                                                              3    ??? (MobileSpotlightIndex + 897860) [0x1d5563344]
                                                                                3    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                                                  3    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                                                    1    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                                                      1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                                        1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                          1    <on behalf of Preferences (Settings) [13030] (originated by Preferences (Settings) [13030])>
                                                                                    1    ??? (MobileSpotlightIndex + 600216) [0x1d551a898]
                                                                                      1    ??? (MobileSpotlightIndex + 223428) [0x1d54be8c4]
                                                                                        1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                                          1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                            1    <on behalf of Preferences (Settings) [15237] (originated by Preferences (Settings) [15237]), Override Thread QoS Background>
                                                                                    1    ??? (MobileSpotlightIndex + 598588) [0x1d551a23c]
                                                                                      1    ??? (MobileSpotlightIndex + 4271628) [0x1d589ae0c]
                                                                                        1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                                          1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                            1    <on behalf of Preferences (Settings) [15237] (originated by Preferences (Settings) [15237])>
                                                                  1    ??? (MobileSpotlightIndex + 172424) [0x1d54b2188]
                                                                    1    ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                                                                      1    ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                                                        1    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                                          1    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                                            1    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                                              1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                                1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                  1    <on behalf of MobileSafari [13787] (originated by MobileSafari [13787])>
                                              1    ??? (MobileSpotlightIndex + 866208) [0x1d555b7a0]
                                                1    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                                  1    ??? (MobileSpotlightIndex + 171956) [0x1d54b1fb4]
                                                    1    ??? (MobileSpotlightIndex + 360632) [0x1d54e00b8]
                                                      1    ??? (MobileSpotlightIndex + 362008) [0x1d54e0618]
                                                        1    ??? (MobileSpotlightIndex + 367660) [0x1d54e1c2c]
                                                          1    ??? (MobileSpotlightIndex + 195108) [0x1d54b7a24]
                                                            1    ??? (MobileSpotlightIndex + 190152) [0x1d54b66c8]
                                                              1    ??? (MobileSpotlightIndex + 190936) [0x1d54b69d8]
                                                                1    ??? (MobileSpotlightIndex + 191964) [0x1d54b6ddc]
                                                                  1    ??? (libsystem_kernel.dylib + 28424) [0x1ec32ff08]
                                      1    ??? (MobileSpotlightIndex + 35860) [0x1d5490c14]
                                        1    ??? (SpotlightDaemon + 208276) [0x23a50ad94]
                                          1    ??? (MobileSpotlightIndex + 40688) [0x1d5491ef0]
                                            1    ??? (MobileSpotlightIndex + 37884) [0x1d54913fc]
                                              1    ??? (MobileSpotlightIndex + 38800) [0x1d5491790]
                                                1    ??? (libdispatch.dylib + 90212) [0x19f667064]
                                                  1    ??? (libdispatch.dylib + 89932) [0x19f666f4c]
                                                    1    ??? (libdispatch.dylib + 33968) [0x19f6594b0]
                                                      1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                        1    ??? (libdispatch.dylib + 92392) [0x19f6678e8]
                                                          1    ??? (libdispatch.dylib + 112612) [0x19f66c7e4]
                                                            1    ??? (MobileSpotlightIndex + 39872) [0x1d5491bc0]
                                                              1    ??? (MobileSpotlightIndex + 40856) [0x1d5491f98]
                                                                1    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                                                  1    ??? (MobileSpotlightIndex + 171216) [0x1d54b1cd0]
                                                                    1    ??? (MobileSpotlightIndex + 187372) [0x1d54b5bec]
                                                                      1    ??? (MobileSpotlightIndex + 187984) [0x1d54b5e50]
                                                                        1    ??? (MobileSpotlightIndex + 195108) [0x1d54b7a24]
                                                                          1    ??? (MobileSpotlightIndex + 190152) [0x1d54b66c8]
                                                                            1    ??? (MobileSpotlightIndex + 190936) [0x1d54b69d8]
                                                                              1    ??? (MobileSpotlightIndex + 191964) [0x1d54b6ddc]
                                                                                1    ??? (libsystem_kernel.dylib + 28424) [0x1ec32ff08]
                                                                                  1    <on behalf of biomed [7783] (originated by SpringBoard [37])>
                          17   ??? (MobileSpotlightIndex + 9964) [0x1d548a6ec]
                            17   ??? (MobileSpotlightIndex + 1897532) [0x1d565743c]
                              17   ??? (MobileSpotlightIndex + 8784) [0x1d548a250]
                                16   ??? (MobileSpotlightIndex + 317864) [0x1d54d59a8]
                                  11   ??? (MobileSpotlightIndex + 813412) [0x1d554e964]
                                    5    ??? (MobileSpotlightIndex + 837792) [0x1d55548a0]
                                      5    ??? (MobileSpotlightIndex + 840884) [0x1d55554b4]
                                        5    ??? (MobileSpotlightIndex + 580300) [0x1d5515acc]
                                          5    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                            5    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                              1    <on behalf of UNKNOWN [708] (originated by UNKNOWN [708])>
                                    4    ??? (MobileSpotlightIndex + 837076) [0x1d55545d4]
                                      4    ??? (MobileSpotlightIndex + 839768) [0x1d5555058]
                                        4    ??? (MobileSpotlightIndex + 848496) [0x1d5557270]
                                          3    ??? (MobileSpotlightIndex + 2153784) [0x1d5695d38]
                                            3    ??? (MobileSpotlightIndex + 2233076) [0x1d56a92f4]
                                              1    <Override Thread QoS Background>
                                          1    ??? (MobileSpotlightIndex + 2151264) [0x1d5695360]
                                            1    ??? (MobileSpotlightIndex + 2041016) [0x1d567a4b8]
                                              1    ??? (libsystem_platform.dylib + 3408) [0x22660bd50]
                                    2    ??? (MobileSpotlightIndex + 837764) [0x1d5554884]
                                      2    ??? (MobileSpotlightIndex + 851428) [0x1d5557de4]
                                        2    ??? (MobileSpotlightIndex + 2187568) [0x1d569e130]
                                          2    ??? (MobileSpotlightIndex + 4070620) [0x1d5869cdc]
                                            2    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                              1    <Override Thread QoS Background>
                                  5    ??? (MobileSpotlightIndex + 3868952) [0x1d5838918]
                                    5    ??? (MobileSpotlightIndex + 2098792) [0x1d5688668]
                                      5    ??? (MobileSpotlightIndex + 2153784) [0x1d5695d38]
                                        5    ??? (MobileSpotlightIndex + 2233076) [0x1d56a92f4]
                                          4    <on behalf of maild [10674] (originated by maild [10674])>
                                          1    <on behalf of maild [303] (originated by maild [303])>
                                1    ??? (MobileSpotlightIndex + 34432) [0x1d5490680]
                                  1    ??? (MobileSpotlightIndex + 1496780) [0x1d55f56cc]
                                    1    ??? (MobileSpotlightIndex + 923624) [0x1d55697e8]
                                      1    ??? (MobileSpotlightIndex + 358896) [0x1d54df9f0]
                                        1    ??? (SpotlightDaemon + 208276) [0x23a50ad94]
                                          1    ??? (MobileSpotlightIndex + 1568040) [0x1d5606d28]
                                            1    ??? (MobileSpotlightIndex + 37884) [0x1d54913fc]
                                              1    ??? (MobileSpotlightIndex + 866208) [0x1d555b7a0]
                                                1    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                                  1    ??? (MobileSpotlightIndex + 171956) [0x1d54b1fb4]
                                                    1    ??? (MobileSpotlightIndex + 360632) [0x1d54e00b8]
                                                      1    ??? (MobileSpotlightIndex + 365628) [0x1d54e143c]
                                                        1    <on behalf of maild [10674] (originated by maild [10674])>
                          2    ??? (MobileSpotlightIndex + 10108) [0x1d548a77c]
                            2    ??? (MobileSpotlightIndex + 1897532) [0x1d565743c]
                              2    ??? (MobileSpotlightIndex + 8784) [0x1d548a250]
                                2    ??? (MobileSpotlightIndex + 317864) [0x1d54d59a8]
                                  1    ??? (MobileSpotlightIndex + 813412) [0x1d554e964]
                                    1    ??? (MobileSpotlightIndex + 837764) [0x1d5554884]
                                      1    ??? (MobileSpotlightIndex + 851428) [0x1d5557de4]
                                        1    ??? (MobileSpotlightIndex + 2189120) [0x1d569e740]
                                          1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                            1    <Requested Thread QoS User Initiated>
                                  1    ??? (MobileSpotlightIndex + 813284) [0x1d554e8e4]
                                    1    ??? (MobileSpotlightIndex + 818224) [0x1d554fc30]
                                      1    ??? (MobileSpotlightIndex + 187372) [0x1d54b5bec]
                                        1    ??? (MobileSpotlightIndex + 188148) [0x1d54b5ef4]
                                          1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                            1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                          2    ??? (MobileSpotlightIndex + 10056) [0x1d548a748]
                            2    ??? (MobileSpotlightIndex + 1897532) [0x1d565743c]
                              2    ??? (MobileSpotlightIndex + 8784) [0x1d548a250]
                                2    ??? (MobileSpotlightIndex + 317864) [0x1d54d59a8]
                                  2    ??? (MobileSpotlightIndex + 813412) [0x1d554e964]
                                    2    ??? (MobileSpotlightIndex + 837792) [0x1d55548a0]
                                      1    ??? (MobileSpotlightIndex + 840884) [0x1d55554b4]
                                        1    ??? (MobileSpotlightIndex + 580720) [0x1d5515c70]
                                          1    ??? (libsystem_kernel.dylib + 33820) [0x1ec33141c]
                                      1    ??? (MobileSpotlightIndex + 840768) [0x1d5555440]
                                        1    ??? (MobileSpotlightIndex + 190152) [0x1d54b66c8]
                                          1    ??? (MobileSpotlightIndex + 190936) [0x1d54b69d8]
                                            1    ??? (MobileSpotlightIndex + 191908) [0x1d54b6da4]
                                              1    ??? (MobileSpotlightIndex + 192464) [0x1d54b6fd0]
                                                1    ??? (libsystem_kernel.dylib + 27212) [0x1ec32fa4c]
          16   ??? (libdispatch.dylib + 23920) [0x19f656d70]
            16   ??? (libdispatch.dylib + 25792) [0x19f6574c0]
              16   ??? (libdispatch.dylib + 44888) [0x19f65bf58]
                16   ??? (libdispatch.dylib + 41648) [0x19f65b2b0]
                  16   ??? (libdispatch.dylib + 44888) [0x19f65bf58]
                    16   ??? (libdispatch.dylib + 42056) [0x19f65b448]
                      16   ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                        16   ??? (libdispatch.dylib + 70704) [0x19f662430]
                          15   ??? (MobileSpotlightIndex + 10120) [0x1d548a788]
                            15   ??? (MobileSpotlightIndex + 1897532) [0x1d565743c]
                              15   ??? (MobileSpotlightIndex + 8784) [0x1d548a250]
                                8    ??? (MobileSpotlightIndex + 34432) [0x1d5490680]
                                  7    ??? (MobileSpotlightIndex + 903904) [0x1d5564ae0]
                                    6    ??? (MobileSpotlightIndex + 1499000) [0x1d55f5f78]
                                      4    ??? (MobileSpotlightIndex + 358896) [0x1d54df9f0]
                                        4    ??? (SpotlightDaemon + 208276) [0x23a50ad94]
                                          4    ??? (MobileSpotlightIndex + 1568040) [0x1d5606d28]
                                            4    ??? (MobileSpotlightIndex + 37884) [0x1d54913fc]
                                              4    ??? (MobileSpotlightIndex + 866208) [0x1d555b7a0]
                                                4    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                                  2    ??? (MobileSpotlightIndex + 172216) [0x1d54b20b8]
                                                    2    ??? (MobileSpotlightIndex + 799112) [0x1d554b188]
                                                      2    ??? (MobileSpotlightIndex + 199168) [0x1d54b8a00]
                                                        2    ??? (MobileSpotlightIndex + 216448) [0x1d54bcd80]
                                                          2    ??? (MobileSpotlightIndex + 215448) [0x1d54bc998]
                                                            2    ??? (MobileSpotlightIndex + 217688) [0x1d54bd258]
                                                              2    ??? (MobileSpotlightIndex + 897860) [0x1d5563344]
                                                                2    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                                  2    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                                    2    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                                      2    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                        2    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                          2    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                                  1    ??? (MobileSpotlightIndex + 175096) [0x1d54b2bf8]
                                                    1    ??? (MobileSpotlightIndex + 3858116) [0x1d5835ec4]
                                                      1    ??? (MobileSpotlightIndex + 2121068) [0x1d568dd6c]
                                                        1    ??? (MobileSpotlightIndex + 2337584) [0x1d56c2b30]
                                                          1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                                  1    ??? (MobileSpotlightIndex + 172424) [0x1d54b2188]
                                                    1    ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                                                      1    ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                                        1    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                          1    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                            1    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                              1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                  1    <on behalf of spotlightknowledged [11930] (originated by UNKNOWN [34])>
                                      2    ??? (MobileSpotlightIndex + 35860) [0x1d5490c14]
                                        2    ??? (SpotlightDaemon + 208276) [0x23a50ad94]
                                          2    ??? (MobileSpotlightIndex + 40688) [0x1d5491ef0]
                                            2    ??? (MobileSpotlightIndex + 37884) [0x1d54913fc]
                                              2    ??? (MobileSpotlightIndex + 38800) [0x1d5491790]
                                                2    ??? (libdispatch.dylib + 90212) [0x19f667064]
                                                  2    ??? (libdispatch.dylib + 89820) [0x19f666edc]
                                                    2    ??? (libdispatch.dylib + 93672) [0x19f667de8]
                                                      2    ??? (libdispatch.dylib + 18880) [0x19f6559c0]
                                                        2    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                          2    ??? (libdispatch.dylib + 91968) [0x19f667740]
                                                            2    ??? (libdispatch.dylib + 112612) [0x19f66c7e4]
                                                              2    ??? (MobileSpotlightIndex + 39872) [0x1d5491bc0]
                                                                2    ??? (MobileSpotlightIndex + 40856) [0x1d5491f98]
                                                                  2    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                                                    2    ??? (MobileSpotlightIndex + 172424) [0x1d54b2188]
                                                                      2    ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                                                                        2    ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                                                          2    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                                            2    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                                              2    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                                                2    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                                  2    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                    2    <Override Thread QoS Background>
                                    1    ??? (MobileSpotlightIndex + 1496840) [0x1d55f5708]
                                      1    ??? (MobileSpotlightIndex + 358896) [0x1d54df9f0]
                                        1    ??? (SpotlightDaemon + 208276) [0x23a50ad94]
                                          1    ??? (MobileSpotlightIndex + 1568040) [0x1d5606d28]
                                            1    ??? (MobileSpotlightIndex + 37884) [0x1d54913fc]
                                              1    ??? (MobileSpotlightIndex + 866208) [0x1d555b7a0]
                                                1    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                                                  1    ??? (MobileSpotlightIndex + 172076) [0x1d54b202c]
                                                    1    ??? (MobileSpotlightIndex + 3844380) [0x1d583291c]
                                                      1    ??? (libsystem_kernel.dylib + 20516) [0x1ec32e024]
                                                        1    <on behalf of Chrome [3989] (originated by Chrome [3989])>
                                  1    ??? (MobileSpotlightIndex + 757396) [0x1d5540e94]
                                    1    ??? (MobileSpotlightIndex + 37884) [0x1d54913fc]
                                      1    ??? (MobileSpotlightIndex + 759084) [0x1d554152c]
                                        1    ??? (libdispatch.dylib + 90212) [0x19f667064]
                                          1    ??? (libdispatch.dylib + 89932) [0x19f666f4c]
                                            1    ??? (libdispatch.dylib + 33968) [0x19f6594b0]
                                              1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                1    ??? (libdispatch.dylib + 92392) [0x19f6678e8]
                                                  1    ??? (libdispatch.dylib + 112612) [0x19f66c7e4]
                                                    1    ??? (MobileSpotlightIndex + 760124) [0x1d554193c]
                                                      1    ??? (MobileSpotlightIndex + 760912) [0x1d5541c50]
                                                        1    ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                                                          1    ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                                            1    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                              1    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                                1    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                                  1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                                    1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                      1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                7    ??? (MobileSpotlightIndex + 317864) [0x1d54d59a8]
                                  5    ??? (MobileSpotlightIndex + 3868952) [0x1d5838918]
                                    5    ??? (MobileSpotlightIndex + 2098792) [0x1d5688668]
                                      4    ??? (MobileSpotlightIndex + 2151264) [0x1d5695360]
                                        3    ??? (MobileSpotlightIndex + 2041016) [0x1d567a4b8]
                                          3    ??? (libsystem_platform.dylib + 3408) [0x22660bd50]
                                            1    <on behalf of UNKNOWN [244] (originated by UNKNOWN [244])>
                                            1    <on behalf of Outlook-iOS (Outlook) [14795] (originated by Outlook-iOS (Outlook) [14795])>
                                        1    ??? (MobileSpotlightIndex + 2040864) [0x1d567a420]
                                          1    ??? (MobileSpotlightIndex + 2041124) [0x1d567a524]
                                            1    ??? (MobileSpotlightIndex + 2041984) [0x1d567a880]
                                              1    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                1    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                  1    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                    1    ??? (MobileSpotlightIndex + 2044068) [0x1d567b0a4]
                                                      1    ??? (MobileSpotlightIndex + 2043764) [0x1d567af74]
                                                        1    ??? (libsystem_platform.dylib + 3320) [0x22660bcf8]
                                                          1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032]), Override Thread QoS Background>
                                      1    ??? (MobileSpotlightIndex + 2153784) [0x1d5695d38]
                                        1    ??? (MobileSpotlightIndex + 2233076) [0x1d56a92f4]
                                          1    <on behalf of fileproviderd [14357] (originated by fileproviderd [14357])>
                                  1    ??? (MobileSpotlightIndex + 814372) [0x1d554ed24]
                                    1    ??? (MobileSpotlightIndex + 823700) [0x1d5551194]
                                      1    ??? (libsystem_kernel.dylib + 25760) [0x1ec32f4a0]
                                        1    <Override Thread QoS Background>
                                  1    ??? (MobileSpotlightIndex + 813412) [0x1d554e964]
                                    1    ??? (MobileSpotlightIndex + 837792) [0x1d55548a0]
                                      1    ??? (MobileSpotlightIndex + 840884) [0x1d55554b4]
                                        1    ??? (MobileSpotlightIndex + 580300) [0x1d5515acc]
                                          1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                            1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                              1    <Override Thread QoS Background>
                          1    ??? (MobileSpotlightIndex + 9952) [0x1d548a6e0]
                            1    ??? (MobileSpotlightIndex + 1897532) [0x1d565743c]
                              1    ??? (MobileSpotlightIndex + 8784) [0x1d548a250]
                                1    ??? (MobileSpotlightIndex + 317864) [0x1d54d59a8]
                                  1    ??? (MobileSpotlightIndex + 813412) [0x1d554e964]
                                    1    ??? (MobileSpotlightIndex + 837232) [0x1d5554670]
                                      1    ??? (MobileSpotlightIndex + 834708) [0x1d5553c94]
                                        1    ??? (MobileSpotlightIndex + 834956) [0x1d5553d8c]
                                          1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                            1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
        16   ??? (libdispatch.dylib + 82076) [0x19f66509c]
          16   ??? (libdispatch.dylib + 230392) [0x19f6893f8]
            16   ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
              16   ??? (libdispatch.dylib + 88192) [0x19f666880]
                16   ??? (libdispatch.dylib + 18880) [0x19f6559c0]
                  16   ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                    16   ??? (libdispatch.dylib + 91968) [0x19f667740]
                      16   ??? (libdispatch.dylib + 112612) [0x19f66c7e4]
                        6    ??? (MobileSpotlightIndex + 39872) [0x1d5491bc0]
                          6    ??? (MobileSpotlightIndex + 40856) [0x1d5491f98]
                            6    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                              5    ??? (MobileSpotlightIndex + 172424) [0x1d54b2188]
                                5    ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                                  5    ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                    5    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                      5    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                        5    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                          5    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                            5    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                              5    <Override Thread QoS Background>
                              1    ??? (MobileSpotlightIndex + 173116) [0x1d54b243c]
                                1    ??? (MobileSpotlightIndex + 196792) [0x1d54b80b8]
                                  1    ??? (MobileSpotlightIndex + 199168) [0x1d54b8a00]
                                    1    ??? (MobileSpotlightIndex + 216448) [0x1d54bcd80]
                                      1    ??? (MobileSpotlightIndex + 215448) [0x1d54bc998]
                                        1    ??? (MobileSpotlightIndex + 217480) [0x1d54bd188]
                                          1    ??? (MobileSpotlightIndex + 221740) [0x1d54be22c]
                                            1    ??? (MobileSpotlightIndex + 218784) [0x1d54bd6a0]
                                              1    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                                1    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                                  1    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                                    1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                      1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                        1    <Override Thread QoS Background>
                        5    ??? (MobileSpotlightIndex + 890408) [0x1d5561628]
                          5    ??? (MobileSpotlightIndex + 54712) [0x1d54955b8]
                            3    ??? (MobileSpotlightIndex + 172424) [0x1d54b2188]
                              3    ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                                3    ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                  3    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                    3    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                      3    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                        3    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                          3    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                            2    <on behalf of spotlightknowledged [11930] (originated by UNKNOWN [34])>
                                            1    <on behalf of maild [303] (originated by maild [303]), Override Thread QoS Background>
                            1    ??? (MobileSpotlightIndex + 172216) [0x1d54b20b8]
                              1    ??? (MobileSpotlightIndex + 799112) [0x1d554b188]
                                1    ??? (MobileSpotlightIndex + 199168) [0x1d54b8a00]
                                  1    ??? (MobileSpotlightIndex + 216448) [0x1d54bcd80]
                                    1    ??? (MobileSpotlightIndex + 215448) [0x1d54bc998]
                                      1    ??? (MobileSpotlightIndex + 217688) [0x1d54bd258]
                                        1    ??? (MobileSpotlightIndex + 898668) [0x1d556366c]
                                          1    ??? (MobileSpotlightIndex + 4289840) [0x1d589f530]
                                            1    ??? (MobileSpotlightIndex + 81072) [0x1d549bcb0]
                                              1    ??? (MobileSpotlightIndex + 600216) [0x1d551a898]
                                                1    ??? (MobileSpotlightIndex + 223428) [0x1d54be8c4]
                                                  1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                                    1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                      1    <on behalf of Developer [3824] (originated by Developer [3824]), Override Thread QoS Background>
                            1    ??? (MobileSpotlightIndex + 171956) [0x1d54b1fb4]
                              1    ??? (MobileSpotlightIndex + 360632) [0x1d54e00b8]
                                1    ??? (MobileSpotlightIndex + 363324) [0x1d54e0b3c]
                                  1    ??? (MobileSpotlightIndex + 883028) [0x1d555f954]
                                    1    ??? (libsystem_kernel.dylib + 24616) [0x1ec32f028]
                                      1    <on behalf of maild [10674] (originated by maild [10674])>
                        3    ??? (MobileSpotlightIndex + 760124) [0x1d554193c]
                          3    ??? (MobileSpotlightIndex + 760912) [0x1d5541c50]
                            3    ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                              3    ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                3    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                  3    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                    3    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                      3    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                        3    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                          1    <on behalf of UNKNOWN [12863] (originated by UNKNOWN [12863]), Override Thread QoS Background>
                                          1    <on behalf of UNKNOWN [14919] (originated by UNKNOWN [14919]), Override Thread QoS Background>
                                          1    <on behalf of Preferences (Settings) [15237] (originated by Preferences (Settings) [15237]), Override Thread QoS Background>
                        1    ??? (MobileSpotlightIndex + 1569640) [0x1d5607368]
                          1    ??? (MobileSpotlightIndex + 760912) [0x1d5541c50]
                            1    ??? (MobileSpotlightIndex + 101996) [0x1d54a0e6c]
                              1    ??? (MobileSpotlightIndex + 84344) [0x1d549c978]
                                1    ??? (MobileSpotlightIndex + 67116) [0x1d549862c]
                                  1    ??? (MobileSpotlightIndex + 622220) [0x1d551fe8c]
                                    1    ??? (MobileSpotlightIndex + 600812) [0x1d551aaec]
                                      1    ??? (MobileSpotlightIndex + 195268) [0x1d54b7ac4]
                                        1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                          1    <on behalf of fileproviderd [14405] (originated by fileproviderd [14405]), Override Thread QoS Background>
                        1    ??? (CoreFoundation + 768344) [0x196f11958]
                          1    ??? (CoreFoundation + 1726752) [0x196ffb920]
                            1    ??? (CoreFoundation + 110232) [0x196e70e98]
                              1    ??? (SpotlightDaemon + 441648) [0x23a543d30]
                                1    ??? (SpotlightDaemon + 201484) [0x23a50930c]
                                  1    ??? (MobileSpotlightIndex + 4115068) [0x1d5874a7c]
                                    1    ??? (MobileSpotlightIndex + 1752736) [0x1d5633ea0]
                                      1    ??? (MobileSpotlightIndex + 1601444) [0x1d560efa4]
                                        1    ??? (MobileSpotlightIndex + 1728712) [0x1d562e0c8]
                                          1    ??? (MobileSpotlightIndex + 4032460) [0x1d58607cc]
                                            1    ??? (MobileSpotlightIndex + 2178220) [0x1d569bcac]
                                              1    ??? (MobileSpotlightIndex + 4068536) [0x1d58694b8]
                                                1    ??? (MobileSpotlightIndex + 2290080) [0x1d56b71a0]
                                                  1    ??? (MobileSpotlightIndex + 3784936) [0x1d58240e8]
                                                    1    ??? (MobileSpotlightIndex + 4007224) [0x1d585a538]
                                                      1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                        1    <Requested Thread QoS Default>
    30   ??? (libsystem_pthread.dylib + 2572) [0x2266bea0c]
      30   ??? (libdispatch.dylib + 85188) [0x19f665cc4]
        30   ??? (libdispatch.dylib + 86988) [0x19f6663cc]
          28   ??? (libdispatch.dylib + 48864) [0x19f65cee0]
            28   ??? (libdispatch.dylib + 44888) [0x19f65bf58]
              28   ??? (libdispatch.dylib + 42056) [0x19f65b448]
                28   ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                  16   ??? (MobileSpotlightIndex + 10120) [0x1d548a788]
                    16   ??? (MobileSpotlightIndex + 1897532) [0x1d565743c]
                      16   ??? (MobileSpotlightIndex + 8784) [0x1d548a250]
                        16   ??? (MobileSpotlightIndex + 10404) [0x1d548a8a4]
                          16   ??? (SpotlightDaemon + 8348) [0x23a4da09c]
                            16   ??? (SpotlightDaemon + 262564) [0x23a5181a4]
                              16   ??? (MobileSpotlightIndex + 348696) [0x1d54dd218]
                                7    ??? (MobileSpotlightIndex + 351524) [0x1d54ddd24]
                                  7    ??? (libsystem_kernel.dylib + 84484) [0x1ec33da04]
                                    4    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
                                    1    <on behalf of fileproviderd [11913] (originated by fileproviderd [11913])>
                                    1    <on behalf of UNKNOWN [13308] (originated by Preferences (Settings) [13030])>
                                    1    <on behalf of fileproviderd [14357] (originated by fileproviderd [14357])>
                                6    ??? (MobileSpotlightIndex + 351576) [0x1d54ddd58]
                                  6    ??? (libsystem_kernel.dylib + 84484) [0x1ec33da04]
                                    5    <on behalf of Developer [15693] (originated by Developer [15693])>
                                    1    <on behalf of Outlook-iOS (Outlook) [14331] (originated by Outlook-iOS (Outlook) [14331])>
                                2    ??? (MobileSpotlightIndex + 351328) [0x1d54ddc60]
                                  2    ??? (libsystem_kernel.dylib + 84484) [0x1ec33da04]
                                    1    <on behalf of Chrome [3989] (originated by Chrome [3989])>
                                    1    <on behalf of spotlightknowledged [11930] (originated by UNKNOWN [34]), Effective Thread QoS Utility, Requested Thread QoS Utility>
                                1    ??? (MobileSpotlightIndex + 349944) [0x1d54dd6f8]
                                  1    ??? (MobileSpotlightIndex + 13652) [0x1d548b554]
                                    1    ??? (MobileSpotlightIndex + 14900) [0x1d548ba34]
                                      1    ??? (MobileSpotlightIndex + 15920) [0x1d548be30]
                                        1    ??? (MobileSpotlightIndex + 18976) [0x1d548ca20]
                                          1    ??? (MobileSpotlightIndex + 16984) [0x1d548c258]
                                            1    ??? (libsystem_kernel.dylib + 27212) [0x1ec32fa4c]
                                              1    <on behalf of Developer [15693] (originated by Developer [15693])>
                  5    ??? (MobileSpotlightIndex + 9952) [0x1d548a6e0]
                    5    ??? (MobileSpotlightIndex + 1897532) [0x1d565743c]
                      5    ??? (MobileSpotlightIndex + 8784) [0x1d548a250]
                        5    ??? (MobileSpotlightIndex + 10404) [0x1d548a8a4]
                          5    ??? (SpotlightDaemon + 8348) [0x23a4da09c]
                            4    ??? (SpotlightDaemon + 262564) [0x23a5181a4]
                              4    ??? (MobileSpotlightIndex + 348696) [0x1d54dd218]
                                2    ??? (MobileSpotlightIndex + 351524) [0x1d54ddd24]
                                  2    ??? (libsystem_kernel.dylib + 84484) [0x1ec33da04]
                                    1    <on behalf of UNKNOWN [877] (originated by CommCenter [104])>
                                    1    <on behalf of Preferences (Settings) [15237] (originated by Preferences (Settings) [15237])>
                                1    ??? (MobileSpotlightIndex + 351576) [0x1d54ddd58]
                                  1    ??? (libsystem_kernel.dylib + 84484) [0x1ec33da04]
                                    1    <on behalf of Preferences (Settings) [15237] (originated by Preferences (Settings) [15237])>
                                1    ??? (MobileSpotlightIndex + 349944) [0x1d54dd6f8]
                                  1    ??? (MobileSpotlightIndex + 13652) [0x1d548b554]
                                    1    ??? (MobileSpotlightIndex + 14900) [0x1d548ba34]
                                      1    ??? (MobileSpotlightIndex + 15920) [0x1d548be30]
                                        1    ??? (MobileSpotlightIndex + 18976) [0x1d548ca20]
                                          1    ??? (MobileSpotlightIndex + 16984) [0x1d548c258]
                                            1    ??? (libsystem_kernel.dylib + 27212) [0x1ec32fa4c]
                                              1    <on behalf of UNKNOWN [12999] (originated by CommCenter [104])>
                            1    ??? (SpotlightDaemon + 273356) [0x23a51abcc]
                              1    ??? (MobileSpotlightIndex + 12204) [0x1d548afac]
                                1    ??? (MobileSpotlightIndex + 27404) [0x1d548eb0c]
                                  1    ??? (libsystem_kernel.dylib + 84484) [0x1ec33da04]
                                    1    <on behalf of biomed [55] (originated by SpringBoard [37])>
                  4    ??? (MobileSpotlightIndex + 9964) [0x1d548a6ec]
                    4    ??? (MobileSpotlightIndex + 1897532) [0x1d565743c]
                      4    ??? (MobileSpotlightIndex + 8784) [0x1d548a250]
                        4    ??? (MobileSpotlightIndex + 10404) [0x1d548a8a4]
                          4    ??? (SpotlightDaemon + 8348) [0x23a4da09c]
                            4    ??? (SpotlightDaemon + 262564) [0x23a5181a4]
                              4    ??? (MobileSpotlightIndex + 348696) [0x1d54dd218]
                                3    ??? (MobileSpotlightIndex + 351524) [0x1d54ddd24]
                                  3    ??? (libsystem_kernel.dylib + 84484) [0x1ec33da04]
                                    2    <on behalf of maild [10674] (originated by maild [10674])>
                                    1    <on behalf of maild [5059] (originated by maild [5059])>
                                1    ??? (MobileSpotlightIndex + 351728) [0x1d54dddf0]
                                  1    ??? (MobileSpotlightIndex + 353484) [0x1d54de4cc]
                                    1    ??? (libsystem_kernel.dylib + 84484) [0x1ec33da04]
                                      1    <on behalf of maild [303] (originated by maild [303])>
                  3    ??? (libdispatch.dylib + 70704) [0x19f662430]
                    3    ??? (MobileSpotlightIndex + 10120) [0x1d548a788]
                      3    ??? (MobileSpotlightIndex + 1897532) [0x1d565743c]
                        3    ??? (MobileSpotlightIndex + 8784) [0x1d548a250]
                          3    ??? (MobileSpotlightIndex + 10404) [0x1d548a8a4]
                            3    ??? (SpotlightDaemon + 8348) [0x23a4da09c]
                              3    ??? (SpotlightDaemon + 525308) [0x23a5583fc]
                                3    ??? (MobileSpotlightIndex + 348696) [0x1d54dd218]
                                  2    ??? (MobileSpotlightIndex + 351328) [0x1d54ddc60]
                                    2    ??? (libsystem_kernel.dylib + 84484) [0x1ec33da04]
                                      2    <on behalf of UNKNOWN [244] (originated by UNKNOWN [244])>
                                  1    ??? (MobileSpotlightIndex + 351728) [0x1d54dddf0]
                                    1    ??? (MobileSpotlightIndex + 353484) [0x1d54de4cc]
                                      1    ??? (libsystem_kernel.dylib + 84484) [0x1ec33da04]
                                        1    <on behalf of UNKNOWN [12032] (originated by UNKNOWN [12032])>
          2    ??? (libdispatch.dylib + 44888) [0x19f65bf58]
            2    ??? (libdispatch.dylib + 42056) [0x19f65b448]
              2    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                2    ??? (libdispatch.dylib + 6844) [0x19f652abc]
                  2    ??? (BiomeStreams + 1184468) [0x1a37c92d4]
                    2    ??? (BiomeStreams + 1186388) [0x1a37c9a54]
                      2    ??? (BiomeStreams + 499580) [0x1a3721f7c]
                        2    ??? (BiomeFoundation + 140504) [0x1ca7764d8]
                          2    ??? (BiomeFoundation + 74012) [0x1ca76611c]
                            2    ??? (Foundation + 9640936) [0x19617dbe8]
                              2    ??? (Foundation + 9640624) [0x19617dab0]
                                2    ??? (Foundation + 9531800) [0x196163198]
                                  2    ??? (Foundation + 9640836) [0x19617db84]
                                    2    ??? (libsystem_kernel.dylib + 20516) [0x1ec32e024]
                                      2    <on behalf of biomed [7783] (originated by SpringBoard [37])>

  Binary Images:
           0x1006ec000 -                ???  searchd                  <736B5664-4F0E-3070-A2CF-33DAD71346B8>  /System/Library/PrivateFrameworks/Search.framework/searchd
           0x19584c000 -        0x1966bfe1f  Foundation               <6C918DA7-AD82-3699-99AB-30DF73088BB5>  /System/Library/Frameworks/Foundation.framework/Foundation
           0x196e56000 -        0x1973dfcff  CoreFoundation           <2A272802-97C0-323E-BFCF-7C7C9232AF79>  /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
           0x19f651000 -        0x19f69721f  libdispatch.dylib        <C4A46C83-ED82-3F9A-B1FE-0EB48C7A4F18>  /usr/lib/system/libdispatch.dylib
           0x1a36a8000 -        0x1a3c33c9f  BiomeStreams             <AE2A4D12-3117-387F-973E-98536B337C09>  /System/Library/PrivateFrameworks/BiomeStreams.framework/BiomeStreams
           0x1ca754000 -        0x1ca7a5f5f  BiomeFoundation          <90868C9C-86AE-3F87-A58B-CB623CBF1C04>  /System/Library/PrivateFrameworks/BiomeFoundation.framework/BiomeFoundation
           0x1d5488000 -        0x1d593a2ff  MobileSpotlightIndex     <626B5540-D38A-3D50-B85E-DA2C5844303C>  /System/Library/PrivateFrameworks/MobileSpotlightIndex.framework/MobileSpotlightIndex
           0x1ec329000 -        0x1ec363f5f  libsystem_kernel.dylib   <DDB32429-91E9-39F6-9665-3CC1F44502AD>  /usr/lib/system/libsystem_kernel.dylib
           0x22660b000 -        0x226612af7  libsystem_platform.dylib <E927B5A0-DBF9-3326-B437-C5E7B86F32DE>  /usr/lib/system/libsystem_platform.dylib
           0x2266be000 -        0x2266ca3f3  libsystem_pthread.dylib  <65C2B5C0-EDD7-3F41-9B47-F95ABAFF89DB>  /usr/lib/system/libsystem_pthread.dylib
           0x23a4d8000 -        0x23a5c43ff  SpotlightDaemon          <ACF7CD71-0439-3DA1-B910-0FDCE4372A06>  /System/Library/PrivateFrameworks/SpotlightDaemon.framework/SpotlightDaemon


Powerstats for:   analyticsd
UUID:             50323E67-1AC1-3D30-A2B3-7EDB19A386BA
Path:             /System/Library/PrivateFrameworks/CoreAnalytics.framework/Support/analyticsd
Resource Coalition: 261 samples 175
On Behalf Of:     123 samples UNKNOWN [34, 51, 54, 66, 70, 72, 101, 115, 132, 144, 875, 969, 1334, 4824, 5079, 7395, 8152, 9015, 9665, 11388, 12141, 12316, 13210, 13249, 13272, 13410, 14011, 14356, 14582, 15250, 15516, 15533, 15541, 15727, 16228] (98 samples originated by UNKNOWN [34, 51, 70, 101, 115, 132, 144, 6637, 9015, 9665, 12141, 12316, 13410, 13758, 14356, 14582, 15430, 15694, 15711], 6 samples originated by Chrome [3989, 14471, 15482], 6 samples originated by CommCenter [104], 3 samples originated by SpringBoard [37], 2 samples originated by contextstored [6416], 1 sample originated by AccessibilityUIServer [193], 1 sample originated by apsd [178], 1 sample originated by dasd [15924], 1 sample originated by Developer [3824], 1 sample originated by maild [303], 1 sample originated by MobileSafari [13787], 1 sample originated by Preferences (Settings) [13030], 1 sample originated by WhatsApp (WhatsApp Business) [13339]), 18 samples backboardd [74] (14 samples originated by backboardd [74], 4 samples originated by UNKNOWN [132]), 14 samples locationd [80] (11 samples originated by locationd [80], 1 sample originated by CommCenter [104], 1 sample originated by SpringBoard [37], 1 sample originated by UNKNOWN [34]), 10 samples contextstored [71, 6416] (6 samples originated by locationd [80], 4 samples originated by contextstored [71, 6416]), 10 samples keybagd [926, 4278, 12882, 14887] (10 samples originated by keybagd [926, 4278, 12882, 14887]), 8 samples PerfPowerServices [92, 10220] (5 samples originated by PerfPowerServices [92, 10220], 2 samples originated by SpringBoard [37], 1 sample originated by UNKNOWN [2209]), 8 samples SpringBoard [37] (6 samples originated by SpringBoard [37], 2 samples originated by apsd [178]), 7 samples dasd [87, 15924] (5 samples originated by UNKNOWN [34], 2 samples originated by dasd [87]), 5 samples wirelessinsightsd [145] (5 samples originated by CommCenter [104]), 3 samples AccessibilityUIServer [193] (3 samples originated by AccessibilityUIServer [193]), 3 samples biomed [55, 7783] (2 samples originated by intelligenceplatformd [369], 1 sample originated by contextstored [6416]), 3 samples com.apple.SpeechRecognitionCore.speechrecognitiond [15428] (3 samples originated by UNKNOWN [15543, 15786]), 3 samples kbd [272] (3 samples originated by kbd [272]), 3 samples MobileSafari [13787] (2 samples originated by MobileSafari [13787], 1 sample originated by SpringBoard [37]), 3 samples wifid [56] (3 samples originated by wifid [56]), 2 samples Chrome [3989, 14471] (2 samples originated by Chrome [3989, 14471]), 2 samples CommCenter [104] (2 samples originated by CommCenter [104]), 2 samples iOS_NG_OPAY [4354] (2 samples originated by iOS_NG_OPAY [4354]), 2 samples localspeechrecognition [15366, 15438] (2 samples originated by AccessibilityUIServer [193]), 2 samples timed [77] (1 sample originated by CommCenter [104], 1 sample originated by timed [77]), 1 sample assetsd [3741] (1 sample originated by assetsd [3741]), 1 sample chronod [130] (1 sample originated by duetexpertd [919]), 1 sample com.apple.siri.embeddedspeech [2845] (1 sample originated by UNKNOWN [2840]), 1 sample coreduetd [11002] (1 sample originated by Chrome [14471]), 1 sample intelligenceplatformd [13494] (1 sample originated by intelligenceplatformd [13494]), 1 sample Preferences (Settings) [15738] (1 sample originated by Preferences (Settings) [15738]), 1 sample ScreenTimeWebExtension [3998] (1 sample originated by Chrome [3989]), 1 sample searchd [1300] (1 sample originated by UNKNOWN [6065]), 1 sample spotlightknowledged [11930] (1 sample originated by UNKNOWN [34]), 1 sample symptomsd [143] (1 sample originated by symptomsd [143]), 1 sample WhatsApp (WhatsApp Business) [1816] (1 sample originated by WhatsApp (WhatsApp Business) [1816])
Architecture:     arm64
Start time:       2025-06-30 11:14:25.978 +0200
End time:         2025-07-01 01:24:52.723 +0200
Num samples:      261 (6%)
Primary state:    229 samples Non-Frontmost App, Non-Suppressed, Kernel mode, Effective Thread QoS Background, Requested Thread QoS Background, Override Thread QoS Unspecified, e-core
User Activity:    39 samples Idle, 222 samples Active
Power Source:     160 samples on Battery, 101 samples on AC
  261  ??? (libsystem_pthread.dylib + 2732) [0x2266beaac]
    260  ??? (libsystem_pthread.dylib + 2572) [0x2266bea0c]
      260  ??? (libdispatch.dylib + 85188) [0x19f665cc4]
        260  ??? (libdispatch.dylib + 86988) [0x19f6663cc]
          260  ??? (libdispatch.dylib + 44836) [0x19f65bf24]
            198  ??? (libdispatch.dylib + 41648) [0x19f65b2b0]
              198  ??? (libdispatch.dylib + 126460) [0x19f66fdfc]
                198  ??? (libdispatch.dylib + 41648) [0x19f65b2b0]
                  198  ??? (libdispatch.dylib + 123028) [0x19f66f094]
                    198  ??? (libdispatch.dylib + 112660) [0x19f66c814]
                      198  ??? (libxpc.dylib + 78872) [0x22671c418]
                        198  ??? (libxpc.dylib + 71732) [0x22671a834]
                          198  ??? (analyticsd + 6324) [0x1009dd8b4]
                            198  ??? (analyticsd + 5824) [0x1009dd6c0]
                              198  ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                198  ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                  198  ??? (analyticsd + 8224) [0x1009de020]
                                    198  ??? (analyticsd + 12308) [0x1009df014]
                                      198  ??? (analyticsd + 29176) [0x1009e31f8]
                                        198  ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                          198  ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                            198  ??? (analyticsd + 29920) [0x1009e34e0]
                                              198  ??? (analyticsd + 48424) [0x1009e7d28]
                                                198  ??? (analyticsd + 621356) [0x100a73b2c]
                                                  198  ??? (analyticsd + 251668) [0x100a19714]
                                                    177  ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                                      177  ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                        173  ??? (analyticsd + 259768) [0x100a1b6b8]
                                                          173  ??? (analyticsd + 42424) [0x1009e65b8]
                                                            173  ??? (analyticsd + 46476) [0x1009e758c]
                                                              169  ??? (analyticsd + 261844) [0x100a1bed4]
                                                                169  ??? (analyticsd + 88264) [0x1009f18c8]
                                                                  169  ??? (analyticsd + 88664) [0x1009f1a58]
                                                                    169  ??? (analyticsd + 127652) [0x1009fb2a4]
                                                                      169  ??? (analyticsd + 70872) [0x1009ed4d8]
                                                                        169  ??? (analyticsd + 70300) [0x1009ed29c]
                                                                          169  ??? (analyticsd + 127956) [0x1009fb3d4]
                                                                            169  ??? (analyticsd + 127828) [0x1009fb354]
                                                                              168  ??? (analyticsd + 128080) [0x1009fb450]
                                                                                168  ??? (analyticsd + 128280) [0x1009fb518]
                                                                                  168  ??? (analyticsd + 72920) [0x1009edcd8]
                                                                                    168  ??? (analyticsd + 128664) [0x1009fb698]
                                                                                      168  ??? (analyticsd + 649540) [0x100a7a944]
                                                                                        168  ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                                                                          168  ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                                                            168  ??? (analyticsd + 668992) [0x100a7f540]
                                                                                              168  ??? (analyticsd + 688780) [0x100a8428c]
                                                                                                168  ??? (analyticsd + 131224) [0x1009fc098]
                                                                                                  168  ??? (analyticsd + 131088) [0x1009fc010]
                                                                                                    168  ??? (libsqlite3.dylib + 33036) [0x1c841010c]
                                                                                                      135  ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                                                                                        135  ??? (libsqlite3.dylib + 233516) [0x1c844102c]
                                                                                                          135  ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                                                                                            135  ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                                                                              135  ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                                                                                135  ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                                                                                  131  ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                                                                                    131  ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                                                      131  ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                                                        20   <on behalf of UNKNOWN [12141] (originated by UNKNOWN [34])>
                                                                                                                        10   <on behalf of backboardd [74] (originated by backboardd [74])>
                                                                                                                        5    <on behalf of locationd [80] (originated by locationd [80])>
                                                                                                                        4    <on behalf of SpringBoard [37] (originated by SpringBoard [37])>
                                                                                                                        4    <on behalf of wirelessinsightsd [145] (originated by CommCenter [104])>
                                                                                                                        4    <on behalf of UNKNOWN [11388] (originated by UNKNOWN [115])>
                                                                                                                        4    <on behalf of UNKNOWN [12141] (originated by UNKNOWN [12141])>
                                                                                                                        4    <on behalf of UNKNOWN [14011] (originated by UNKNOWN [34])>
                                                                                                                        3    <on behalf of UNKNOWN [144] (originated by UNKNOWN [144])>
                                                                                                                        3    <on behalf of PerfPowerServices [10220] (originated by PerfPowerServices [10220])>
                                                                                                                        2    <on behalf of UNKNOWN [51] (originated by UNKNOWN [51])>
                                                                                                                        2    <on behalf of UNKNOWN [54] (originated by CommCenter [104])>
                                                                                                                        2    <on behalf of dasd [87] (originated by UNKNOWN [34])>
                                                                                                                        2    <on behalf of UNKNOWN [144] (originated by UNKNOWN [34])>
                                                                                                                        2    <on behalf of AccessibilityUIServer [193] (originated by AccessibilityUIServer [193])>
                                                                                                                        2    <on behalf of kbd [272] (originated by kbd [272])>
                                                                                                                        2    <on behalf of UNKNOWN [969] (originated by UNKNOWN [115])>
                                                                                                                        2    <on behalf of iOS_NG_OPAY [4354] (originated by iOS_NG_OPAY [4354])>
                                                                                                                        2    <on behalf of contextstored [6416] (originated by locationd [80])>
                                                                                                                        2    <on behalf of keybagd [12882] (originated by keybagd [12882])>
                                                                                                                        2    <on behalf of MobileSafari [13787] (originated by MobileSafari [13787])>
                                                                                                                        2    <on behalf of keybagd [14887] (originated by keybagd [14887])>
                                                                                                                        2    <on behalf of UNKNOWN [15250] (originated by contextstored [6416])>
                                                                                                                        2    <on behalf of com.apple.SpeechRecognitionCore.speechrecognitiond [15428] (originated by UNKNOWN [15543])>
                                                                                                                        1    <on behalf of UNKNOWN [34] (originated by UNKNOWN [34])>
                                                                                                                        1    <on behalf of UNKNOWN [34] (originated by apsd [178])>
                                                                                                                        1    <on behalf of SpringBoard [37] (originated by apsd [178])>
                                                                                                                        1    <on behalf of biomed [55] (originated by intelligenceplatformd [369])>
                                                                                                                        1    <on behalf of backboardd [74] (originated by UNKNOWN [132])>
                                                                                                                        1    <on behalf of timed [77] (originated by timed [77])>
                                                                                                                        1    <on behalf of locationd [80] (originated by CommCenter [104])>
                                                                                                                        1    <on behalf of dasd [87] (originated by dasd [87])>
                                                                                                                        1    <on behalf of PerfPowerServices [92] (originated by SpringBoard [37])>
                                                                                                                        1    <on behalf of PerfPowerServices [92] (originated by PerfPowerServices [92])>
                                                                                                                        1    <on behalf of UNKNOWN [101] (originated by UNKNOWN [115])>
                                                                                                                        1    <on behalf of CommCenter [104] (originated by CommCenter [104])>
                                                                                                                        1    <on behalf of chronod [130] (originated by duetexpertd [919])>
                                                                                                                        1    <on behalf of UNKNOWN [1334] (originated by SpringBoard [37])>
                                                                                                                        1    <on behalf of com.apple.siri.embeddedspeech [2845] (originated by UNKNOWN [2840])>
                                                                                                                        1    <on behalf of assetsd [3741] (originated by assetsd [3741])>
                                                                                                                        1    <on behalf of Chrome [3989] (originated by Chrome [3989])>
                                                                                                                        1    <on behalf of contextstored [6416] (originated by contextstored [6416])>
                                                                                                                        1    <on behalf of biomed [7783] (originated by contextstored [6416])>
                                                                                                                        1    <on behalf of PerfPowerServices [10220] (originated by SpringBoard [37])>
                                                                                                                        1    <on behalf of UNKNOWN [11388] (originated by UNKNOWN [13758])>
                                                                                                                        1    <on behalf of UNKNOWN [11388] (originated by Chrome [14471])>
                                                                                                                        1    <on behalf of UNKNOWN [11388] (originated by UNKNOWN [15430])>
                                                                                                                        1    <on behalf of UNKNOWN [11388] (originated by Chrome [15482])>
                                                                                                                        1    <on behalf of spotlightknowledged [11930] (originated by UNKNOWN [34])>
                                                                                                                        1    <on behalf of UNKNOWN [12316] (originated by UNKNOWN [12316])>
                                                                                                                        1    <on behalf of intelligenceplatformd [13494] (originated by intelligenceplatformd [13494])>
                                                                                                                        1    <on behalf of MobileSafari [13787] (originated by SpringBoard [37])>
                                                                                                                        1    <on behalf of UNKNOWN [14356] (originated by UNKNOWN [14356])>
                                                                                                                        1    <on behalf of UNKNOWN [14582] (originated by UNKNOWN [14582])>
                                                                                                                        1    <on behalf of localspeechrecognition [15366] (originated by AccessibilityUIServer [193])>
                                                                                                                        1    <on behalf of com.apple.SpeechRecognitionCore.speechrecognitiond [15428] (originated by UNKNOWN [15786])>
                                                                                                                        1    <on behalf of UNKNOWN [15516] (originated by UNKNOWN [15694])>
                                                                                                                        1    <on behalf of UNKNOWN [15533] (originated by UNKNOWN [15711])>
                                                                                                                        1    <on behalf of UNKNOWN [15541] (originated by AccessibilityUIServer [193])>
                                                                                                                        1    <on behalf of UNKNOWN [15727] (originated by SpringBoard [37])>
                                                                                                                        1    <on behalf of Preferences (Settings) [15738] (originated by Preferences (Settings) [15738])>
                                                                                                                        1    <on behalf of UNKNOWN [16228] (originated by UNKNOWN [34])>
                                                                                                                        1    <on behalf of timed [77] (originated by CommCenter [104]), Effective Thread QoS Utility>
                                                                                                                        1    <on behalf of dasd [87] (originated by UNKNOWN [34]), Effective Thread QoS Default>
                                                                                                                        1    <on behalf of UNKNOWN [7395] (originated by Chrome [3989]), Effective Thread QoS Default>
                                                                                                                        1    <on behalf of UNKNOWN [9015] (originated by UNKNOWN [9015]), Effective Thread QoS Default>
                                                                                                                  2    ??? (libsqlite3.dylib + 698544) [0x1c84b28b0]
                                                                                                                    2    ??? (libsqlite3.dylib + 700624) [0x1c84b30d0]
                                                                                                                      2    ??? (libsystem_kernel.dylib + 34060) [0x1ec33150c]
                                                                                                                        1    <on behalf of UNKNOWN [12141] (originated by UNKNOWN [12141])>
                                                                                                                        1    <on behalf of localspeechrecognition [15438] (originated by AccessibilityUIServer [193])>
                                                                                                                  1    ??? (libsqlite3.dylib + 697856) [0x1c84b2600]
                                                                                                                    1    ??? (libsqlite3.dylib + 328596) [0x1c8458394]
                                                                                                                      1    ??? (libsystem_kernel.dylib + 23908) [0x1ec32ed64]
                                                                                                                        1    <on behalf of coreduetd [11002] (originated by Chrome [14471])>
                                                                                                                  1    ??? (libsqlite3.dylib + 697780) [0x1c84b25b4]
                                                                                                                    1    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                                                      1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                                                        1    <on behalf of locationd [80] (originated by locationd [80])>
                                                                                                      33   ??? (libsqlite3.dylib + 191940) [0x1c8436dc4]
                                                                                                        33   ??? (libsqlite3.dylib + 329196) [0x1c84585ec]
                                                                                                          33   ??? (libsqlite3.dylib + 563436) [0x1c84918ec]
                                                                                                            33   ??? (libsqlite3.dylib + 1165904) [0x1c8524a50]
                                                                                                              33   ??? (libsqlite3.dylib + 408524) [0x1c846bbcc]
                                                                                                                33   ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                                                  33   ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                                                    3    <on behalf of wifid [56] (originated by wifid [56])>
                                                                                                                    3    <on behalf of keybagd [12882] (originated by keybagd [12882])>
                                                                                                                    2    <on behalf of UNKNOWN [11388] (originated by UNKNOWN [115])>
                                                                                                                    2    <on behalf of UNKNOWN [12141] (originated by UNKNOWN [34])>
                                                                                                                    1    <on behalf of UNKNOWN [51] (originated by UNKNOWN [51])>
                                                                                                                    1    <on behalf of UNKNOWN [54] (originated by CommCenter [104])>
                                                                                                                    1    <on behalf of UNKNOWN [70] (originated by UNKNOWN [70])>
                                                                                                                    1    <on behalf of UNKNOWN [72] (originated by SpringBoard [37])>
                                                                                                                    1    <on behalf of backboardd [74] (originated by backboardd [74])>
                                                                                                                    1    <on behalf of locationd [80] (originated by UNKNOWN [34])>
                                                                                                                    1    <on behalf of UNKNOWN [132] (originated by UNKNOWN [132])>
                                                                                                                    1    <on behalf of UNKNOWN [144] (originated by UNKNOWN [34])>
                                                                                                                    1    <on behalf of UNKNOWN [144] (originated by UNKNOWN [144])>
                                                                                                                    1    <on behalf of wirelessinsightsd [145] (originated by CommCenter [104])>
                                                                                                                    1    <on behalf of AccessibilityUIServer [193] (originated by AccessibilityUIServer [193])>
                                                                                                                    1    <on behalf of UNKNOWN [875] (originated by maild [303])>
                                                                                                                    1    <on behalf of keybagd [926] (originated by keybagd [926])>
                                                                                                                    1    <on behalf of UNKNOWN [969] (originated by Developer [3824])>
                                                                                                                    1    <on behalf of WhatsApp (WhatsApp Business) [1816] (originated by WhatsApp (WhatsApp Business) [1816])>
                                                                                                                    1    <on behalf of UNKNOWN [11388] (originated by Chrome [3989])>
                                                                                                                    1    <on behalf of UNKNOWN [11388] (originated by WhatsApp (WhatsApp Business) [13339])>
                                                                                                                    1    <on behalf of UNKNOWN [11388] (originated by Chrome [14471])>
                                                                                                                    1    <on behalf of UNKNOWN [12141] (originated by UNKNOWN [12141])>
                                                                                                                    1    <on behalf of UNKNOWN [13210] (originated by MobileSafari [13787])>
                                                                                                                    1    <on behalf of UNKNOWN [13249] (originated by Preferences (Settings) [13030])>
                                                                                                                    1    <on behalf of UNKNOWN [13410] (originated by UNKNOWN [13410])>
                                                                                                                    1    <on behalf of UNKNOWN [14582] (originated by UNKNOWN [14582])>
                                                                              1    ??? (analyticsd + 541788) [0x100a6045c]
                                                                                1    ??? (analyticsd + 72920) [0x1009edcd8]
                                                                                  1    ??? (analyticsd + 547176) [0x100a61968]
                                                                                    1    ??? (analyticsd + 649540) [0x100a7a944]
                                                                                      1    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                                                                        1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                                                          1    ??? (analyticsd + 668992) [0x100a7f540]
                                                                                            1    ??? (analyticsd + 688780) [0x100a8428c]
                                                                                              1    ??? (analyticsd + 131224) [0x1009fc098]
                                                                                                1    ??? (analyticsd + 131088) [0x1009fc010]
                                                                                                  1    ??? (libsqlite3.dylib + 33036) [0x1c841010c]
                                                                                                    1    ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                                                                                      1    ??? (libsqlite3.dylib + 233516) [0x1c844102c]
                                                                                                        1    ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                                                                                          1    ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                                                                            1    ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                                                                              1    ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                                                                                1    ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                                                                                  1    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                                                    1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                                                      1    <on behalf of UNKNOWN [13272] (originated by dasd [15924])>
                                                              4    ??? (analyticsd + 261804) [0x100a1beac]
                                                                4    ??? (analyticsd + 543000) [0x100a60918]
                                                                  4    ??? (analyticsd + 541788) [0x100a6045c]
                                                                    4    ??? (analyticsd + 72920) [0x1009edcd8]
                                                                      4    ??? (analyticsd + 547176) [0x100a61968]
                                                                        4    ??? (analyticsd + 649540) [0x100a7a944]
                                                                          4    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                                                            4    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                                              4    ??? (analyticsd + 668992) [0x100a7f540]
                                                                                4    ??? (analyticsd + 688780) [0x100a8428c]
                                                                                  4    ??? (analyticsd + 131224) [0x1009fc098]
                                                                                    4    ??? (analyticsd + 131088) [0x1009fc010]
                                                                                      4    ??? (libsqlite3.dylib + 33036) [0x1c841010c]
                                                                                        4    ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                                                                          4    ??? (libsqlite3.dylib + 233516) [0x1c844102c]
                                                                                            4    ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                                                                              4    ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                                                                4    ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                                                                  4    ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                                                                    3    ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                                                                      3    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                                        3    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                                          3    <on behalf of UNKNOWN [16228] (originated by UNKNOWN [34])>
                                                                                                    1    ??? (libsqlite3.dylib + 698544) [0x1c84b28b0]
                                                                                                      1    ??? (libsqlite3.dylib + 700624) [0x1c84b30d0]
                                                                                                        1    ??? (libsystem_kernel.dylib + 34060) [0x1ec33150c]
                                                                                                          1    <on behalf of UNKNOWN [16228] (originated by UNKNOWN [34])>
                                                        4    ??? (analyticsd + 259596) [0x100a1b60c]
                                                          4    ??? (analyticsd + 52664) [0x1009e8db8]
                                                            4    ??? (analyticsd + 69832) [0x1009ed0c8]
                                                              4    ??? (analyticsd + 70872) [0x1009ed4d8]
                                                                4    ??? (analyticsd + 70300) [0x1009ed29c]
                                                                  4    ??? (analyticsd + 70300) [0x1009ed29c]
                                                                    4    ??? (analyticsd + 261012) [0x100a1bb94]
                                                                      4    ??? (analyticsd + 543000) [0x100a60918]
                                                                        4    ??? (analyticsd + 541788) [0x100a6045c]
                                                                          4    ??? (analyticsd + 72920) [0x1009edcd8]
                                                                            4    ??? (analyticsd + 547176) [0x100a61968]
                                                                              4    ??? (analyticsd + 649540) [0x100a7a944]
                                                                                4    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                                                                  4    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                                                    4    ??? (analyticsd + 668992) [0x100a7f540]
                                                                                      4    ??? (analyticsd + 688780) [0x100a8428c]
                                                                                        4    ??? (analyticsd + 131224) [0x1009fc098]
                                                                                          4    ??? (analyticsd + 131088) [0x1009fc010]
                                                                                            4    ??? (libsqlite3.dylib + 33036) [0x1c841010c]
                                                                                              3    ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                                                                                3    ??? (libsqlite3.dylib + 233516) [0x1c844102c]
                                                                                                  3    ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                                                                                    3    ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                                                                      3    ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                                                                        3    ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                                                                          3    ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                                                                            3    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                                              3    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                                                3    <on behalf of UNKNOWN [16228] (originated by UNKNOWN [34])>
                                                                                              1    ??? (libsqlite3.dylib + 191940) [0x1c8436dc4]
                                                                                                1    ??? (libsqlite3.dylib + 329196) [0x1c84585ec]
                                                                                                  1    ??? (libsqlite3.dylib + 563436) [0x1c84918ec]
                                                                                                    1    ??? (libsqlite3.dylib + 1165904) [0x1c8524a50]
                                                                                                      1    ??? (libsqlite3.dylib + 408524) [0x1c846bbcc]
                                                                                                        1    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                                          1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                                            1    <on behalf of UNKNOWN [16228] (originated by UNKNOWN [34])>
                                                    21   ??? (libdispatch.dylib + 71508) [0x19f662754]
                                                      21   ??? (libdispatch.dylib + 72900) [0x19f662cc4]
                                                        21   ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                          21   ??? (analyticsd + 259768) [0x100a1b6b8]
                                                            21   ??? (analyticsd + 42424) [0x1009e65b8]
                                                              21   ??? (analyticsd + 46476) [0x1009e758c]
                                                                21   ??? (analyticsd + 261844) [0x100a1bed4]
                                                                  21   ??? (analyticsd + 88264) [0x1009f18c8]
                                                                    21   ??? (analyticsd + 88664) [0x1009f1a58]
                                                                      21   ??? (analyticsd + 127652) [0x1009fb2a4]
                                                                        21   ??? (analyticsd + 70872) [0x1009ed4d8]
                                                                          21   ??? (analyticsd + 70300) [0x1009ed29c]
                                                                            21   ??? (analyticsd + 127956) [0x1009fb3d4]
                                                                              21   ??? (analyticsd + 127828) [0x1009fb354]
                                                                                21   ??? (analyticsd + 128080) [0x1009fb450]
                                                                                  21   ??? (analyticsd + 128280) [0x1009fb518]
                                                                                    21   ??? (analyticsd + 72920) [0x1009edcd8]
                                                                                      21   ??? (analyticsd + 128664) [0x1009fb698]
                                                                                        21   ??? (analyticsd + 649540) [0x100a7a944]
                                                                                          21   ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                                                                            21   ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                                                              21   ??? (analyticsd + 668992) [0x100a7f540]
                                                                                                21   ??? (analyticsd + 688780) [0x100a8428c]
                                                                                                  21   ??? (analyticsd + 131224) [0x1009fc098]
                                                                                                    21   ??? (analyticsd + 131088) [0x1009fc010]
                                                                                                      21   ??? (libsqlite3.dylib + 33036) [0x1c841010c]
                                                                                                        15   ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                                                                                          15   ??? (libsqlite3.dylib + 233516) [0x1c844102c]
                                                                                                            15   ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                                                                                              15   ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                                                                                15   ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                                                                                  15   ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                                                                                    14   ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                                                                                      14   ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                                                        14   ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                                                          2    <on behalf of UNKNOWN [12141] (originated by UNKNOWN [34])>
                                                                                                                          1    <on behalf of UNKNOWN [5079] (originated by Chrome [3989]), Effective Thread QoS Default, p-core>
                                                                                                                          1    <on behalf of UNKNOWN [8152] (originated by UNKNOWN [34]), Effective Thread QoS Default, p-core>
                                                                                                                          1    <on behalf of UNKNOWN [54] (originated by CommCenter [104])>
                                                                                                                          1    <on behalf of locationd [80] (originated by SpringBoard [37])>
                                                                                                                          1    <on behalf of PerfPowerServices [92] (originated by UNKNOWN [2209])>
                                                                                                                          1    <on behalf of UNKNOWN [144] (originated by UNKNOWN [34])>
                                                                                                                          1    <on behalf of kbd [272] (originated by kbd [272])>
                                                                                                                          1    <on behalf of UNKNOWN [969] (originated by UNKNOWN [115])>
                                                                                                                          1    <on behalf of PerfPowerServices [10220] (originated by PerfPowerServices [10220])>
                                                                                                                          1    <on behalf of keybagd [12882] (originated by keybagd [12882])>
                                                                                                                          1    <on behalf of UNKNOWN [144] (originated by UNKNOWN [144]), Effective Thread QoS Default>
                                                                                                                          1    <on behalf of keybagd [4278] (originated by keybagd [4278]), Effective Thread QoS Default>
                                                                                                                    1    ??? (libsqlite3.dylib + 697856) [0x1c84b2600]
                                                                                                                      1    ??? (libsqlite3.dylib + 328596) [0x1c8458394]
                                                                                                                        1    ??? (libsystem_kernel.dylib + 23908) [0x1ec32ed64]
                                                                                                                          1    <on behalf of UNKNOWN [12141] (originated by UNKNOWN [34])>
                                                                                                        6    ??? (libsqlite3.dylib + 191940) [0x1c8436dc4]
                                                                                                          6    ??? (libsqlite3.dylib + 329196) [0x1c84585ec]
                                                                                                            6    ??? (libsqlite3.dylib + 563436) [0x1c84918ec]
                                                                                                              6    ??? (libsqlite3.dylib + 1165904) [0x1c8524a50]
                                                                                                                6    ??? (libsqlite3.dylib + 408524) [0x1c846bbcc]
                                                                                                                  6    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                                                    6    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                                                      1    <on behalf of UNKNOWN [51] (originated by UNKNOWN [51])>
                                                                                                                      1    <on behalf of dasd [87] (originated by UNKNOWN [34])>
                                                                                                                      1    <on behalf of UNKNOWN [969] (originated by UNKNOWN [115])>
                                                                                                                      1    <on behalf of UNKNOWN [66] (originated by UNKNOWN [6637]), Effective Thread QoS Default>
                                                                                                                      1    <on behalf of UNKNOWN [4824] (originated by UNKNOWN [34]), Effective Thread QoS Default>
                                                                                                                      1    <on behalf of UNKNOWN [9665] (originated by UNKNOWN [9665]), Effective Thread QoS Default>
            62   ??? (libdispatch.dylib + 42056) [0x19f65b448]
              62   ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                45   ??? (analyticsd + 35136) [0x1009e4940]
                  45   ??? (analyticsd + 31108) [0x1009e3984]
                    45   ??? (analyticsd + 128080) [0x1009fb450]
                      45   ??? (analyticsd + 128280) [0x1009fb518]
                        45   ??? (analyticsd + 72920) [0x1009edcd8]
                          45   ??? (analyticsd + 128664) [0x1009fb698]
                            45   ??? (analyticsd + 649540) [0x100a7a944]
                              44   ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                44   ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                  44   ??? (analyticsd + 668992) [0x100a7f540]
                                    44   ??? (analyticsd + 688780) [0x100a8428c]
                                      44   ??? (analyticsd + 131224) [0x1009fc098]
                                        44   ??? (analyticsd + 131088) [0x1009fc010]
                                          44   ??? (libsqlite3.dylib + 33036) [0x1c841010c]
                                            32   ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                              32   ??? (libsqlite3.dylib + 233516) [0x1c844102c]
                                                32   ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                                  32   ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                    32   ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                      32   ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                        32   ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                          32   ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                            32   ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                              4    <on behalf of UNKNOWN [34] (originated by UNKNOWN [34])>
                                                              3    <on behalf of contextstored [71] (originated by locationd [80])>
                                                              3    <Requested Thread QoS Utility>
                                                              2    <on behalf of UNKNOWN [54] (originated by CommCenter [104])>
                                                              2    <on behalf of backboardd [74] (originated by backboardd [74])>
                                                              2    <on behalf of locationd [80] (originated by locationd [80])>
                                                              1    <on behalf of SpringBoard [37] (originated by SpringBoard [37])>
                                                              1    <on behalf of SpringBoard [37] (originated by apsd [178])>
                                                              1    <on behalf of UNKNOWN [54] (originated by UNKNOWN [101])>
                                                              1    <on behalf of biomed [55] (originated by intelligenceplatformd [369])>
                                                              1    <on behalf of UNKNOWN [70] (originated by UNKNOWN [70])>
                                                              1    <on behalf of contextstored [71] (originated by contextstored [71])>
                                                              1    <on behalf of backboardd [74] (originated by UNKNOWN [132])>
                                                              1    <on behalf of dasd [87] (originated by dasd [87])>
                                                              1    <on behalf of UNKNOWN [115] (originated by UNKNOWN [115])>
                                                              1    <on behalf of symptomsd [143] (originated by symptomsd [143])>
                                                              1    <on behalf of UNKNOWN [969] (originated by UNKNOWN [115])>
                                                              1    <on behalf of contextstored [6416] (originated by locationd [80])>
                                                              1    <on behalf of contextstored [6416] (originated by contextstored [6416])>
                                                              1    <on behalf of UNKNOWN [11388] (originated by UNKNOWN [115])>
                                                              1    <on behalf of dasd [15924] (originated by UNKNOWN [34])>
                                                              1    <on behalf of locationd [80] (originated by locationd [80]), Effective Thread QoS Utility>
                                            12   ??? (libsqlite3.dylib + 191940) [0x1c8436dc4]
                                              12   ??? (libsqlite3.dylib + 329196) [0x1c84585ec]
                                                12   ??? (libsqlite3.dylib + 563436) [0x1c84918ec]
                                                  12   ??? (libsqlite3.dylib + 1165904) [0x1c8524a50]
                                                    12   ??? (libsqlite3.dylib + 408524) [0x1c846bbcc]
                                                      12   ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                        12   ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                          2    <on behalf of UNKNOWN [34] (originated by UNKNOWN [34])>
                                                          2    <on behalf of backboardd [74] (originated by UNKNOWN [132])>
                                                          2    <on behalf of locationd [80] (originated by locationd [80])>
                                                          1    <on behalf of contextstored [71] (originated by contextstored [71])>
                                                          1    <on behalf of backboardd [74] (originated by backboardd [74])>
                                                          1    <on behalf of searchd [1300] (originated by UNKNOWN [6065])>
                                                          1    <on behalf of ScreenTimeWebExtension [3998] (originated by Chrome [3989])>
                                                          1    <on behalf of UNKNOWN [12141] (originated by UNKNOWN [34])>
                                                          1    <on behalf of Chrome [14471] (originated by Chrome [14471])>
                              1    ??? (libdispatch.dylib + 71508) [0x19f662754]
                                1    ??? (libdispatch.dylib + 72900) [0x19f662cc4]
                                  1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                    1    ??? (analyticsd + 668992) [0x100a7f540]
                                      1    ??? (analyticsd + 688780) [0x100a8428c]
                                        1    ??? (analyticsd + 131224) [0x1009fc098]
                                          1    ??? (analyticsd + 131088) [0x1009fc010]
                                            1    ??? (libsqlite3.dylib + 33036) [0x1c841010c]
                                              1    ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                                1    ??? (libsqlite3.dylib + 233516) [0x1c844102c]
                                                  1    ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                                    1    ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                      1    ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                        1    ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                          1    ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                            1    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                              1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                1    <on behalf of SpringBoard [37] (originated by SpringBoard [37])>
                15   ??? (analyticsd + 751028) [0x100a935b4]
                  15   ??? (analyticsd + 29176) [0x1009e31f8]
                    15   ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                      15   ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                        15   ??? (analyticsd + 29920) [0x1009e34e0]
                          15   ??? (analyticsd + 48424) [0x1009e7d28]
                            15   ??? (analyticsd + 621356) [0x100a73b2c]
                              15   ??? (analyticsd + 251668) [0x100a19714]
                                13   ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                  13   ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                    10   ??? (analyticsd + 259768) [0x100a1b6b8]
                                      10   ??? (analyticsd + 42424) [0x1009e65b8]
                                        10   ??? (analyticsd + 46476) [0x1009e758c]
                                          10   ??? (analyticsd + 261844) [0x100a1bed4]
                                            10   ??? (analyticsd + 88264) [0x1009f18c8]
                                              6    ??? (analyticsd + 88664) [0x1009f1a58]
                                                6    ??? (analyticsd + 127652) [0x1009fb2a4]
                                                  6    ??? (analyticsd + 70872) [0x1009ed4d8]
                                                    6    ??? (analyticsd + 70300) [0x1009ed29c]
                                                      6    ??? (analyticsd + 127956) [0x1009fb3d4]
                                                        6    ??? (analyticsd + 127828) [0x1009fb354]
                                                          6    ??? (analyticsd + 128080) [0x1009fb450]
                                                            6    ??? (analyticsd + 128280) [0x1009fb518]
                                                              6    ??? (analyticsd + 72920) [0x1009edcd8]
                                                                6    ??? (analyticsd + 128664) [0x1009fb698]
                                                                  6    ??? (analyticsd + 649540) [0x100a7a944]
                                                                    6    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                                                      6    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                                        6    ??? (analyticsd + 668992) [0x100a7f540]
                                                                          6    ??? (analyticsd + 688780) [0x100a8428c]
                                                                            6    ??? (analyticsd + 131224) [0x1009fc098]
                                                                              6    ??? (analyticsd + 131088) [0x1009fc010]
                                                                                6    ??? (libsqlite3.dylib + 33036) [0x1c841010c]
                                                                                  4    ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                                                                    4    ??? (libsqlite3.dylib + 233516) [0x1c844102c]
                                                                                      4    ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                                                                        4    ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                                                          4    ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                                                            4    ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                                                              3    ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                                                                3    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                                  3    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                                    3    <Requested Thread QoS Utility>
                                                                                              1    ??? (libsqlite3.dylib + 698544) [0x1c84b28b0]
                                                                                                1    ??? (libsqlite3.dylib + 700624) [0x1c84b30d0]
                                                                                                  1    ??? (libsystem_kernel.dylib + 34060) [0x1ec33150c]
                                                                                                    1    <Requested Thread QoS Utility>
                                                                                  2    ??? (libsqlite3.dylib + 191940) [0x1c8436dc4]
                                                                                    2    ??? (libsqlite3.dylib + 329196) [0x1c84585ec]
                                                                                      2    ??? (libsqlite3.dylib + 563436) [0x1c84918ec]
                                                                                        2    ??? (libsqlite3.dylib + 1165904) [0x1c8524a50]
                                                                                          2    ??? (libsqlite3.dylib + 408524) [0x1c846bbcc]
                                                                                            2    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                              2    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                                2    <Requested Thread QoS Utility>
                                              4    ??? (analyticsd + 88736) [0x1009f1aa0]
                                                4    ??? (analyticsd + 127956) [0x1009fb3d4]
                                                  4    ??? (analyticsd + 127828) [0x1009fb354]
                                                    4    ??? (analyticsd + 128080) [0x1009fb450]
                                                      4    ??? (analyticsd + 128280) [0x1009fb518]
                                                        4    ??? (analyticsd + 72920) [0x1009edcd8]
                                                          4    ??? (analyticsd + 128664) [0x1009fb698]
                                                            4    ??? (analyticsd + 649540) [0x100a7a944]
                                                              4    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                                                4    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                                  4    ??? (analyticsd + 668992) [0x100a7f540]
                                                                    4    ??? (analyticsd + 688780) [0x100a8428c]
                                                                      4    ??? (analyticsd + 131224) [0x1009fc098]
                                                                        4    ??? (analyticsd + 131088) [0x1009fc010]
                                                                          4    ??? (libsqlite3.dylib + 33036) [0x1c841010c]
                                                                            3    ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                                                              3    ??? (libsqlite3.dylib + 233516) [0x1c844102c]
                                                                                3    ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                                                                  3    ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                                                    3    ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                                                      3    ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                                                        3    ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                                                          3    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                            3    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                              3    <Requested Thread QoS Utility>
                                                                            1    ??? (libsqlite3.dylib + 191940) [0x1c8436dc4]
                                                                              1    ??? (libsqlite3.dylib + 329196) [0x1c84585ec]
                                                                                1    ??? (libsqlite3.dylib + 563436) [0x1c84918ec]
                                                                                  1    ??? (libsqlite3.dylib + 1165904) [0x1c8524a50]
                                                                                    1    ??? (libsqlite3.dylib + 408524) [0x1c846bbcc]
                                                                                      1    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                        1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                          1    <Requested Thread QoS Utility>
                                    3    ??? (analyticsd + 259796) [0x100a1b6d4]
                                      3    ??? (analyticsd + 250360) [0x100a191f8]
                                        3    ??? (analyticsd + 127956) [0x1009fb3d4]
                                          3    ??? (analyticsd + 127828) [0x1009fb354]
                                            3    ??? (analyticsd + 128080) [0x1009fb450]
                                              3    ??? (analyticsd + 128280) [0x1009fb518]
                                                3    ??? (analyticsd + 72920) [0x1009edcd8]
                                                  3    ??? (analyticsd + 128664) [0x1009fb698]
                                                    3    ??? (analyticsd + 649540) [0x100a7a944]
                                                      3    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                                        3    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                          3    ??? (analyticsd + 668992) [0x100a7f540]
                                                            3    ??? (analyticsd + 688780) [0x100a8428c]
                                                              3    ??? (analyticsd + 131224) [0x1009fc098]
                                                                3    ??? (analyticsd + 131088) [0x1009fc010]
                                                                  3    ??? (libsqlite3.dylib + 33036) [0x1c841010c]
                                                                    2    ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                                                      2    ??? (libsqlite3.dylib + 233516) [0x1c844102c]
                                                                        2    ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                                                          2    ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                                            2    ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                                              2    ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                                                2    ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                                                  2    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                    2    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                      2    <Requested Thread QoS Utility>
                                                                    1    ??? (libsqlite3.dylib + 191940) [0x1c8436dc4]
                                                                      1    ??? (libsqlite3.dylib + 329196) [0x1c84585ec]
                                                                        1    ??? (libsqlite3.dylib + 563436) [0x1c84918ec]
                                                                          1    ??? (libsqlite3.dylib + 1165904) [0x1c8524a50]
                                                                            1    ??? (libsqlite3.dylib + 408524) [0x1c846bbcc]
                                                                              1    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                  1    <Requested Thread QoS Utility>
                                2    ??? (libdispatch.dylib + 71508) [0x19f662754]
                                  2    ??? (libdispatch.dylib + 72900) [0x19f662cc4]
                                    2    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                      2    ??? (analyticsd + 259768) [0x100a1b6b8]
                                        2    ??? (analyticsd + 42424) [0x1009e65b8]
                                          2    ??? (analyticsd + 46476) [0x1009e758c]
                                            2    ??? (analyticsd + 261844) [0x100a1bed4]
                                              2    ??? (analyticsd + 88264) [0x1009f18c8]
                                                2    ??? (analyticsd + 88736) [0x1009f1aa0]
                                                  2    ??? (analyticsd + 127956) [0x1009fb3d4]
                                                    2    ??? (analyticsd + 127828) [0x1009fb354]
                                                      2    ??? (analyticsd + 128080) [0x1009fb450]
                                                        2    ??? (analyticsd + 128280) [0x1009fb518]
                                                          2    ??? (analyticsd + 72920) [0x1009edcd8]
                                                            2    ??? (analyticsd + 128664) [0x1009fb698]
                                                              2    ??? (analyticsd + 649540) [0x100a7a944]
                                                                2    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                                                  2    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                                    2    ??? (analyticsd + 668992) [0x100a7f540]
                                                                      2    ??? (analyticsd + 688780) [0x100a8428c]
                                                                        2    ??? (analyticsd + 131224) [0x1009fc098]
                                                                          2    ??? (analyticsd + 131088) [0x1009fc010]
                                                                            2    ??? (libsqlite3.dylib + 33036) [0x1c841010c]
                                                                              2    ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                                                                2    ??? (libsqlite3.dylib + 233516) [0x1c844102c]
                                                                                  2    ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                                                                    2    ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                                                      2    ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                                                        2    ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                                                          2    ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                                                            2    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                              2    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                                1    <Requested Thread QoS Utility>
                                                                                                1    <Effective Thread QoS Default, Requested Thread QoS Utility>
                1    ??? (analyticsd + 852588) [0x100aac26c]
                  1    ??? (analyticsd + 440680) [0x100a47968]
                    1    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                      1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                        1    ??? (analyticsd + 440892) [0x100a47a3c]
                          1    ??? (analyticsd + 632144) [0x100a76550]
                            1    ??? (libdispatch.dylib + 71508) [0x19f662754]
                              1    ??? (libdispatch.dylib + 72900) [0x19f662cc4]
                                1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                  1    ??? (analyticsd + 668992) [0x100a7f540]
                                    1    ??? (analyticsd + 668412) [0x100a7f2fc]
                                      1    ??? (analyticsd + 130884) [0x1009fbf44]
                                        1    ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                          1    ??? (libsqlite3.dylib + 233440) [0x1c8440fe0]
                                            1    ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                              1    ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                1    ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                  1    ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                    1    ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                      1    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                        1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                          1    <on behalf of CommCenter [104] (originated by CommCenter [104]), Effective Thread QoS Utility, Requested Thread QoS Utility>
                1    ??? (analyticsd + 327276) [0x100a2be6c]
                  1    ??? (analyticsd + 29920) [0x1009e34e0]
                    1    ??? (analyticsd + 48424) [0x1009e7d28]
                      1    ??? (analyticsd + 621356) [0x100a73b2c]
                        1    ??? (analyticsd + 251668) [0x100a19714]
                          1    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                            1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                              1    ??? (analyticsd + 259768) [0x100a1b6b8]
                                1    ??? (analyticsd + 42424) [0x1009e65b8]
                                  1    ??? (analyticsd + 46476) [0x1009e758c]
                                    1    ??? (analyticsd + 261844) [0x100a1bed4]
                                      1    ??? (analyticsd + 88264) [0x1009f18c8]
                                        1    ??? (analyticsd + 88664) [0x1009f1a58]
                                          1    ??? (analyticsd + 127652) [0x1009fb2a4]
                                            1    ??? (analyticsd + 70872) [0x1009ed4d8]
                                              1    ??? (analyticsd + 70300) [0x1009ed29c]
                                                1    ??? (analyticsd + 127956) [0x1009fb3d4]
                                                  1    ??? (analyticsd + 127828) [0x1009fb354]
                                                    1    ??? (analyticsd + 128080) [0x1009fb450]
                                                      1    ??? (analyticsd + 128280) [0x1009fb518]
                                                        1    ??? (analyticsd + 72920) [0x1009edcd8]
                                                          1    ??? (analyticsd + 128664) [0x1009fb698]
                                                            1    ??? (analyticsd + 649540) [0x100a7a944]
                                                              1    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                                                1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                                  1    ??? (analyticsd + 668992) [0x100a7f540]
                                                                    1    ??? (analyticsd + 688780) [0x100a8428c]
                                                                      1    ??? (analyticsd + 131224) [0x1009fc098]
                                                                        1    ??? (analyticsd + 131088) [0x1009fc010]
                                                                          1    ??? (libsqlite3.dylib + 33036) [0x1c841010c]
                                                                            1    ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                                                              1    ??? (libsqlite3.dylib + 233516) [0x1c844102c]
                                                                                1    ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                                                                  1    ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                                                    1    ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                                                      1    ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                                                        1    ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                                                          1    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                                            1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                                              1    <on behalf of UNKNOWN [11388] (originated by UNKNOWN [115])>
    1    ??? (libsystem_pthread.dylib + 2512) [0x2266be9d0]
      1    ??? (libdispatch.dylib + 83676) [0x19f6656dc]
        1    ??? (libdispatch.dylib + 82076) [0x19f66509c]
          1    ??? (libdispatch.dylib + 230392) [0x19f6893f8]
            1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
              1    ??? (libdispatch.dylib + 70704) [0x19f662430]
                1    ??? (libsystem_notify.dylib + 6036) [0x1ca65d794]
                  1    ??? (Foundation + 454508) [0x1958baf6c]
                    1    ??? (Foundation + 10002712) [0x1961d6118]
                      1    ??? (CoreFoundation + 88076) [0x196e6b80c]
                        1    ??? (CoreFoundation + 95784) [0x196e6d628]
                          1    ??? (CoreFoundation + 95972) [0x196e6d6e4]
                            1    ??? (CoreFoundation + 85292) [0x196e6ad2c]
                              1    ??? (analyticsd + 150040) [0x100a00a18]
                                1    ??? (analyticsd + 440680) [0x100a47968]
                                  1    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                    1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                      1    ??? (analyticsd + 440892) [0x100a47a3c]
                                        1    ??? (analyticsd + 632144) [0x100a76550]
                                          1    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                            1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                              1    ??? (analyticsd + 668992) [0x100a7f540]
                                                1    ??? (analyticsd + 668412) [0x100a7f2fc]
                                                  1    ??? (analyticsd + 130884) [0x1009fbf44]
                                                    1    ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                                      1    ??? (libsqlite3.dylib + 233440) [0x1c8440fe0]
                                                        1    ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                                          1    ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                                            1    ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                                              1    ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                                1    ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                                  1    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                                    1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                                      1    <Requested Thread QoS Default>

  Binary Images:
           0x1009dc000 -                ???  analyticsd              <50323E67-1AC1-3D30-A2B3-7EDB19A386BA>  /System/Library/PrivateFrameworks/CoreAnalytics.framework/Support/analyticsd
           0x19584c000 -        0x1966bfe1f  Foundation              <6C918DA7-AD82-3699-99AB-30DF73088BB5>  /System/Library/Frameworks/Foundation.framework/Foundation
           0x196e56000 -        0x1973dfcff  CoreFoundation          <2A272802-97C0-323E-BFCF-7C7C9232AF79>  /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
           0x19f651000 -        0x19f69721f  libdispatch.dylib       <C4A46C83-ED82-3F9A-B1FE-0EB48C7A4F18>  /usr/lib/system/libdispatch.dylib
           0x1c8408000 -        0x1c85b157b  libsqlite3.dylib        <43AB2CB4-806E-3E39-ABA8-A07D47AE2349>  /usr/lib/libsqlite3.dylib
           0x1ca65c000 -        0x1ca66848b  libsystem_notify.dylib  <F96604BE-4915-3784-99D5-5F993C780168>  /usr/lib/system/libsystem_notify.dylib
           0x1ec329000 -        0x1ec363f5f  libsystem_kernel.dylib  <DDB32429-91E9-39F6-9665-3CC1F44502AD>  /usr/lib/system/libsystem_kernel.dylib
           0x2266be000 -        0x2266ca3f3  libsystem_pthread.dylib <65C2B5C0-EDD7-3F41-9B47-F95ABAFF89DB>  /usr/lib/system/libsystem_pthread.dylib
           0x226709000 -        0x226752d5f  libxpc.dylib            <12CCAC98-7B44-3926-8BE3-D019C60E6B93>  /usr/lib/system/libxpc.dylib


Powerstats for:   SpringBoard
UUID:             E82515A6-9ECA-3916-A130-511770D6EE90
Path:             /System/Library/CoreServices/SpringBoard.app/SpringBoard
Identifier:       com.apple.springboard
Version:          1.0 (50)
Is First Party:   Yes
Beta Identifier:  A534FD4F-9B9F-4C8F-9794-E2D6E60FE0C6
Resource Coalition: 245 samples 9
On Behalf Of:     103 samples apsd [178] (103 samples originated by apsd [178]), 8 samples UNKNOWN [869, 5912, 7104, 10159, 12190] (5 samples originated by UNKNOWN [82, 5912, 7104, 10661, 11331], 1 sample originated by CommCenter [104], 1 sample originated by Gmail [3879], 1 sample originated by maild [303]), 6 samples SpringBoard [37] (6 samples originated by apsd [178]), 5 samples Chrome [3989, 13879, 14243, 14471] (5 samples originated by SpringBoard [37]), 4 samples Gmail [1653, 3879, 4417, 12877] (4 samples originated by Gmail [1653, 3879, 4417, 12877]), 2 samples audiomack-iphone [3497, 15874] (2 samples originated by SpringBoard [37]), 2 samples GitHub [13546] (2 samples originated by SpringBoard [37]), 2 samples Outlook-iOS (Outlook) [3605, 13236] (2 samples originated by Outlook-iOS (Outlook) [3605, 13236]), 1 sample assetsd [4358] (1 sample originated by assetsd [4358]), 1 sample duetexpertd [919] (1 sample originated by duetexpertd [919]), 1 sample MobileCal [13293] (1 sample originated by MobileCal [13293]), 1 sample MobilePhone [15851] (1 sample originated by CommCenter [104]), 1 sample MobileSafari [13787] (1 sample originated by SpringBoard [37]), 1 sample Preferences (Settings) [15237] (1 sample originated by SpringBoard [37]), 1 sample WhatsApp (WhatsApp Business) [1816] (1 sample originated by SpringBoard [37])
Architecture:     arm64
Start time:       2025-06-30 11:13:34.092 +0200
End time:         2025-07-01 00:56:35.092 +0200
Num samples:      245 (6%)
Primary state:    124 samples Frontmost App, Non-Suppressed, Kernel mode, Effective Thread QoS User Initiated, Requested Thread QoS User Initiated, Override Thread QoS Unspecified, p-core
User Activity:    65 samples Idle, 180 samples Active
Power Source:     153 samples on Battery, 92 samples on AC
  240  ??? (libsystem_pthread.dylib + 2732) [0x2266beaac]
    239  ??? (libsystem_pthread.dylib + 2572) [0x2266bea0c]
      239  ??? (libdispatch.dylib + 85188) [0x19f665cc4]
        239  ??? (libdispatch.dylib + 86988) [0x19f6663cc]
          220  ??? (libdispatch.dylib + 44888) [0x19f65bf58]
            212  ??? (libdispatch.dylib + 42056) [0x19f65b448]
              212  ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                212  ??? (libdispatch.dylib + 6844) [0x19f652abc]
                  105  ??? (UserNotificationsCore + 281800) [0x28a902cc8]
                    105  ??? (UserNotificationsCore + 281156) [0x28a902a44]
                      105  ??? (UserNotificationsCore + 289468) [0x28a904abc]
                        105  ??? (UserNotificationsCore + 358292) [0x28a915794]
                          105  ??? (UserNotificationsCore + 358500) [0x28a915864]
                            105  ??? (UserNotificationsCore + 356632) [0x28a915118]
                              105  ??? (UserNotificationsCore + 169068) [0x28a8e746c]
                                105  ??? (UserNotificationsCore + 234392) [0x28a8f7398]
                                  105  ??? (Foundation + 594916) [0x1958dd3e4]
                                    105  ??? (Foundation + 595508) [0x1958dd634]
                                      105  ??? (Foundation + 438800) [0x1958b7210]
                                        105  ??? (Foundation + 6224304) [0x195e3b9b0]
                                          105  ??? (Foundation + 6224220) [0x195e3b95c]
                                            105  ??? (Foundation + 6224276) [0x195e3b994]
                                              104  ??? (Foundation + 608124) [0x1958e077c]
                                                103  ??? (libsystem_kernel.dylib + 20516) [0x1ec32e024]
                                                  44   <on behalf of apsd [178] (originated by apsd [178]), Effective Thread QoS Default, Requested Thread QoS Default>
                                                  40   <on behalf of apsd [178] (originated by apsd [178]), Effective Thread QoS Default, Requested Thread QoS Default, e-core>
                                                  14   <on behalf of apsd [178] (originated by apsd [178]), Requested Thread QoS Default, e-core>
                                                  3    <on behalf of apsd [178] (originated by apsd [178]), Requested Thread QoS Default>
                                                  1    <on behalf of UNKNOWN [12190] (originated by UNKNOWN [82])>
                                                  1    <on behalf of UNKNOWN [869] (originated by maild [303]), e-core>
                                                1    ??? (libsystem_kernel.dylib + 33820) [0x1ec33141c]
                                                  1    <on behalf of apsd [178] (originated by apsd [178]), Effective Thread QoS Default, Requested Thread QoS Default>
                                              1    ??? (Foundation + 607236) [0x1958e0404]
                                                1    ??? (Foundation + 6197932) [0x195e352ac]
                                                  1    ??? (Foundation + 415688) [0x1958b17c8]
                                                    1    ??? (Foundation + 637140) [0x1958e78d4]
                                                      1    ??? (Foundation + 9655408) [0x196181470]
                                                        1    ??? (Foundation + 9656248) [0x1961817b8]
                                                          1    ??? (libsystem_kernel.dylib + 25628) [0x1ec32f41c]
                                                            1    <on behalf of apsd [178] (originated by apsd [178]), Effective Thread QoS Default, Requested Thread QoS Default, e-core>
                  90   ??? (PaperBoardUI + 117180) [0x1d42659bc]
                    90   ??? (PosterUIFoundation + 423908) [0x28041d7e4]
                      90   ??? (PosterUIFoundation + 425852) [0x28041df7c]
                        90   ??? (PosterUIFoundation + 427956) [0x28041e7b4]
                          90   ??? (ImageIO + 399848) [0x19d1339e8]
                            89   ??? (ImageIO + 400884) [0x19d133df4]
                              89   ??? (ImageIO + 2190468) [0x19d2e8c84]
                                89   ??? (ImageIO + 523004) [0x19d151afc]
                                  89   ??? (ImageIO + 2190200) [0x19d2e8b78]
                                    89   ??? (ImageIO + 2186040) [0x19d2e7b38]
                                      89   ??? (ImageIO + 438964) [0x19d13d2b4]
                                        89   ??? (libsystem_c.dylib + 46188) [0x19f6a346c]
                                          89   ??? (libsystem_c.dylib + 19060) [0x19f69ca74]
                                            89   ??? (libsystem_c.dylib + 82576) [0x19f6ac290]
                                              89   ??? (libsystem_kernel.dylib + 30040) [0x1ec330558]
                                                10   <e-core>
                            1    ??? (ImageIO + 401084) [0x19d133ebc]
                              1    ??? (ImageIO + 515820) [0x19d14feec]
                                1    ??? (libsystem_c.dylib + 87316) [0x19f6ad514]
                                  1    ??? (libsystem_c.dylib + 45616) [0x19f6a3230]
                                    1    ??? (libsystem_c.dylib + 82576) [0x19f6ac290]
                                      1    ??? (libsystem_kernel.dylib + 30040) [0x1ec330558]
                  6    ??? (FrontBoard + 222000) [0x1bd8ef330]
                    6    ??? (FrontBoard + 233580) [0x1bd8f206c]
                      6    ??? (FrontBoard + 233180) [0x1bd8f1edc]
                        6    ??? (FrontBoard + 233032) [0x1bd8f1e48]
                          6    ??? (BaseBoard + 170928) [0x19f7f9bb0]
                            6    ??? (BaseBoard + 229444) [0x19f808044]
                              6    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                6    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                  6    ??? (BaseBoard + 172324) [0x19f7fa124]
                                    6    ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                      6    ??? (libsqlite3.dylib + 221080) [0x1c843df98]
                                        6    ??? (libsqlite3.dylib + 92404) [0x1c841e8f4]
                                          6    ??? (libsqlite3.dylib + 259440) [0x1c8447570]
                                            6    ??? (libsqlite3.dylib + 260552) [0x1c84479c8]
                                              6    ??? (libsqlite3.dylib + 327280) [0x1c8457e70]
                                                4    ??? (libsqlite3.dylib + 696756) [0x1c84b21b4]
                                                  4    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                    4    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                      1    <on behalf of MobilePhone [15851] (originated by CommCenter [104])>
                                                      1    <on behalf of GitHub [13546] (originated by SpringBoard [37]), Effective Thread QoS User Interactive>
                                                      1    <Effective Thread QoS Utility, Requested Thread QoS Utility, e-core>
                                                1    ??? (libsqlite3.dylib + 698588) [0x1c84b28dc]
                                                  1    ??? (libsqlite3.dylib + 108332) [0x1c842272c]
                                                    1    <on behalf of Gmail [3879] (originated by Gmail [3879])>
                                                1    ??? (libsqlite3.dylib + 698544) [0x1c84b28b0]
                                                  1    ??? (libsqlite3.dylib + 700624) [0x1c84b30d0]
                                                    1    ??? (libsystem_kernel.dylib + 34060) [0x1ec33150c]
                                                      1    <on behalf of MobileCal [13293] (originated by MobileCal [13293]), Effective Thread QoS Utility, Requested Thread QoS Utility, e-core>
                  4    ??? (UserNotificationsCore + 291244) [0x28a9051ac]
                    4    ??? (UserNotificationsCore + 357032) [0x28a9152a8]
                      4    ??? (UserNotificationsCore + 357440) [0x28a915440]
                        4    ??? (UserNotificationsCore + 356632) [0x28a915118]
                          4    ??? (UserNotificationsCore + 169068) [0x28a8e746c]
                            4    ??? (UserNotificationsCore + 234392) [0x28a8f7398]
                              4    ??? (Foundation + 594916) [0x1958dd3e4]
                                4    ??? (Foundation + 595508) [0x1958dd634]
                                  4    ??? (Foundation + 438800) [0x1958b7210]
                                    4    ??? (Foundation + 6224304) [0x195e3b9b0]
                                      4    ??? (Foundation + 6224220) [0x195e3b95c]
                                        4    ??? (Foundation + 6224276) [0x195e3b994]
                                          3    ??? (Foundation + 608124) [0x1958e077c]
                                            3    ??? (libsystem_kernel.dylib + 20516) [0x1ec32e024]
                                              1    <on behalf of UNKNOWN [869] (originated by Gmail [3879]), Effective Thread QoS Background, Requested Thread QoS Background, e-core>
                                              1    <on behalf of UNKNOWN [10159] (originated by UNKNOWN [11331]), Effective Thread QoS Default, Requested Thread QoS Default, e-core>
                                              1    <on behalf of UNKNOWN [10159] (originated by UNKNOWN [10661]), e-core>
                                          1    ??? (Foundation + 608652) [0x1958e098c]
                                            1    ??? (Foundation + 626132) [0x1958e4dd4]
                                              1    ??? (Foundation + 627152) [0x1958e51d0]
                                                1    ??? (libsystem_kernel.dylib + 21664) [0x1ec32e4a0]
                                                  1    <on behalf of UNKNOWN [869] (originated by CommCenter [104]), e-core>
                  2    ??? (SplashBoard + 121728) [0x23eb33b80]
                    2    ??? (SplashBoard + 122500) [0x23eb33e84]
                      2    ??? (CoreFoundation + 899456) [0x196f31980]
                        2    ??? (CoreFoundation + 112080) [0x196e715d0]
                          2    ??? (SplashBoard + 122604) [0x23eb33eec]
                            2    ??? (Foundation + 934232) [0x195930158]
                              2    ??? (Foundation + 496308) [0x1958c52b4]
                                2    ??? (Foundation + 497340) [0x1958c56bc]
                                  2    ??? (Foundation + 497628) [0x1958c57dc]
                                    2    ??? (libremovefile.dylib + 2080) [0x2466dd820]
                                      2    ??? (libremovefile.dylib + 3084) [0x2466ddc0c]
                                        2    ??? (libsystem_kernel.dylib + 25760) [0x1ec32f4a0]
                                          1    <on behalf of UNKNOWN [7104] (originated by UNKNOWN [7104]), Effective Thread QoS Utility, Requested Thread QoS Utility, e-core>
                                          1    <Effective Thread QoS Utility, Requested Thread QoS Utility, e-core>
                  2    ??? (AppPredictionClient + 930148) [0x1bf0ab164]
                    2    ??? (AppPredictionClient + 927800) [0x1bf0aa838]
                      2    ??? (ProactiveSuggestionClientModel + 203192) [0x1c5b819b8]
                        2    ??? (BiomeStreams + 967508) [0x1a3794354]
                          2    ??? (BiomeStreams + 968044) [0x1a379456c]
                            2    ??? (BiomeStreams + 970212) [0x1a3794de4]
                              2    ??? (BiomeStorage + 59564) [0x1c44e78ac]
                                2    ??? (BiomeStorage + 66464) [0x1c44e93a0]
                                  2    ??? (BiomeStorage + 66896) [0x1c44e9550]
                                    2    ??? (BiomeStorage + 126044) [0x1c44f7c5c]
                                      2    ??? (BiomeStorage + 125116) [0x1c44f78bc]
                                        2    ??? (BiomeStorage + 121208) [0x1c44f6978]
                                          1    <e-core>
                  1    ??? (SpringBoard + 305372) [0x1f145a8dc]
                    1    ??? (FrontBoardServices + 263752) [0x1b3711648]
                      1    ??? (FrontBoardServices + 264612) [0x1b37119a4]
                        1    ??? (FrontBoard + 386304) [0x1bd917500]
                          1    ??? (FrontBoard + 33652) [0x1bd8c1374]
                            1    ??? (libdispatch.dylib + 71508) [0x19f662754]
                              1    ??? (libdispatch.dylib + 72900) [0x19f662cc4]
                                1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                  1    ??? (FrontBoard + 233180) [0x1bd8f1edc]
                                    1    ??? (FrontBoard + 233032) [0x1bd8f1e48]
                                      1    ??? (BaseBoard + 170928) [0x19f7f9bb0]
                                        1    ??? (BaseBoard + 229444) [0x19f808044]
                                          1    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                            1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                              1    ??? (BaseBoard + 172324) [0x19f7fa124]
                                                1    ??? (libsqlite3.dylib + 191188) [0x1c8436ad4]
                                                  1    ??? (libsqlite3.dylib + 197848) [0x1c84384d8]
                                                    1    ??? (libsqlite3.dylib + 1165904) [0x1c8524a50]
                                                      1    ??? (libsqlite3.dylib + 408524) [0x1c846bbcc]
                                                        1    ??? (libsqlite3.dylib + 328184) [0x1c84581f8]
                                                          1    ??? (libsystem_kernel.dylib + 28164) [0x1ec32fe04]
                                                            1    <on behalf of assetsd [4358] (originated by assetsd [4358])>
                  1    ??? (BaseBoardUI + 32256) [0x1b9a52e00]
                    1    ??? (Foundation + 934232) [0x195930158]
                      1    ??? (Foundation + 496308) [0x1958c52b4]
                        1    ??? (Foundation + 497340) [0x1958c56bc]
                          1    ??? (Foundation + 497628) [0x1958c57dc]
                            1    ??? (libremovefile.dylib + 2080) [0x2466dd820]
                              1    ??? (libremovefile.dylib + 3084) [0x2466ddc0c]
                                1    ??? (libsystem_kernel.dylib + 25760) [0x1ec32f4a0]
                                  1    <Effective Thread QoS Default, Requested Thread QoS Utility>
                  1    ??? (ProactiveEventTracker + 115232) [0x1a615c220]
                    1    ??? (ProactiveEventTracker + 113644) [0x1a615bbec]
                      1    ??? (ProactiveEventTracker + 111148) [0x1a615b22c]
                        1    ??? (ProactiveEventTracker + 80740) [0x1a6153b64]
                          1    ??? (ProactiveEventTracker + 6280) [0x1a6141888]
                            1    ??? (ProactiveEventTracker + 80772) [0x1a6153b84]
                              1    <on behalf of duetexpertd [919] (originated by duetexpertd [919]), Effective Thread QoS Background, Requested Thread QoS Background, e-core>
            8    ??? (libdispatch.dylib + 41648) [0x19f65b2b0]
              8    ??? (libdispatch.dylib + 98780) [0x19f6691dc]
                8    ??? (libdispatch.dylib + 103688) [0x19f66a508]
                  8    ??? (libdispatch.dylib + 26180) [0x19f657644]
                    8    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                      8    ??? (UserNotificationsUIKit + 948508) [0x1f0a2591c]
                        8    ??? (UserNotificationsUIKit + 948684) [0x1f0a259cc]
                          8    ??? (UserNotificationsUIKit + 949532) [0x1f0a25d1c]
                            8    ??? (Foundation + 594916) [0x1958dd3e4]
                              8    ??? (Foundation + 595508) [0x1958dd634]
                                8    ??? (Foundation + 438800) [0x1958b7210]
                                  8    ??? (Foundation + 6224304) [0x195e3b9b0]
                                    8    ??? (Foundation + 6224220) [0x195e3b95c]
                                      8    ??? (Foundation + 6224276) [0x195e3b994]
                                        6    ??? (Foundation + 608124) [0x1958e077c]
                                          6    ??? (libsystem_kernel.dylib + 20516) [0x1ec32e024]
                                            3    <on behalf of SpringBoard [37] (originated by apsd [178]), e-core>
                                            2    <on behalf of SpringBoard [37] (originated by apsd [178])>
                                        1    ??? (Foundation + 608652) [0x1958e098c]
                                          1    ??? (Foundation + 626132) [0x1958e4dd4]
                                            1    ??? (Foundation + 627152) [0x1958e51d0]
                                              1    ??? (libsystem_kernel.dylib + 21664) [0x1ec32e4a0]
                                        1    ??? (Foundation + 607236) [0x1958e0404]
                                          1    ??? (Foundation + 6197932) [0x195e352ac]
                                            1    ??? (Foundation + 415688) [0x1958b17c8]
                                              1    ??? (Foundation + 637140) [0x1958e78d4]
                                                1    ??? (Foundation + 9655408) [0x196181470]
                                                  1    ??? (Foundation + 9656248) [0x1961817b8]
                                                    1    ??? (libsystem_kernel.dylib + 25628) [0x1ec32f41c]
                                                      1    <on behalf of SpringBoard [37] (originated by apsd [178]), e-core>
          17   ??? (libdispatch.dylib + 49768) [0x19f65d268]
            17   ??? (libdispatch.dylib + 44888) [0x19f65bf58]
              17   ??? (libdispatch.dylib + 42056) [0x19f65b448]
                17   ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                  17   ??? (libdispatch.dylib + 6844) [0x19f652abc]
                    17   ??? (SplashBoard + 59452) [0x23eb2483c]
                      17   ??? (SplashBoard + 61844) [0x23eb25194]
                        17   ??? (SplashBoard + 111604) [0x23eb313f4]
                          17   ??? (SplashBoard + 109248) [0x23eb30ac0]
                            11   ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                              11   ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                11   ??? (SplashBoard + 109716) [0x23eb30c94]
                                  11   ??? (SplashBoard + 127876) [0x23eb35384]
                                    11   ??? (AppleFSCompression + 27244) [0x229f0ca6c]
                                      11   ??? (AppleFSCompression + 13140) [0x229f09354]
                                        11   ??? (AppleFSCompression + 13824) [0x229f09600]
                                          11   ??? (AppleFSCompression + 16504) [0x229f0a078]
                                            11   ??? (AppleFSCompression + 13140) [0x229f09354]
                                              11   ??? (AppleFSCompression + 13824) [0x229f09600]
                                                11   ??? (AppleFSCompression + 17300) [0x229f0a394]
                                                  11   ??? (AppleFSCompression + 13140) [0x229f09354]
                                                    11   ??? (AppleFSCompression + 13824) [0x229f09600]
                                                      11   ??? (AppleFSCompression + 16000) [0x229f09e80]
                                                        11   ??? (AppleFSCompression + 13140) [0x229f09354]
                                                          11   ??? (AppleFSCompression + 13824) [0x229f09600]
                                                            9    ??? (AppleFSCompression + 17680) [0x229f0a510]
                                                              9    ??? (libsystem_kernel.dylib + 28424) [0x1ec32ff08]
                                                                1    <on behalf of Gmail [1653] (originated by Gmail [1653])>
                                                                1    <on behalf of Outlook-iOS (Outlook) [3605] (originated by Outlook-iOS (Outlook) [3605])>
                                                                1    <on behalf of Outlook-iOS (Outlook) [13236] (originated by Outlook-iOS (Outlook) [13236])>
                                                                1    <on behalf of MobileSafari [13787] (originated by SpringBoard [37])>
                                                                1    <on behalf of Chrome [13879] (originated by SpringBoard [37])>
                                                                1    <on behalf of Chrome [14243] (originated by SpringBoard [37])>
                                                                1    <on behalf of Chrome [14471] (originated by SpringBoard [37])>
                                                                1    <on behalf of Preferences (Settings) [15237] (originated by SpringBoard [37])>
                                                                1    <on behalf of Chrome [13879] (originated by SpringBoard [37]), e-core>
                                                            1    ??? (AppleFSCompression + 17616) [0x229f0a4d0]
                                                              1    ??? (libsystem_kernel.dylib + 28424) [0x1ec32ff08]
                                                                1    <on behalf of Gmail [12877] (originated by Gmail [12877])>
                                                            1    ??? (AppleFSCompression + 17552) [0x229f0a490]
                                                              1    ??? (libsystem_kernel.dylib + 23908) [0x1ec32ed64]
                                                                1    <on behalf of Gmail [4417] (originated by Gmail [4417])>
                            6    ??? (libdispatch.dylib + 71508) [0x19f662754]
                              6    ??? (libdispatch.dylib + 72900) [0x19f662cc4]
                                6    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                  6    ??? (SplashBoard + 109716) [0x23eb30c94]
                                    6    ??? (SplashBoard + 127876) [0x23eb35384]
                                      6    ??? (AppleFSCompression + 27244) [0x229f0ca6c]
                                        6    ??? (AppleFSCompression + 13140) [0x229f09354]
                                          6    ??? (AppleFSCompression + 13824) [0x229f09600]
                                            6    ??? (AppleFSCompression + 16504) [0x229f0a078]
                                              6    ??? (AppleFSCompression + 13140) [0x229f09354]
                                                6    ??? (AppleFSCompression + 13824) [0x229f09600]
                                                  6    ??? (AppleFSCompression + 17300) [0x229f0a394]
                                                    6    ??? (AppleFSCompression + 13140) [0x229f09354]
                                                      6    ??? (AppleFSCompression + 13824) [0x229f09600]
                                                        6    ??? (AppleFSCompression + 16000) [0x229f09e80]
                                                          6    ??? (AppleFSCompression + 13140) [0x229f09354]
                                                            6    ??? (AppleFSCompression + 13824) [0x229f09600]
                                                              6    ??? (AppleFSCompression + 17680) [0x229f0a510]
                                                                6    ??? (libsystem_kernel.dylib + 28424) [0x1ec32ff08]
                                                                  1    <on behalf of WhatsApp (WhatsApp Business) [1816] (originated by SpringBoard [37])>
                                                                  1    <on behalf of audiomack-iphone [3497] (originated by SpringBoard [37])>
                                                                  1    <on behalf of Chrome [3989] (originated by SpringBoard [37])>
                                                                  1    <on behalf of GitHub [13546] (originated by SpringBoard [37])>
                                                                  1    <on behalf of UNKNOWN [5912] (originated by UNKNOWN [5912]), e-core>
                                                                  1    <on behalf of audiomack-iphone [15874] (originated by SpringBoard [37]), Effective Thread QoS User Interactive, e-core>
          1    ??? (libdispatch.dylib + 98780) [0x19f6691dc]
            1    ??? (libdispatch.dylib + 103688) [0x19f66a508]
              1    ??? (libdispatch.dylib + 26180) [0x19f657644]
                1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                  1    ??? (BaseBoard + 450040) [0x19f83ddf8]
                    1    ??? (BaseBoard + 444304) [0x19f83c790]
                      1    ??? (PosterUIFoundation + 370424) [0x2804106f8]
                        1    ??? (PosterUIFoundation + 369960) [0x280410528]
                          1    ??? (PosterUIFoundation + 115788) [0x2803d244c]
                            1    ??? (PosterUIFoundation + 115948) [0x2803d24ec]
                              1    ??? (PosterFoundation + 186820) [0x28032a9c4]
                                1    ??? (Foundation + 645212) [0x1958e985c]
                                  1    ??? (Foundation + 6285876) [0x195e4aa34]
                                    1    ??? (Foundation + 496308) [0x1958c52b4]
                                      1    ??? (Foundation + 497340) [0x1958c56bc]
                                        1    ??? (Foundation + 497628) [0x1958c57dc]
                                          1    ??? (libremovefile.dylib + 2080) [0x2466dd820]
                                            1    ??? (libremovefile.dylib + 3084) [0x2466ddc0c]
                                              1    ??? (libsystem_kernel.dylib + 25760) [0x1ec32f4a0]
                                                1    <Effective Thread QoS Default, Requested Thread QoS Default>
          1    ??? (libdispatch.dylib + 44836) [0x19f65bf24]
            1    ??? (libdispatch.dylib + 42056) [0x19f65b448]
              1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                1    ??? (libdispatch.dylib + 70704) [0x19f662430]
                  1    ??? (SpringBoard + 3248996) [0x1f1729364]
                    1    ??? (Foundation + 594916) [0x1958dd3e4]
                      1    ??? (Foundation + 595508) [0x1958dd634]
                        1    ??? (Foundation + 438800) [0x1958b7210]
                          1    ??? (Foundation + 6224304) [0x195e3b9b0]
                            1    ??? (Foundation + 6224220) [0x195e3b95c]
                              1    ??? (Foundation + 6224276) [0x195e3b994]
                                1    ??? (Foundation + 608124) [0x1958e077c]
                                  1    ??? (libsystem_kernel.dylib + 20516) [0x1ec32e024]
                                    1    <Effective Thread QoS Utility, Requested Thread QoS Utility, e-core>
    1    ??? (libsystem_pthread.dylib + 2512) [0x2266be9d0]
      1    ??? (libdispatch.dylib + 83676) [0x19f6656dc]
        1    ??? (libdispatch.dylib + 82076) [0x19f66509c]
          1    ??? (libdispatch.dylib + 230392) [0x19f6893f8]
            1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
              1    ??? (libdispatch.dylib + 6844) [0x19f652abc]
                1    ??? (BaseBoardUI + 82800) [0x1b9a5f370]
                  1    ??? (BaseBoardUI + 82952) [0x1b9a5f408]
                    1    ??? (BaseBoardUI + 36836) [0x1b9a53fe4]
                      1    ??? (BaseBoardUI + 37824) [0x1b9a543c0]
                        1    ??? (AppSupport + 136276) [0x1a4e24454]
                          1    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                            1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                              1    ??? (AppSupport + 141120) [0x1a4e25740]
                                1    ??? (libsystem_kernel.dylib + 28424) [0x1ec32ff08]
                                  1    <Effective Thread QoS Background, Requested Thread QoS Background, e-core>
  5    ??? (dyld + 255708) [0x1941076dc]
    5    ??? (SpringBoard + 707300) [0x1f14bcae4]
      5    ??? (UIKitCore + 450124) [0x199b8de4c]
        5    ??? (UIKitCore + 525432) [0x199ba0478]
          5    ??? (GraphicsServices + 5156) [0x1e81bd424]
            5    ??? (CoreFoundation + 1082464) [0x196f5e460]
              3    ??? (CoreFoundation + 67112) [0x196e66628]
                3    ??? (CoreFoundation + 331384) [0x196ea6e78]
                  3    ??? (libdispatch.dylib + 69092) [0x19f661de4]
                    3    ??? (libdispatch.dylib + 69288) [0x19f661ea8]
                      3    ??? (libdispatch.dylib + 232176) [0x19f689af0]
                        3    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                          3    ??? (libdispatch.dylib + 6844) [0x19f652abc]
                            3    ??? (PaperBoardUI + 117716) [0x1d4265bd4]
                              3    ??? (PaperBoardUI + 116356) [0x1d4265684]
                                2    ??? (PaperBoardUI + 117828) [0x1d4265c44]
                                  2    ??? (PaperBoardUI + 118100) [0x1d4265d54]
                                    2    ??? (PosterUIFoundation + 433028) [0x28041fb84]
                                      2    ??? (PaperBoardUI + 118248) [0x1d4265de8]
                                        2    ??? (PaperBoardUI + 118812) [0x1d426601c]
                                          2    ??? (Foundation + 1145500) [0x195963a9c]
                                            2    ??? (Foundation + 1129620) [0x19595fc94]
                                              2    ??? (Foundation + 643852) [0x1958e930c]
                                                2    ??? (Foundation + 644020) [0x1958e93b4]
                                                  2    ??? (Foundation + 1140592) [0x195962770]
                                                    2    ??? (Foundation + 1141668) [0x195962ba4]
                                                      2    ??? (Foundation + 608124) [0x1958e077c]
                                                        2    ??? (libsystem_kernel.dylib + 20516) [0x1ec32e024]
                                                          2    <Effective Thread QoS User Interactive, Requested Thread QoS User Interactive>
                                1    ??? (PaperBoardUI + 115916) [0x1d42654cc]
                                  1    ??? (Foundation + 594916) [0x1958dd3e4]
                                    1    ??? (Foundation + 595508) [0x1958dd634]
                                      1    ??? (Foundation + 438800) [0x1958b7210]
                                        1    ??? (Foundation + 6224304) [0x195e3b9b0]
                                          1    ??? (Foundation + 6224220) [0x195e3b95c]
                                            1    ??? (Foundation + 6224276) [0x195e3b994]
                                              1    ??? (Foundation + 608652) [0x1958e098c]
                                                1    ??? (Foundation + 626132) [0x1958e4dd4]
                                                  1    ??? (Foundation + 627152) [0x1958e51d0]
                                                    1    ??? (libsystem_kernel.dylib + 21664) [0x1ec32e4a0]
                                                      1    <Effective Thread QoS User Interactive, Requested Thread QoS User Interactive>
              1    ??? (CoreFoundation + 67332) [0x196e66704]
                1    ??? (CoreFoundation + 73788) [0x196e6803c]
                  1    ??? (CoreFoundation + 75536) [0x196e68710]
                    1    ??? (CoreFoundation + 73168) [0x196e67dd0]
                      1    ??? (UpdateCycle + 4824) [0x28a86f2d8]
                        1    ??? (UIKitCore + 18981716) [0x19ad3a354]
                          1    ??? (UIKitCore + 8998508) [0x19a3b4e6c]
                            1    ??? (UIKitCore + 36400) [0x199b28e30]
                              1    ??? (UIKitCore + 53700) [0x199b2d1c4]
                                1    ??? (UIKitCore + 57240) [0x199b2df98]
                                  1    ??? (SpringBoard + 1417516) [0x1f156a12c]
                                    1    ??? (UIKit + 393752) [0x25bb8c218]
                                      1    ??? (UIKitCore + 20019852) [0x19ae37a8c]
                                        1    ??? (UIKitCore + 20140844) [0x19ae5532c]
                                          1    ??? (UIKitCore + 14783416) [0x19a9393b8]
                                            1    ??? (Gestures + 621088) [0x271065a20]
                                              1    ??? (Gestures + 414216) [0x271033208]
                                                1    ??? (Gestures + 222084) [0x271004384]
                                                  1    ??? (Gestures + 82448) [0x270fe2210]
                                                    1    ??? (UIKitCore + 14838016) [0x19a946900]
                                                      1    ??? (UIKitCore + 213904) [0x199b54390]
                                                        1    ??? (UIKitCore + 215380) [0x199b54954]
                                                          1    ??? (UIKitCore + 215948) [0x199b54b8c]
                                                            1    ??? (UIKitCore + 14805564) [0x19a93ea3c]
                                                              1    ??? (SpringBoard + 4182604) [0x1f180d24c]
                                                                1    ??? (SpringBoard + 2083436) [0x1f160ca6c]
                                                                  1    ??? (SpringBoard + 2110828) [0x1f161356c]
                                                                    1    ??? (SpringBoard + 1640320) [0x1f15a0780]
                                                                      1    ??? (SpringBoard + 2111620) [0x1f1613884]
                                                                        1    ??? (SpringBoard + 2112696) [0x1f1613cb8]
                                                                          1    ??? (SpringBoard + 108764) [0x25dbac8dc]
                                                                            1    ??? (SpringBoard + 2113436) [0x1f1613f9c]
                                                                              1    ??? (SpringBoard + 2114548) [0x1f16143f4]
                                                                                1    ??? (SpringBoard + 5600024) [0x1f1967318]
                                                                                  1    ??? (SpringBoard + 874984) [0x1f14e59e8]
                                                                                    1    ??? (SpringBoard + 871056) [0x1f14e4a90]
                                                                                      1    ??? (SpringBoard + 885276) [0x1f14e821c]
                                                                                        1    ??? (FrontBoard + 37584) [0x1bd8c22d0]
                                                                                          1    ??? (SpringBoard + 886604) [0x1f14e874c]
                                                                                            1    ??? (BaseBoard + 39856) [0x19f7d9bb0]
                                                                                              1    ??? (SpringBoard + 887368) [0x1f14e8a48]
                                                                                                1    ??? (SpringBoard + 892340) [0x1f14e9db4]
                                                                                                  1    ??? (SpringBoard + 892984) [0x1f14ea038]
                                                                                                    1    ??? (SpringBoard + 882132) [0x1f14e75d4]
                                                                                                      1    ??? (BaseBoard + 52288) [0x19f7dcc40]
                                                                                                        1    ??? (BaseBoard + 208076) [0x19f802ccc]
                                                                                                          1    ??? (BaseBoard + 57016) [0x19f7ddeb8]
                                                                                                            1    ??? (BaseBoard + 52288) [0x19f7dcc40]
                                                                                                              1    ??? (BaseBoard + 208076) [0x19f802ccc]
                                                                                                                1    ??? (BaseBoard + 56904) [0x19f7dde48]
                                                                                                                  1    ??? (SpringBoard + 46172) [0x1f141b45c]
                                                                                                                    1    ??? (SpringBoard + 50432) [0x1f141c500]
                                                                                                                      1    ??? (SpringBoard + 4230876) [0x1f1818edc]
                                                                                                                        1    ??? (SpringBoard + 4423240) [0x1f1847e48]
                                                                                                                          1    ??? (SpringBoard + 7204212) [0x1f1aeed74]
                                                                                                                            1    ??? (SpringBoard + 2002944) [0x1f15f9000]
                                                                                                                              1    ??? (SpringBoard + 2639584) [0x1f16946e0]
                                                                                                                                1    ??? (SpringBoard + 2654668) [0x1f16981cc]
                                                                                                                                  1    ??? (BaseBoardUI + 68444) [0x1b9a5bb5c]
                                                                                                                                    1    ??? (UIKitCore + 12063860) [0x19a6a1474]
                                                                                                                                      1    ??? (UIKitCore + 233812) [0x199b59154]
                                                                                                                                        1    ??? (UIKitCore + 319384) [0x199b6df98]
                                                                                                                                          1    ??? (SpringBoard + 14220) [0x25db9578c]
                                                                                                                                            1    ??? (SpringBoard + 149360) [0x1f1434770]
                                                                                                                                              1    ??? (SpringBoard + 203104) [0x1f1441960]
                                                                                                                                                1    ??? (SpringBoard + 5466964) [0x1f1946b54]
                                                                                                                                                  1    ??? (SpringBoard + 6258552) [0x1f1a07f78]
                                                                                                                                                    1    ??? (SpringBoard + 203784) [0x1f1441c08]
                                                                                                                                                      1    ??? (PaperBoardUI + 12540) [0x1d424c0fc]
                                                                                                                                                        1    ??? (PaperBoardUI + 61472) [0x1d4258020]
                                                                                                                                                          1    ??? (PaperBoardUI + 496068) [0x1d42c21c4]
                                                                                                                                                            1    ??? (PaperBoardUI + 496596) [0x1d42c23d4]
                                                                                                                                                              1    ??? (PaperBoardUI + 377412) [0x1d42a5244]
                                                                                                                                                                1    ??? (PaperBoardUI + 398184) [0x1d42aa368]
                                                                                                                                                                  1    ??? (PaperBoardUI + 18040) [0x1d424d678]
                                                                                                                                                                    1    ??? (PaperBoardUI + 397148) [0x1d42a9f5c]
                                                                                                                                                                      1    ??? (PaperBoardUI + 397148) [0x1d42a9f5c]
                                                                                                                                                                        1    ??? (PaperBoardUI + 224460) [0x1d427fccc]
                                                                                                                                                                          1    ??? (PaperBoardUI + 224800) [0x1d427fe20]
                                                                                                                                                                            1    ??? (BaseBoardUI + 31720) [0x1b9a52be8]
                                                                                                                                                                              1    ??? (BaseBoardUI + 27664) [0x1b9a51c10]
                                                                                                                                                                                1    ??? (BaseBoardUI + 82952) [0x1b9a5f408]
                                                                                                                                                                                  1    ??? (BaseBoardUI + 36836) [0x1b9a53fe4]
                                                                                                                                                                                    1    ??? (BaseBoardUI + 37888) [0x1b9a54400]
                                                                                                                                                                                      1    ??? (AppSupport + 136452) [0x1a4e24504]
                                                                                                                                                                                        1    ??? (libdispatch.dylib + 71840) [0x19f6628a0]
                                                                                                                                                                                          1    ??? (libdispatch.dylib + 112588) [0x19f66c7cc]
                                                                                                                                                                                            1    ??? (AppSupport + 143340) [0x1a4e25fec]
                                                                                                                                                                                              1    ??? (AppSupport + 145248) [0x1a4e26760]
                                                                                                                                                                                                1    ??? (ImageIO + 399848) [0x19d1339e8]
                                                                                                                                                                                                  1    ??? (ImageIO + 401084) [0x19d133ebc]
                                                                                                                                                                                                    1    ??? (ImageIO + 515996) [0x19d14ff9c]
                                                                                                                                                                                                      1    ??? (libsystem_kernel.dylib + 28424) [0x1ec32ff08]
                                                                                                                                                                                                        1    <Effective Thread QoS User Interactive, Requested Thread QoS User Interactive>
              1    ??? (CoreFoundation + 66980) [0x196e665a4]
                1    ??? (CoreFoundation + 98104) [0x196e6df38]
                  1    ??? (CoreFoundation + 99264) [0x196e6e3c0]
                    1    ??? (CoreFoundation + 100096) [0x196e6e700]
                      1    ??? (Foundation + 405956) [0x1958af1c4]
                        1    ??? (SpringBoardHome + 3070116) [0x1f0f778a4]
                          1    ??? (SpringBoardHome + 3070004) [0x1f0f77834]
                            1    ??? (SpringBoardHome + 3068220) [0x1f0f7713c]
                              1    ??? (SpringBoardHome + 3068568) [0x1f0f77298]
                                1    ??? (SpringBoardHome + 953368) [0x1f0d72c18]
                                  1    ??? (Foundation + 594916) [0x1958dd3e4]
                                    1    ??? (Foundation + 595508) [0x1958dd634]
                                      1    ??? (Foundation + 438800) [0x1958b7210]
                                        1    ??? (Foundation + 6224304) [0x195e3b9b0]
                                          1    ??? (Foundation + 6224220) [0x195e3b95c]
                                            1    ??? (Foundation + 6224276) [0x195e3b994]
                                              1    ??? (Foundation + 608124) [0x1958e077c]
                                                1    ??? (libsystem_kernel.dylib + 20516) [0x1ec32e024]
                                                  1    <Effective Thread QoS User Interactive, Requested Thread QoS User Interactive, e-core>

  Binary Images:
           0x102524000 -                ???  com.apple.springboard 1.0 (50) <E82515A6-9ECA-3916-A130-511770D6EE90>  /System/Library/CoreServices/SpringBoard.app/SpringBoard
           0x1940c9000 -        0x19416650b  dyld                           <8955619B-E236-3D86-9DB1-2E4141BF277A>  /usr/lib/dyld
           0x19584c000 -        0x1966bfe1f  Foundation                     <6C918DA7-AD82-3699-99AB-30DF73088BB5>  /System/Library/Frameworks/Foundation.framework/Foundation
           0x196e56000 -        0x1973dfcff  CoreFoundation                 <2A272802-97C0-323E-BFCF-7C7C9232AF79>  /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
           0x199b20000 -        0x19be4005f  UIKitCore                      <22E36949-50BA-3541-8CE3-D61774054AD3>  /System/Library/PrivateFrameworks/UIKitCore.framework/UIKitCore
           0x19d0d2000 -        0x19d57583f  ImageIO                        <FD5799AC-17D6-3AE5-B57B-4A8C01CB61C8>  /System/Library/Frameworks/ImageIO.framework/ImageIO
           0x19f651000 -        0x19f69721f  libdispatch.dylib              <C4A46C83-ED82-3F9A-B1FE-0EB48C7A4F18>  /usr/lib/system/libdispatch.dylib
           0x19f698000 -        0x19f7184f3  libsystem_c.dylib              <8A6C2017-8379-32DB-BDE3-4C4DA9407CAD>  /usr/lib/system/libsystem_c.dylib
           0x19f7d0000 -        0x19f8b563f  BaseBoard                      <D8AC4E07-5127-3C6D-8E0C-506F2EA5819B>  /System/Library/PrivateFrameworks/BaseBoard.framework/BaseBoard
           0x1a36a8000 -        0x1a3c33c9f  BiomeStreams                   <AE2A4D12-3117-387F-973E-98536B337C09>  /System/Library/PrivateFrameworks/BiomeStreams.framework/BiomeStreams
           0x1a4e03000 -        0x1a4e4889f  AppSupport                     <E2857990-40A7-3A0F-85AE-2BB7E25B0D12>  /System/Library/PrivateFrameworks/AppSupport.framework/AppSupport
           0x1a6140000 -        0x1a617811f  ProactiveEventTracker          <DFAA90D6-6537-3831-BBDA-051ED2F11454>  /System/Library/PrivateFrameworks/ProactiveEventTracker.framework/ProactiveEventTracker
           0x1b36d1000 -        0x1b37b2b5f  FrontBoardServices             <CF313E18-BB58-327B-BB5C-FFA58B6979B9>  /System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices
           0x1b9a4b000 -        0x1b9a7769f  BaseBoardUI                    <84A7E562-C079-3B72-A952-105B6C4C590E>  /System/Library/PrivateFrameworks/BaseBoardUI.framework/BaseBoardUI
           0x1bd8b9000 -        0x1bd981a1f  FrontBoard                     <E5579EF4-DC16-3BED-8911-AE0005FC52F9>  /System/Library/PrivateFrameworks/FrontBoard.framework/FrontBoard
           0x1befc8000 -        0x1bf205bff  AppPredictionClient            <86CAF497-126E-3DF7-965C-3600D9BE3064>  /System/Library/PrivateFrameworks/AppPredictionClient.framework/AppPredictionClient
           0x1c44d9000 -        0x1c45189ff  BiomeStorage                   <B53AB59F-43AA-3EBA-A336-5AFACAD0043C>  /System/Library/PrivateFrameworks/BiomeStorage.framework/BiomeStorage
           0x1c5b50000 -        0x1c5beff5f  ProactiveSuggestionClientModel <2867D4CD-3811-31B1-B1E1-97498EA5353D>  /System/Library/PrivateFrameworks/ProactiveSuggestionClientModel.framework/ProactiveSuggestionClientModel
           0x1c8408000 -        0x1c85b157b  libsqlite3.dylib               <43AB2CB4-806E-3E39-ABA8-A07D47AE2349>  /usr/lib/libsqlite3.dylib
           0x1d4249000 -        0x1d4313c7f  PaperBoardUI                   <E05CD27B-A4C8-390D-95BA-F071C0884D31>  /System/Library/PrivateFrameworks/PaperBoardUI.framework/PaperBoardUI
           0x1e81bc000 -        0x1e81c47ff  GraphicsServices               <5FD336F5-7CEE-34CF-91A5-813D99B24D78>  /System/Library/PrivateFrameworks/GraphicsServices.framework/GraphicsServices
           0x1ec329000 -        0x1ec363f5f  libsystem_kernel.dylib         <DDB32429-91E9-39F6-9665-3CC1F44502AD>  /usr/lib/system/libsystem_kernel.dylib
           0x1f093e000 -        0x1f0bb259f  UserNotificationsUIKit         <079D97AD-3ECA-3FBB-B3D8-C70B7341B791>  /System/Library/PrivateFrameworks/UserNotificationsUIKit.framework/UserNotificationsUIKit
           0x1f0c8a000 -        0x1f11399bf  SpringBoardHome                <D04D73FA-E110-3F5A-BCF3-831267C59B29>  /System/Library/PrivateFrameworks/SpringBoardHome.framework/SpringBoardHome
           0x1f1410000 -        0x1f238e89f  SpringBoard                    <D614885C-607B-39E1-B91F-A3C41176BC1B>  /System/Library/PrivateFrameworks/SpringBoard.framework/SpringBoard
           0x2266be000 -        0x2266ca3f3  libsystem_pthread.dylib        <65C2B5C0-EDD7-3F41-9B47-F95ABAFF89DB>  /usr/lib/system/libsystem_pthread.dylib
           0x229f06000 -        0x229f1104f  AppleFSCompression             <511B8B8A-E6DB-3A8C-AA62-AC4410BD917D>  /System/Library/PrivateFrameworks/AppleFSCompression.framework/AppleFSCompression
           0x23eb16000 -        0x23eb56edf  SplashBoard                    <451B7315-9F43-37DB-91CC-01EE82E5C04C>  /System/Library/PrivateFrameworks/SplashBoard.framework/SplashBoard
           0x2466dd000 -        0x2466dfb6f  libremovefile.dylib            <0CFFFDA2-0E87-376F-BFE4-344382E892CE>  /usr/lib/system/libremovefile.dylib
           0x25bb2c000 -        0x25bd23b5f  UIKit                          <98DA606D-0F27-35C2-A4A5-CDEBDD0BB51A>  /System/Library/AccessibilityBundles/UIKit.axbundle/UIKit
           0x25db92000 -        0x25dbec35f  SpringBoard                    <05BF1194-D470-39E8-AA4B-CDD88EB1EAA7>  /System/Library/AccessibilityBundles/SpringBoard.axbundle/SpringBoard
           0x270fce000 -        0x271099d68  Gestures                       <5D760DB7-4B5C-3A2D-8201-0FBEB9342EED>  /System/Library/PrivateFrameworks/Gestures.framework/Gestures
           0x2802fd000 -        0x28035b9bf  PosterFoundation               <0CC8E9D4-AD4F-3285-A1E0-A912860650D6>  /System/Library/PrivateFrameworks/PosterFoundation.framework/PosterFoundation
           0x2803b6000 -        0x28048bc7f  PosterUIFoundation             <249F7154-319C-3175-9271-F8DDFD9556C5>  /System/Library/PrivateFrameworks/PosterUIFoundation.framework/PosterUIFoundation
           0x28a86e000 -        0x28a86ffbf  UpdateCycle                    <530EE8ED-578F-3114-9778-F5D99E805552>  /System/Library/PrivateFrameworks/UpdateCycle.framework/UpdateCycle
           0x28a8be000 -        0x28aac72bf  UserNotificationsCore          <E86D1005-D5BB-3D8B-BC0C-AC349198EBC5>  /System/Library/PrivateFrameworks/UserNotificationsCore.framework/UserNotificationsCore
