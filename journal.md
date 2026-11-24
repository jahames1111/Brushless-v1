---
title: "My First Drone"
github: "https://github.com/jahames1111/Brushless-v1"
description: "This will hopefully be my first real working drone. Previously, I have built things using brushed 8520 motors, but I could never get the drone to be light enough for those to work. This time, I will have a bigger budget and will be able to use brushless motors. "
created_at: "2026-11-22"
total_time: "17h"
---

# November 22, 2026: Shopping and initial planning and researching
<!-- fabricate:entry 3701 -->

During this time, I went on Amazon and looked for all the parts I will need for this. After doing a lot of weight and compatibility research, I settled on: 
![](https://fabricate.hackclub-assets.com/0f11b4b6cbc21c818692b4caeeaf9c7072df1f278d6903bfe448c592d5a15af9/image-png/Screenshot%202026-11-22%20075900.png)
![](https://fabricate.hackclub-assets.com/46687900c76c3798a658a989cf964c59be504a77540fb9ab22078bb90739300a/image-png/Screenshot%202026-11-22%20075905.png)
![](https://fabricate.hackclub-assets.com/a3e296b76b3d875ebcd83e5b32e222bf722165411b17f3ccdc33baabd854bd5f/image-png/Screenshot%202026-11-22%20075910.png)

**Total time spent: 3h**

# November 23, 2026: Wired schematic
<!-- fabricate:entry 3775 -->

Finished schematic, did wiring: wiring is as follows:


| Net Name | Function / Signal | All Connected Pins |
| :--- | :--- | :--- |
| `2s` | Battery Voltage (`VBAT`) | `J5` Pin 1, `J7` Pin 7, `J8` Pin 2 |
| `5` | Regulated `+5V` Rail | `J1` Pin 1, `J6` Pin 1 |
| `3` | Regulated `+3.3V` Rail | `J1` Pin 3, `J3` Pin 1, `J4` Pin 1, `J9` Pin 1 |
| `g` | Common Ground (`GND`) | `J1` Pin 2, `J3` Pin 2, `J4` Pin 2, `J5` Pin 4, `J6` Pin 4, `J7` Pin 8, `J8` Pin 3, `J9` Pin 4 |
| `1` | ESC Motor 1 (`D0`) | `J2` Pin 1, `J7` Pin 6 |
| `2` | ESC Motor 2 (`D1`) | `J2` Pin 2, `J7` Pin 5 |
| `3`  | ESC Motor 3 (`D2`) | `J2` Pin 3, `J7` Pin 4 |
| `4` | ESC Motor 4 (`D3`) | `J2` Pin 4, `J7` Pin 3 |
| `sda` | Shared I2C Data | `J2` Pin 5, `J3` Pin 4, `J4` Pin 4 |
| `scl` | Shared I2C Clock | `J2` Pin 6, `J3` Pin 3, `J4` Pin 3 |
| `rx` | UART (`D6` ➔ GPS `RX`) | `J2` Pin 7, `J9` Pin 2 |
| `tx` | UART (`D7` ➔ GPS `TX`) | `J1` Pin 7, `J9` Pin 3 |
| `vadc` | Battery Voltage Sense | `J1` Pin 6, `J8` Pin 1 |
| *No-Connect* | Unused Pins | `J1` Pin 4, `J1` Pin 5, `J5` Pin 2, `J5` Pin 3, `J6` Pin 2, `J6` Pin 3, `J7` Pin 1, `J7` Pin 2 |


 
 
![](https://fabricate.hackclub-assets.com/e7ef05e988d4cf8d0f217396835217b28ebac787b76ee64e447270be521b516c/image-png/image.png)

**Total time spent: 1h**

# November 23, 2026 (entry 2): Routed the PCB
<!-- fabricate:entry 3778 -->

Routed PCB, total size is 64x52 mm, and the DRC says no errors, and the only warnings are stuff like silkscreen overlaps. Had to go back and fix the schematic because I accidentally named the 3rd motor PWM and the 3V3 voltage line the same thing.

![](https://fabricate.hackclub-assets.com/805fbcb297ac1162fbf2d82e87c1292ff03161c34249337c1cc60d7d7dc8ba5b/image-png/Screenshot%202026-11-23%20124354.png)
![](https://fabricate.hackclub-assets.com/d600d67ceefd0e796512364f62997ff7be17c516a3276458b8422596ab2ebcbf/image-png/Screenshot%202026-11-23%20123754.png)
![](https://fabricate.hackclub-assets.com/aaaaa91813f984abf3733c47a67792377ee09dcb9a0b889b890ddb9b3af1b0e1/image-png/Screenshot%202026-11-23%20123745.png)

**Total time spent: 2h**

# November 23, 2026 (entry 3): Learned OpenSCAD and modeled the drone frame
<!-- fabricate:entry 3782 -->

During this time, I
1. Learned OpenSCAD basic coding(~1.5 hours)
2. Measured & Calculated Coordinates (~1 hour) - 9.0mm bolt circle vs. a 9×9mm square was hard to grasp
3. Debugging Syntax & STL Alignment (~2.5 hours) Had to adjust close decimal values for literally everything

![](https://fabricate.hackclub-assets.com/d2cf60a72c8427883c4a38816e9d61a7bc998bead98b75dad8a3dacf4bec82e1/image-png/Screenshot%202026-11-23%20133046.png)
![](https://fabricate.hackclub-assets.com/7d4a1f7b3c28acf3b075a1ce410e74a9d466b3060469a4fe7233873015b1e1ca/image-png/Screenshot%202026-11-23%20133036.png)

**Total time spent: 5h**

# November 24, 2026: Wrote code from dRehmFlight
<!-- fabricate:entry 3839 -->

Wrote code!!!!!!
I modded dRehmFlight (https://github.com/nickrehm/dRehmFlight/blob/master/Versions/dRehmFlight_Teensy_BETA_1.3/dRehmFlight_Teensy_BETA_1.3.ino) to make this code. I replaced the parts written for Teensy and added a barometer and GPS config that work with ESP-NOW. I haven't added the voltage divider because if I decide to add the camera, I will still need that pin.

![](https://fabricate.hackclub-assets.com/033b9d34348aa566f0a2a42c4e07688a11b11e2979eeb0d07b984c24d8ba4f92/image-png/Screenshot%202026-11-24%20085119.png)
![](https://fabricate.hackclub-assets.com/be644b8acb2aeba02bffb7a29a41975326a474a096731f55c9f0e45f9576c482/image-png/Screenshot%202026-11-24%20085110.png)

**Total time spent: 6h**
