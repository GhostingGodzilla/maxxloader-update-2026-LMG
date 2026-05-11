# Maxxloader Hard Case Loader for EMF100 — v1

## Overview
Modular hard-case loader designed to mate with EMF100 markers. Includes bottom/front/back/top panels, lid, paddle chamber, paddle wheel, hose ports, motor mount, and EMF100 adapters. Designed for **PETG** printing and assembly with **M4** hardware.

---

## Files included
- **scad/** — OpenSCAD source files for each part  
- **stl/** — Exported STL files ready to slice  
- **docs/** — photos, assembly diagrams, and test notes

---

## Hardware
- **M4 socket head screws and M4 nuts or T‑nuts**  
- **M4 washers**  
- **6 mm dowel pins**  
- **12V gear motor (60–100 RPM, 6 mm shaft)**  
- **3S LiPo 2200 mAh battery**  
- **Hose 25 mm ID**

---

## Where to buy parts
- **M4 screws and nuts** — Amazon; McMaster‑Carr; local hardware stores.  
- **6 mm dowel pins** — McMaster‑Carr; Amazon.  
- **12V geared DC motor 6 mm shaft** — Amazon; eBay; Pololu; local robotics suppliers.  
- **3S LiPo 2200 mAh battery** — HobbyKing; Amazon; local RC shops.  
- **25 mm ID silicone hose** — Amazon; McMaster‑Carr; silicone hose specialty stores.  
- **PETG filament 1.75 mm** — MatterHackers; Amazon; Prusa; local filament suppliers.

**Notes**
- Buy assorted M4 screw lengths (6–25 mm) and extra nuts/washers.  
- Confirm motor shaft diameter is **6 mm** and check stall current before connecting battery.  
- Expect to tune hole tolerances by **±0.2–0.5 mm** after test prints.

---

## Print settings recommended
- **Material:** PETG  
- **Nozzle:** 0.4 mm  
- **Layer height:** 0.20 mm  
- **Perimeters:** 3–4  
- **Infill:** 20–40% for panels; 60% for flanges and motor mount  
- **Supports:** minimal for angled ports and paddle overhangs  
- **Bed adhesion:** brim for large panels

---

## Assembly summary
1. Insert M4 nuts into nut pockets.  
2. Mate bottom halves using alignment pins; loosely install M4 screws.  
3. Attach top halves; loosely install screws.  
4. Mount motor to motor plate and secure to paddle chamber.  
5. Fit paddle wheel on shaft and secure.  
6. Tighten all screws evenly and install gasket in lid channel.  
7. Dry run with 20–50 paintballs; adjust paddle speed and funnel angle if needed.

---

## Test checklist
- Print **flange test**, **port test**, and **paddle wheel** test pieces first.  
- Verify **M4 nut press fit** and alignment pin clearance.  
- Verify **hose ID** and port angle fit.  
- Adjust hole tolerances by **±0.2–0.5 mm** if needed.

---

### Bill of Materials (example)
| Item | Qty | Example supplier / SKU | Notes |
|---|---:|---|---|
| M4 socket head cap screw assorted (6–25 mm) | 50 | Amazon / assorted kit | Metric M4, 0.7 mm pitch |
| M4 hex nut (stainless) | 50 | McMaster‑Carr | or T‑nuts for panels |
| M4 washer | 50 | Amazon | flat washers |
| 6 mm dowel pins | 6 | McMaster‑Carr | alignment pins |
| 12V geared DC motor (60–100 RPM, 6 mm shaft) | 1 | Pololu / Amazon | check torque and stall current |
| 3S LiPo 2200 mAh battery | 1 | Hobby shop | use proper charger and safety |
| 25 mm ID silicone hose | 0.5 m | Amazon / McMaster | confirm ID vs OD |
| PETG filament 1.75 mm | 1 kg | MatterHackers / Amazon | color optional |

---

### Tolerances and fit guidance
- **M4 clearance hole:** 4.5 mm (±0.2 mm)  
- **Nut pocket:** nut width −0.1 to −0.2 mm for press fit  
- **Alignment pin hole:** pin dia +0.2 mm  
- **Hose port ID:** 25 mm (verify with test print)  
- **Paddle wheel shaft hole:** 6.0–6.2 mm (adjust for shaft fit)

---

### Safety note
This project uses a 3S LiPo battery. Follow standard LiPo safety: use a proper LiPo charger, never leave charging batteries unattended, store in a fireproof container, and verify connector polarity before connecting. The author is not responsible for misuse.

---

## License
This project is released under **CC BY-NC-SA**. See the `LICENSE` file for full text.

---

## Contact
Open issues or pull requests locally or share fitment reports and improvements.
