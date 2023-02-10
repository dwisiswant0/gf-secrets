# :key: gf-secrets

Secret and/or credential patterns used for `gf`.

## Requirements :sparkles:

- Have `gf` in your machine. [Install now](https://github.com/tomnomnom/gf#install) if not ready!

## Getting started :dizzy:

Clone this repository.

```bash
▶ git clone https://github.com/dwisiswant0/gf-secrets
```

Then copy all JSON pattern files into `~/.gf` directory.

```bash
▶ cd gf-secrets/
▶ cp -a .gf/ $HOME
```

**See also**:

- [secpat2gf](https://github.com/dwisiswant0/secpat2gf): convert secret patterns to gf compatible.

## Workaround :recycle:

Finding for testing point with [gau](https://github.com/lc/gau) and [fff](https://github.com/tomnomnom/fff).

```bash
▶ gau -subs [host] | cut -d"?" -f1 | grep -E "\.js(onp?)?$" | tee urls.txt
▶ sort -u urls.txt | fff -s 200 -o out/
```

After we save response from known URLs, it's time to digging for secrets.

### Usage :speech_balloon: 

```bash
▶ ./gf-secrets.sh
```

You will see _stdout_ results in your terminal if grep recursively turns match.

## Contributing :busts_in_silhouette:

[![contributions](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/dwisiswant0/gf-secrets/issues)

If you find a general pattern for secrets and/or credentials, feel free to open pull request. :green_heart:

## License :page_facing_up:

The JSON files and documentation in this project are released under the MIT License.

Tools used with this project include third party materials.

[![Twitter Follow](https://img.shields.io/twitter/follow/dwisiswant0.svg?style=social)](https://twitter.com/dwisiswant0)
