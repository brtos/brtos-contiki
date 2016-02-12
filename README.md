# brtos-contiki
Integration of BRTOS with Contiki OS 

Platforms supported (see folder "boards"):
- Colduino board (Coldfire V1 CPU + USB) (working)
- FRDM-KL25Z (ARM Cortex M0 CPU + USB) (Not working yet)
- FRDM-KL25Z (ARM Cortex M0 CPU + UART) (CoIDE - working)
- FRDM-KL25Z (ARM Cortex M0 CPU + UART) (Eclipse - working)

Contiki port: see contiki/platform/brtos

Working with MRF24J40 radio

Apps:
- rpl-border-router

Building:

1) git clone https://github.com/brtos/brtos-contiki.git

2) git submodule update

3) Import project from "/boards" folder and build it.





