# FixLinkIt
Quick Fix Script for LinkIt from HID TRISM

The LinkIt application packaged by HID for connecting a PIN pad into TRISM and/or your customer onboarding application can sometimes lose its connectivity to the PIN pad. When it does, you may receive one of the following errors:

- PIN block
- Unable to Connect to Interface
- Your onboarding application freezes when you try to retrieve the PIN

This script is something to be placed on the user desktop that ends the LinkIt process, instructs the user to disconnect and reconnect the PIN pad then wait for the Welcome message, and when they click OK it will re-start the LinkIt application. 

It runs on both 32-bit and 64-bit Windows and runs LinkIt from the default installation directory in the Demoteller folder. No local administrator rights should be required, as long as the drivers for the PIN pad are already installed. 