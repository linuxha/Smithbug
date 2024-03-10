# Smithbug

Smithbug is a typical advanced ROM monitor used for Motorola 6800 based development
systems from the 1970s through the 1980's. I got it off my friend [Herb Johnson's
pages](https://www.retrotechnology.com/) ([links to the pages below](#Sources)). The version in the repos has been modified from the original, see [notes below](#Notes) for the differences.

# Table of Contents

1. [Description](#Description)
2. [History](#History)
3. [Documentation](#Documentation)
4. [Notes](#Note)
5. [Sources](#Sources)
6. [Credits](#Credits)

## Description from original OCR'd documentation

The SMITHBUG resident system monitor EPROM can be 
used alone or in conjunction with your present 
monitor. It occupies the upper 2K bytes of memory 
space, starting at $F800, and requires a 6850 ACIA
at location $8004 (SWTBUG Version) or
$8008 (SMART-BUG Version) and 128 bytes of RAM
at location $A000. The RAM variables locations have
been kept compatable with either SMARTBUG or SWTBUG.
As SMITHBUG is an EPROM, it can be reprogrammed or
patch to suit individual system requirements. ([see notes below](#Notes))

SMITHBUG uses the greater than symbol ">" as its 
prompt and responds to the following valid commands: 
A, B, C, D, E, F, G, H, I, J, K, M, N, O, 
Q,R,S,T,V, X,1,2,@, & and *. Any other 
character typed after the prompt will be ignored 
and a new prompt will be issued.

# History

I love to build things. I went to school for Electronics (and later computers),
I started working with eletronics in the 80's. I enjoyed building and working
with hardware and software. I took a liking to Motorola processor families. So
after many years of missing out playing Motorola processors I decided to pick
up a few off Ebay and play. I recently built a simple
[Motorola 6802](https://github.com/crsjones/68Retro) based computer so I could
work with Microware's [RT/68MX](https://github.com/linuxha/RT68mx). We've
managed to find a copy of A/BASIC and RTEdit and we're in the process of getting
it disassembled. But in doing so I found I'm also in need of a ROM monitor. So
I decided to play with Smithbug as it looked like it had a few extra features.

# Documentation

https://www.retrotechnology.com/restore/smithbug_V1_OCR1.txt

| Command | |
| Character | Operation |
|--|--|
| R | Display pseudoregisters (user's stack) |
| A | Change A pseudoregister and display pseudoregisters |
| B | Change B pseudoregister and display pseudoregisters |
| C | Change condition codes pseudoregister and display pseudoregisters |
| X | Change X pseudoregister and display pseudoregisters |
| S | Change pseudoregister stack address and display resulting pseudoregisters |
| D | Disassemble code in memory |
| T | Trace (execute) a program one instruction at a time |
| K | Continue with trace at pseudoregister program counter location |
| 1 | Set one breakpoint in program and execute beginning at pseudoregister program counter location |
| 2 | Set two breakpoints and execute as above |
| E | Examine (or examine and change) a memory location |
| V | View a 128-byte block of memory |
| M | Move a block of memory |
| I | Insert a specified value in all locations of a memory block |
| F | Find a specified byte in a memory block |
| @ | Fill with ASCII characters from keyboard |
| G | Go to location in PC pseudoregister and execute |
| J | Jump to address to be specified |
| N | Inhibit echo to system terminal |
| O | Allow echo to system terminal |
| H | Send monitor output to hard copy device |
| Q | Jump to disc boot routine |
| & | Jump to disc DOS routine warm entry point |
| * | Jump to adjunct monitor |
| U | User vector @ USERV |

# Notes

- I used the [SMITHbug V2 files](https://www.retrotechnology.com/restore/smithbug_v2.zip) found on herb's [Smithbug page](https://www.retrotechnology.com/restore/smithbug.html)
- I'm using the [AS](http://john.ccac.rwth-aachen.de:8000/as/index.html) (I call it ASL) assembler by Alfred Arnold.
  - I call it asl because I have another assembler called as. Seems like a lot of folks call their assemblers as.
  - I use asl because I work with a lot of different processors and I need a macro assembler.
- My ACIA is at $E000 and my PIA is at $E004.
- ROM starts at $E000 but the first 256 bytes are swapped out for IO.
  - Smithbug starts at $E100
  - Plenty of ROM to add more code.
- RAM goes from $0000 thru $DFFF (56K)

# Sources

https://www.retrotechnology.com/restore/smithbug.html

# Credits

Edward Smith (original author)
Mike Lee (source of the find)
Herb Johnson (Keeper of the RetroTechnology pages, Computer Archaeologist)
Neil Cherry (me, Computer Archaeologist) 
