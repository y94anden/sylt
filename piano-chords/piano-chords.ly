\layout {
  indent = 0.0
}
allchords = {
  \chordmode {
      \break
    c1 c:m c:7 \break
    d d:m d:7 \break
    e e:m e:7 \break
    f f:m f:7 \break
    g g:m g:7 \break
    a a:m a:7 \break
    b b:m b:7 \break
  }
}
<<
  \new ChordNames {
    \allchords
  }
  \new Staff \with { \remove "Time_signature_engraver" }
  {
    \allchords
  }
>>
