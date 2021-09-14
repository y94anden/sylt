\version "2.18.2"

\header {
  title = "Askan & Charlie"
  composer = "Lucas Asterlund"
}

melody = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4

  d8 d4 g,8 a4. b16 a  |
  a8 g4 g8 a4. g8      |
  b4 d8 d e4 e8 d      |
  a1                   |

  b8 d d g, a4. b16 a  |
  a8 g4 g16 g b8 a4 g8 |
  b4 d8 d e4 e4        |
  g,8 g4. r4.  g8      |
}

text =  \lyricmode {
Nytt liv är här
Nå gon an nan får gå
You cant al ways get what you want
Ask an du är grym
Du kommer vin na he la värl den
Du kom på en Ru by Tues day
}

ackord = \chordmode {
  \set chordChanges = ##t
  g2 a:m c d
  g2 a:m c d
  g2 a:m c d
  g2 a:m c d
}


\score {
  <<
    \context ChordNames { \ackord }
    \context Staff {
      <<
	\context Voice = "melody" \melody
	\lyricsto "melody" \new Lyrics \text
      >>
    }
  >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
  
  \layout {
    \context {
      \Score
    }
  }
}

\markup {
  \column {
    \line { Du föddes i ett regn                   }
    \line { Ett crossfire hurricane                }
    \line { Men någonstans där borta lös solen     }
    \line { Din morsa är stark och farsan är ball  }
    \line { Tillsammans är dom ett hav             }
    \line { Din ledstjärna är Idun                 }
    \line { Hon har vandrat många steg             }
    \line { Hennes skor är redan nöta              }
    \line { Charlie han stack                      }
    \line { Det var dags för han att gå            }
    \line { Men du kom hit och tände ett ljus      }
    \line { Shine a light on me                    }
    \line { Shine a light on me                    }
  }
}