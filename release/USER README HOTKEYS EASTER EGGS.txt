       .------------------------------------------------------.
       |  R I C O S  /  V I C I O U S   C I R C L E S         |
       |          FLASH PARTY 2026 - COMMODORE 64            |
       |                DEMO / USER README                    |
       '------------------------------------------------------'

           ~~~~~~       ~~~~~~~~~~        ~~~~~~
        ~~~~~~~~~~~~  ~~~~~~~~~~~~~~~~  ~~~~~~~~~~~~
           THE MACHINE BECOMES AN OCEAN.

WELCOME
-------
RicOS is a Commodore 64 demo that begins as a machine-diagnostic
terminal, turns into a moving CUSTOM CHARSET show, and ends at an
interactive ocean. Watch the graphics, change their colors, listen to
the SID soundtrack, or leave the sea running with the picture hidden.

This README is for people RUNNING THE DEMO. No development tools,
source files or compilation are needed to enjoy the executable.


QUICK START
-----------
1. Load and run the supplied RicOS executable on your C64 or a suitable
   C64 emulator. Follow the instructions for your release format.
2. SYSINFO64 checks the hardware, followed by an animated ocean. At
   "PRESS A KEY", press a key to continue into the visual demo.
3. During the first scroll, press 0-9 for the optional color trip;
   otherwise watch the original grayscale show.
4. At the ending, press V to hide the picture and keep the ocean playing.


THE KEYBOARD - KEEP THIS HANDY
------------------------------

   +---------------- SYSINFO64 / INTRO --------------------+
   | At PRESS A KEY:                                       |
   | ANY KEY   Start the visual demo                       |
   | S         Run SYSINFO64 again                         |
   | O         Skip ahead to the ocean outro               |
   | RUN/STOP  Return to real C64 BASIC                    |
   +-------------------------------------------------------+

   +---------------- DURING THE DEMO ----------------------+
   | 0 - 9     Start AYAHUASCA during the first scroll;    |
   |           the number chooses the first color palette |
   | SAME KEY  Press it again to turn the color mode off   |
   | OTHER #   Choose a different palette                  |
   | S         Run SYSINFO64 again                         |
   | O         Skip ahead to the outro                     |
   | RUN/STOP  Return to real C64 BASIC                    |
   +-------------------------------------------------------+

   +---------------- AT THE OUTRO -------------------------+
   | V         Hide/show the picture; audio keeps playing |
   | N         Restart the demo without SYSINFO64          |
   | S         Run SYSINFO64 again                         |
   | Y         Return to real C64 BASIC                    |
   | RUN/STOP  Return to real C64 BASIC                    |
   +-------------------------------------------------------+

Release a number key before pressing it again. The colorful trip is
optional: without it, the original grayscale presentation remains.


WHAT YOU ARE WATCHING
---------------------

      SYSINFO64        CUSTOM CHARSET        OCEAN OUTRO
      [  TEST  ]  ---> [ / / / / / ]  --->   ~~~~~~~~~~~

SYSINFO64 - THE MACHINE GETS TESTED
-----------------------------------
Before the visual journey, RicOS starts as a diagnostic terminal. Its
checks include the machine's PAL-B, Drean PAL-N, NTSC or NTSC OLD video
timing; CPU, VIC-II, CIA and RAM diagnostics; and the SID sound hardware.
It also scans the IEC bus for responses at drive addresses 8 through 11.

The audio section checks for a possible second SID, including supported
locations and SIDKick-pico identification. If an independent second SID
is detected, RicOS can use two audio outputs; otherwise it works with
a regular single-SID machine. The JOYSTICK row is a visual element,
NOT an actual joystick-port test. These software checks cannot certify
every unusual hardware modification.

When diagnostics finish, the introduction becomes an animated sea with
synthesized wave noise. At PRESS A KEY, use the controls above to begin
the show, repeat the test, or jump to the ocean ending.


THE CUSTOM CHARSET ENGINE
  These are NOT graphics made only from the C64's original character
  shapes. RicOS draws its own characters and treats them as moving
  graphic tiles. A custom scrolling engine turns those small pieces
  into horizontal and vertical patterns, diagonals, gradients,
  rotating lines and other transformations across 26 stages.

      [#][#][#][#]     [\\][\\][\\][\\]     [|][|][|][|]
         --->                /                 ROTATE

  The engine combines smooth pixel movement with character-by-character
  movement. The screen and custom character set keep the patterns flowing.
  This is a character-based production, not a new bitmap drawn for
  every frame.

AYAHUASCA - THE OPTIONAL COLOR JOURNEY
--------------------------------------
The demo begins in grayscale. During its FIRST scroll, press a number
from 0 to 9 to turn on AYAHUASCA MODE. Your number determines which of
the ten color palettes starts the trip. Subsequent palettes follow
automatically.

        GRAY  -->  YOUR PALETTE  -->  NEXT  -->  NEXT ...

Each upward-and-downward scroll cycle keeps the SAME palette. Once the
characters leave the screen, RicOS hides the change and brings the
next palette in for another round. The graphics keep moving to the SID
music while the colors take their journey.

Press the same number again to switch the mode off and return to gray,
or try another number to select another color. Allow time for a color
change to finish before requesting another one.

WARNING: DO NOT OVERDOSE! Too many doses may distort the demo's sense
of time and make the journey end earlier than expected.


THE OCEAN: SYNTHESIZED BY THE SID
--------------------------------
RicOS does not simply play a recording of waves. The Commodore 64
SOUND CHIP generates the sea in real time. The program shapes noise,
volume and filtering into overlapping events:

       quiet water     approaching wave       breaking crest
       ~ ~ ~ ~ ~       ~~~~ /~~~~~~~          /\  /\  /\
                                                    \\\\\\
          retreat / fading foam         next wave rises
          ~~~~...............         ~~~~~~~~ /~~~~~~

  * A softer bed of water sits underneath the larger waves.
  * A swell builds gradually instead of switching on abruptly.
  * A short break gives way to a longer, dissolving foam texture.
  * Filter changes alter the texture as each wave grows and retreats.
  * The tail of one wave can meet the beginning of another.

The challenge is to make a tiny synthesizer sound like an evolving
place, not a single looped burst of white noise. The ocean uses
several coordinated sound phases, changing envelopes and carefully
managed fades to reduce harsh clicks. Its core engine serves the
opening and the ending, with scene-specific timing and presentation.


TWO SID CHIPS? AN EXTRA DIMENSION
--------------------------------
                       [  C64  ]
                          |
                   DETECT SECOND SID
                          |
                 +--------+--------+
                 |                 |
              SID ONLY           TWO SIDs
                 |                 |
             MONO MODE       LEFT / RIGHT*

*Separate audio outputs must actually be connected left and right.

SYSINFO64 looks for a real second SID rather than blindly assuming
that a readable address means a second chip is installed. It checks
common locations and tries to distinguish a second SID from a mirror
of the first. If no independent chip is found, RicOS keeps its normal
single-SID behavior.

For the MUSIC, the original mono tune is preserved. When SID2 is
confirmed, its live register commands are duplicated to both chips.
This is synchronized DUAL MONO across two outputs, not a newly arranged
instrument-by-instrument stereo mix.

For the OCEAN, there is a different trick: the two chips can run waves
at staggered moments with slightly different textures. One side can
rise while the other fades, giving the sea a genuine sense of motion
between left and right when the outputs are separated. The ocean also
works on an ordinary one-SID Commodore 64.


A SECOND LIFE FOR THE DEMO: OCEAN MODE
-------------------------------------

                   .--------------------.
                   |                    |
                   |    SCREEN HIDDEN   |
                   |                    |
                   '--------------------'
                     ~~~~~~~~~~~~~~~~
                       SOUND GOES ON

Want the sea without the moving pictures? Reach the outro, or press O
to jump there, then press V. The video image is hidden and the black
border remains, while the synthesized ocean keeps running. This mode
has no programmed end: leave the Commodore 64 playing as an ambient
sea-sound generator for rest, background listening or sleep.

Press V again to restore the picture. Press N to watch the demo again,
or Y / RUN/STOP to return to real BASIC.

IMPORTANT: V hides the image in SOFTWARE. It does not switch off the
monitor or the computer. Set a comfortable audio volume and follow
normal equipment precautions.


MADE FOR MORE THAN ONE VIDEO STANDARD
-------------------------------------
RicOS checks video timing and adapts its animation and sound
scheduling for PAL-B, Drean PAL-N, NTSC and NTSC OLD configurations.
Actual results can depend on the emulator, machine and SID hardware.


A BONUS FOR DREAN OWNERS
------------------------
As a gift with this release, we include kernal-drean.bin, an optional
KERNAL ROM image for giving the Drean its proper name on the Commodore 64
BASIC welcome screen -- just as it deserves!

You can use it in a compatible WinVICE ROM setup, or as the basis for a
compatible physical ROM replacement. The bonus is not required to run
RicOS. Keep a backup of your original ROM and check compatibility before
changing any emulator files or real hardware.


THE PEOPLE BEHIND THE WAVES
---------------------------

      CIRCULOS VICIOSOS / VICIOUS CIRCLES
      RICO                  Concept, graphics & scroll engine
      GLENN RUNE GALLEFOSS  SID music

                         FLASH PARTY 2026

           ~~~~~~~ THANKS FOR WATCHING ~~~~~~~
