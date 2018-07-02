---
layout: post
title: How to configure a Wiimote controller for an N64 emulator
---

I recently wanted to shoot up an old n64 game on an emulator again and ran into some problems when trying to set up my wiimote controller.

This is how I solved it.

### Installation

Of course we need to install some packages first.

The most popular N64 emulator for linux is by far Mupen64plus.
It doesn't come with a gui by default but there are several frontends availabel e.g. M64py.
I'm fint with stating the emulator from terminal so I only install the core application itself.

```bash
apt install mupen64plus
```

We also need to install bluetooth and the drivers for the wiimote.

```bash
apt install
```

Next step is to configure the bluetooth adapter

Configure wminput and map the buttons
