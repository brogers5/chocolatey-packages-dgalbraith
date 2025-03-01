# [<img src="https://cdn.jsdelivr.net/gh/dgalbraith/chocolatey-packages@ea0f988a4cfad988a1f4ede817d493f70da0b74a/icons/calibre-dedrm.png" width="48" height="48"/>DeDRM - Calibre DRM Removal Plugin](https://chocolatey.org/packages/calibre-dedrm)

[![GitHub license](https://img.shields.io/badge/license-GPLv3-blue)](https://www.gnu.org/licenses/gpl-3.0.html)
[![Maintenance status](https://img.shields.io/badge/maintained%3F-yes-green.svg)](https://github.com/dgalbraith/chocolatey-packages/graphs/commit-activity)
[![AppVeyor build](https://img.shields.io/appveyor/ci/dgalbraith/chocolatey-packages)](https://ci.appveyor.com/project/dgalbraith/chocolatey-packages)
[![Software version](https://img.shields.io/badge/Source-v7.2.1-blue)](https://github.com/apprenticeharper/DeDRM_tools/releases/tag/v7.2.1)
[![Chocolatey package version](https://img.shields.io/chocolatey/v/calibre-dedrm?label=Chocolatey)](https://chocolatey.org/packages/calibre-dedrm)

DeDRM is a plugin for Calibre that removes DRM from ebooks as they are imported into Calibre.

The DeDRM plugin can remove DRM from Kindle eBooks (but not rented Kindle ebooks, books downloaded to a Kindle Fire,
Kindle for iOS or the Windows Store Kindle App), Barnes & Noble ePub ebooks (but not books downloaded to the Windows
Store Nook App) , any ebooks using Adobe Digital Editions DRM (this includes ePubs from Kobo and Sony that are
downloaded for Adobe Digital Editions), and the older Mobipocket and eReader ebooks.

There are two Calibre plugins installed: DeDRM and Obok. The DeDRM plugin handles books that use Amazon DRM, Adobe
Digital Editions DRM (version 1), Barnes & Noble DRM, and some historical formats. The Obok plugin handles Kobo DRM.

To use the plugin, simply import DRMed ebooks into Calibre, and the DRM will be removed. If ebooks have already been
imported into Calibre, they will need to be removed and imported again to remove the DRM.

## Anti-Piracy Notice

Please only use these tools for gaining full access to your own ebooks for archiving/conversion/convenience. De-drmed
ebooks should not be uploaded to open servers, torrents, or other methods of mass distribution. Authors, retailers
and publishers all need to make a living, so that they can continue to produce books for us to read. Don’t be a
parasite.

## Notes

* Current versions of DeDRM are for Calibre 5.x+. For the earlier 4.x versions you must use [DeDRM 6.8.1](https://chocolatey.org/packages/calibre-dedrm/6.8.1).
  
  ```powershell
  choco install calibre --version 4.23
  choco pin add -n=calibre --version 4.23
  choco install calibre-dedrm --version 6.8.1
  choco pin add -n=calibre-dedrm --version 6.8.1
  ```

* This package is automatically updated using the [Chocolatey Automatic Package Update Model (AU)](https://github.com/majkinetor/au/blob/master/README.md).
  If you find it is out of date by more than a day or two, please contact the maintainer(s) and let them know the package is no longer updating correctly.
