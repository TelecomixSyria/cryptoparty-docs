#!/bin/bash

# We want a docname
DOCNAME=$1

# Default language is English ("en")
LANGUAGE=${2:-en}

CONTENTDIR=../content-parts/$LANGUAGE
DOCDIR=.
DOCPATH="$DOCDIR/$DOCNAME"

if [ ! -r "$DOCPATH" -o ! -f "$DOCPATH" ]; then
  echo "Error: cannot read $DOCPATH, did you specify a correct document?"
  exit 1
fi

if ! which pandoc >/dev/null 2>&1; then
  echo "Error: pandoc is required to produce the document"
  exit 1
fi

while read incfile; do
  if [ -n "$incfile" ]; then
    cat "$CONTENTDIR/$incfile"
  fi
done < $DOCPATH | pandoc -o "$DOCNAME.pdf" -

