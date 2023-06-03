YAML is a standard format for storing data.
relied upon for:
 configuration files,log files, debugging complex data structures, interprocess messaging, and cross-language data sharing.
 
example YAML file called example.yaml:

---
# Our first YAML document
bottle: wine
capitals:
  Japan: Tokyo
  Argentina: Buenos Aires
oceans:
  - Indian
  - Atlantic
  - Arctic
  - Pacific
…

Sequences can also be written in YAML like so:
planets: [Mercury, Venus, Mars]

IN YAML scalars are single value data types. Items that are not sequences/arrays

Altough YAML is more readable, it is much slower than JSON.
