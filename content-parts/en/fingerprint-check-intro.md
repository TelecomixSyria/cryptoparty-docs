Checking fingerprints is often the only way to ensure that an encrypted connection is effectively encrypted all the way between you and your peer, rather than decrypted in the middle by an attacker. A fingerprint is a sequence of hexadecimal characters, sometimes including spaces or colons for reading convenience, such as:

- `80:F0:A9:C7:27:34:24:0A:BE:9C:38:7F:CA:08:AF:B3:36:E5:0E:AD` (a website's TLS/SSL certificate fingerprint in Firefox)
- `6EBA5236 07DBF97A 8F53D878 85C1EFD0 33F7B89C` (a buddy's OTR fingerprint in Pidgin)

**Fingerprints must be checked through a secure channel** and the best is to physically and directly retrieve it from the other person. Once the fingerprints have been checked, the channel can be considered secure and more fingerprint checking can be made through it. A secure OTR channel can for example be used to exchange PGP fingerprints.


