# Brushless-v1
This will hopefully be my first real working drone. Previously, I have built things using brushed 8520 motors, but I could never get the drone to be light enough for those to work. This time, I will have a bigger budget and will be able to use brushless motors. 
<img width="914" height="595" alt="image" src="https://github.com/user-attachments/assets/a6c5e43b-f906-4ba2-86f1-80e639705c24" />




3D: In github, also
https://cad.onshape.com/documents/dc8006e672f3f91329fdcc5b 
 
https://cad.onshape.com/documents/e8c6850fa68e1cd546790438 
 
https://cad.onshape.com/documents/d17096ea64e2407efe53b08a 

# BOM (so far)
|Part                                                            |Type      |Quantity|Unit price (USD)|Line total (USD)|Link                                                                                       |Vendor               |Funding    |Notes                                                  |
|----------------------------------------------------------------|----------|--------|----------------|----------------|-------------------------------------------------------------------------------------------|---------------------|-----------|-------------------------------------------------------|
|1203 6500KV 2-4S Brushless Motors (4PCS)                        |Part      |1       |39.99           |39.99           |https://www.amazon.com/SPARKHOBBY-Brushless-FPVRacer-Freestyle-Cinewhoop/dp/B0FF349Z37     |Amazon               |Grant      |4-pack 1.5mm shaft motors                              |
|CORVON 30A 4-in-1 Brushless ESC (6V-18V, 20x20mm)               |Part      |1       |26.99           |26.99           |https://www.amazon.com/CORVON-Brushless-Supports-Oneshot-Lightweight/dp/B0GTTVMRMG         |Amazon               |Grant      |2S-4S PWM/DShot 4-in-1 ESC                             |
|OVONIC 7.6V 100C 450mAh 2S LiPo Battery with XT30 (2-Pack)      |Part      |1       |20.37           |20.37           |https://www.amazon.com/OVONIC-Battery-Package-Including-Batteries/dp/B0D3F5SQ5T            |Amazon               |Grant      |Standard non-Prime price ($13.44 with Prime)           |
|JLC3DP PA12-HP Nylon 3D-Printed Drone Frame (frame (2).step)    |Part      |2       |8.28            |16.56           |https://jlc3dp.com/                                                                        |JLC3DP               |Grant      |MJF PA12-HP Nylon, Black, 2pcs                         |
|AOICRIE GY-521 MPU-6050 6-DOF Gyro/Accelerometer Module (3-Pack)|Part      |1       |14.99           |14.99           |https://www.amazon.com/AOICRIE-GY-521-Accelerometer-Gyroscope-Pre-Soldered/dp/B0D2TJVMNY   |Amazon               |Grant      |Pre-soldered headers, I2C IMU                          |
|Gemfan 3016 3-Blade 3-Inch Propellers 1.5mm Hole (16pcs)        |Part      |1       |12.98           |12.98           |https://www.amazon.com/Propeller-1108-1308-Brushless-Toothpick-Quadcopters/dp/B0DZPBVDD8   |Amazon               |Grant      |8 CW + 8 CCW props                                     |
|2.4GHz ELRS T-Receiver Antenna 100mm IPEX1 (3PCS)               |Part      |1       |9.99            |9.99            |https://www.amazon.com/2-4GHz-Antenna-90MM-ELRS-Compatible/dp/B0G7F842V8                   |Amazon               |Grant      |For ESP-NOW LR external antenna                        |
|ZHOFONET XT30 Male/Female Pigtail 16AWG Silicone Wire (5 Pairs) |Part      |1       |8.99            |8.99            |https://www.amazon.com/ZHOFONET-Pigtail-Female-Connector-Silicone/dp/B09F3CLKBG            |Amazon               |Grant      |Main battery connector lead                            |
|Mini MP1584EN 5V 3A DC-DC Buck Converter Module (6-Pack)        |Part      |1       |7.98            |7.98            |https://www.amazon.com/Converter-Voltage-Regulator-MP1584EN-Adjustable/dp/B0GHRPDKHW       |Amazon               |Grant      |Steps 2S battery down to 5.0V                          |
|HiLetgo BMP280-3.3 Atmospheric Pressure Barometer Sensor (5pcs) |Part      |1       |7.39            |7.39            |https://www.amazon.com/HiLetgo-Precision-BMP280-3-3-Atmospheric-Pressure/dp/B07VNDZ6N4     |Amazon               |Grant      |3.3V I2C barometer                                     |
|JLCPCB Custom Carrier PCB (brushless_Y16, 5pcs)                 |Part      |1       |4.00            |4.00            |https://jlcpcb.com/                                                                        |JLCPCB               |Grant      |Green 1.6mm OSP carrier PCB (5-pack)                   |
|JLCPCB & JLC3DP Shipping                                        |Shipping  |1       |11.70           |11.70           |https://jlcpcb.com/                                                                        |JLCPCB / JLC3DP      |Grant      |Combined shipping for carrier PCB and 3D-printed frames|
|Amazon Shipping (1203 Motors)                                   |Shipping  |1       |1.50            |1.50            |https://www.amazon.com/SPARKHOBBY-Brushless-FPVRacer-Freestyle-Cinewhoop/dp/B0FF349Z37     |Amazon               |Grant      |Shipping fee for motor set                             |
|SH 8p connector kit                                             |Part      |1       |19.99           |0.00            |https://www.amazon.com/Pre-Crimped-Connectors-Compatible-controller-SpeedyBee/dp/B0D2MQ85LK|Amazon               |Already own|Already own ($19.99 value for reproducibility)         |
|Seeed Studio XIAO ESP32S3 Sense Microcontroller                 |Part      |1       |13.99           |0.00            |https://www.amazon.com/Seeed-Studio-XIAO-ESP32S3-Microcontroller/dp/B0C69FFVHH             |Seeed Studio / Amazon|Already own|Already own ($13.99 value for reproducibility)         |
|GY-NEO6MV2 NEO-6M GPS Module with Ceramic Antenna               |Part      |1       |8.99            |0.00            |https://www.amazon.com/GY-NEO6MV2-NEO-6M-Module-Ceramic-Antenna/dp/B01D1D0F5M              |Amazon               |Already own|Already own ($8.99 value for reproducibility)          |
|Tax                                                             |Tax or fee|1       |8.56            |8.56            |                                                                                           |                     |Grant      |VA 5.03% Tax on $170.23 parts subtotal                 |
|Total                                                           |          |        |                |191.99          |                                                                                           |                     |           |                                                       |


# Wiring/Connections on PCB

| Net Name | Function / Signal | All Connected Pins |
| :--- | :--- | :--- |
| `2s` | Battery Voltage (`VBAT`) | `J5` Pin 1, `J7` Pin 7, `J8` Pin 2 |
| `5` | Regulated `+5V` Rail | `J1` Pin 1, `J6` Pin 1 |
| `3` | Regulated `+3.3V` Rail | `J1` Pin 3, `J3` Pin 1, `J4` Pin 1, `J9` Pin 1 |
| `g` | Common Ground (`GND`) | `J1` Pin 2, `J3` Pin 2, `J4` Pin 2, `J5` Pin 4, `J6` Pin 4, `J7` Pin 8, `J8` Pin 3, `J9` Pin 4 |
| `1` | ESC Motor 1 (`D0`) | `J2` Pin 1, `J7` Pin 6 |
| `2` | ESC Motor 2 (`D1`) | `J2` Pin 2, `J7` Pin 5 |
| `3` | ESC Motor 3 (`D2`) | `J2` Pin 3, `J7` Pin 4 |
| `4` | ESC Motor 4 (`D3`) | `J2` Pin 4, `J7` Pin 3 |
| `sda` | Shared I2C Data | `J2` Pin 5, `J3` Pin 4, `J4` Pin 4 |
| `scl` | Shared I2C Clock | `J2` Pin 6, `J3` Pin 3, `J4` Pin 3 |
| `rx` | UART (`D6` ➔ GPS `RX`) | `J2` Pin 7, `J9` Pin 2 |
| `tx` | UART (`D7` ➔ GPS `TX`) | `J1` Pin 7, `J9` Pin 3 |
| `vadc` | Battery Voltage Sense | `J1` Pin 6, `J8` Pin 1 |
| *No-Connect* | Unused Pins | `J1` Pin 4, `J1` Pin 5, `J5` Pin 2, `J5` Pin 3, `J6` Pin 2, `J6` Pin 3, `J7` Pin 1, `J7` Pin 2 |

