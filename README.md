THIRD - That's How I Roll Dice
======

A dice roller for roleplaying nerds, by Brendan Jurd

Premise
------

Rolling dice is annoying.  First you need to have the right dice with you.
Then, when the time comes to make a roll, you need to extract the correct
quantity and variety of dice from the assortment scattered around the room.
After rolling (and picking up those dice which fell on the floor, and
re-rolling them) you need to perform some tedious mental arithmetic.

Further, the kinds of dice you can use are constrained by physical attributes;
to produce fair outcomes a die must be possible to construct using some
face-uniform solid.

Faced with these obstacles, I did the same thing I do in pretty much every
other situation in life.  I wrote a program.

Usage
------

Each of the icons running down the middle of the application represents a
different die, with the number of sides shown on the icon.  The input box next
to the die selects how many of that die you want to roll.

Directly underneath the dice is the custom die.  Want to roll a d17 or a d1000?
No problem.  Just set the number of sides you want the die to have, and how
many of them you want to roll.

Underneath the custom die are the multiplier (x) and modifier (+) inputs.
After your dice are rolled, the total is multiplied by the multiplier and then
the modifier is added (or subtracted, if it is negative).

Left-clicking on a dice or modifier icon will add one to the count.
Right-clicking will subtract one.  Shift-clicking will add or subtract five at
a time, instead of one.

When you've set things up to your liking, hit the "Roll" button.  The results
of your roll will be shown in the results box to the right, including each
individual dice roll and the total result after applying modifiers.

You can repeatedly roll the same configuration by simply hitting "Roll" again.

If you are sick of your current configuration and want to start again from
scratch, that's what the "Reset" button is for.

Presets
------

If you find yourself rolling a particular configuration of dice often, you
might want to save it as a preset.  Set up the configuration as if you were
going to roll it, and then hit the Add Preset (+) button underneath the Presets
list.  This will save your current configuration as a new preset.

Once you've saved a preset you can load its configuration by clicking on it
once, and roll it by double-clicking.

Profiles
------

Presets are saved under a profile.  You can maintain several separate profiles,
so you don't need to worry about getting your wizard's attack roll confused
with your rogue's initiative.  Just set up a profile for each of your
characters.

Installation (Android)
------

Install the app from the Google Play store:
https://play.google.com/store/apps/details?id=au.id.swords.third2

Installation (Linux)
------

Extract the distribution package, cd into the directory and then type `make
install` as root.

Execute the application by running `/usr/local/bin/third.py`.

To uninstall, just delete the installed files.  These are located at
/usr/local/bin/third.py, /usr/local/share/third and /usr/local/share/doc/third.

Installation (Windows)
------

Download the windows installer executable and run it.

Execute the application by running third.exe in whatever location you installed
it, or use the Start menu/Quick-launch shortcuts if you chose to create them in
the install process.

To uninstall, use the provided uninstall executable in the third Start menu
folder.

Distribution
------

third is open-source, licensed under the Simplified BSD license.  A copy of
this license can be found in the file named LICENSE in the topmost directory of
the source code.
