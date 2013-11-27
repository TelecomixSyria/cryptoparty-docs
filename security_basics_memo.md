# Memo for basic communication security

## Where to get the tools?

### Safer web browsing
_HTTPS-Everywhere_ is a Firefox and Chrome add-on that automatically turns TLS encryption on for websites known to be implementing it.

- All platforms: `https://www.eff.org/https-everywhere`

### Instant messaging
Off-the-Record (OTR) provides end-to-end encryption and authentication for one-to-one chat.

- **Windows**:
    1. Pidgin: `https://pidgin.im` 
    2. Pidgin's OTR plugin: `https://otr.cypherpunk.ca`
- **GNU/Linux**: `pidgin` and `pidgin-otr` from the package manager
- **Mac OS**: Adium (already included)

### Asynchronous messaging (emails)
Pretty Good Privacy (PGP) is a protocol that provides end-to-end encryption and authentication for one-to-one and one-to-many asynchronous messaging.

- **Windows**:
    1. Thunderbird: `https://www.mozilla.org/en-US/thunderbird/`
    2. gpg4win: `http://files.gpg4win.org/gpg4win-2.2.1.exe`
    3. Enigmail plugin: `https://www.enigmail.net/download/`
- **GNU/Linux**:
    1. `thunderbird` and `gpg` from the package manager
    2. Enigmail plugin: `https://www.enigmail.net/download/`
- **Mac OS**:
    1. Thunderbird: `https://www.mozilla.org/en-US/thunderbird/`
    2. GPGTools: `https://gpgtools.org/`
    3. Enigmail plugin: `https://www.enigmail.net/download/`

## How to check fingerprints?
Checking fingerprints is often the only way to ensure that an encrypted connection is effectively encrypted all the way between you and your peer, rather than decrypted in the middle by an attacker. A fingerprint is a sequence of hexadecimal characters, sometimes including spaces or colons for reading convenience, such as:

- `80:F0:A9:C7:27:34:24:0A:BE:9C:38:7F:CA:08:AF:B3:36:E5:0E:AD` (a website's TLS/SSL certificate fingerprint in Firefox)
- `6EBA5236 07DBF97A 8F53D878 85C1EFD0 33F7B89C` (a buddy's OTR fingerprint in Pidgin)

**Fingerprints must be checked through a secure channel** and the best is to be physically near the other person. Once the fingerprints have been checked, the channel can be considered secure and more fingerprint checking can be made through it. A secure OTR channel can for example be used to exchange PGP fingerprints.

### In web browsers
Do not try to look for a fingerprint if a website uses HTTP instead of HTTPS: the website provides neither encryption or authentication and hence does not have a fingerprint.

- **Firefox**:
    1. Click on the lock sign left of the URL
    2. Click on "More information"
    3. Click on "View certificate"
    4. Check the SHA1 Fingerprint
- **Chrome**: TODO
- **Internet Explorer**: TODO

### With PGP
Similarly to websites, only your contacts who use PGP will have a PGP fingerprint that you can check.

In **Thunderbird** with **Enigmail**, TODO.

### With OTR
As for PGP, do not try to look for an OTR fingerprint for a buddy who does not use OTR: it does not exist.

- **Pidgin**:
    * if your buddy is online:
        1. Open a chat window with your buddy
        2. Click on the red "Not private" label (bottom right) to start an OTR conversation
        3. The label changes to "Unverified" if you have not checked the fingerprint yet, to "Private" if you have
        4. Click on the label and select "Re-authenticate buddy"
        5. Select "manual verification" to display the buddy's fingerprint
    * if your buddy if offline:
        1. Select menu Tools/Plugins from the main window (contact list)
        2. Click on "Off-the-Record messaging" in the list (do not untick it)
        3. Click on "Configure plugin"
        4. Go to the "Known fingerprints" tab
        5. All the fingerprints ever received by Pidgin during OTR chats are shown in the list
- **Adium**: TODO
