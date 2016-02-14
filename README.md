# brtos-contiki
Integration of BRTOS with Contiki OS 

Platforms supported (see folder "boards"):
- Colduino board (Coldfire V1 CPU + USB) (CW - working)
- Colduino board (Coldfire V1 CPU + USB) (Eclipse - not tested)
- FRDM-KL25Z (ARM Cortex M0 CPU + USB) (CW - not working yet)
- FRDM-KL25Z (ARM Cortex M0 CPU + UART) (CoIDE - working)
- FRDM-KL25Z (ARM Cortex M0 CPU + UART) (Eclipse - working)

Contiki port: see brtos-contiki-platform

Working with MRF24J40 radio

Apps (see brtos-contiki-examples):
- rpl-border-router

Building:

1)  git clone https://github.com/brtos/brtos-contiki.git

2)  git remote add -f brtos https://github.com/brtos/brtos.git

	git subtree pull --prefix=brtos --squash brtos master
	
3)  git remote add -f contiki https://github.com/contiki-os/contiki.git

	git subtree pull --prefix=contiki --squash contiki master

4) Import project from "/boards" folder and build it.





