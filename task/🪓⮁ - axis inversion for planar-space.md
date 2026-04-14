Axis inversion for planar-space
===============================

Allow for inverted axes in PlanarSpace

```
2026-03-11		🪓⮁		New task
```

This will start in html-experiment & common, then the projects will be upgraded to the new html-common release.

The main initial client for this will be the little polygon app, after that very hopefully year-clock.


Initial work on polygon
-----------------------

It's small and relatively unimportant so I'll use it as the guinea pig.


Y-inversion
-----------

I need a quick, not-necessarily-ideal solution for the moment, one that can be revisited later.

As y-inversion is the main thing i need I think I'll try just adding a small conversion/outputter method to Point - see how it goes.
