---
title: "Hugo Diagrams"
date: 2022-10-25T17:12:11+07:00
comment: true
tags: ["hugo", "tech", "diagrams"]
---

Hugo version >= 0.93.0

## GoAT Diagrams (Ascii)

Hugo! supports [GoAT](https://github.com/bep/goat) natively. This means that this code block:

````
```goat
      .               .                .               .--- 1          .-- 1     / 1
     / \              |                |           .---+            .-+         +
    /   \         .---+---.         .--+--.        |   '--- 2      |   '-- 2   / \ 2
   +     +        |       |        |       |    ---+            ---+          +
  / \   / \     .-+-.   .-+-.     .+.     .+.      |   .--- 3      |   .-- 3   \ / 3
 /   \ /   \    |   |   |   |    |   |   |   |     '---+            '-+         +
 1   2 3   4    1   2   3   4    1   2   3   4         '--- 4          '-- 4     \ 4

```
````

Will be rendered as:

```goat

          .               .                .               .--- 1          .-- 1     / 1
         / \              |                |           .---+            .-+         +
        /   \         .---+---.         .--+--.        |   '--- 2      |   '-- 2   / \ 2
       +     +        |       |        |       |    ---+            ---+          +
      / \   / \     .-+-.   .-+-.     .+.     .+.      |   .--- 3      |   .-- 3   \ / 3
     /   \ /   \    |   |   |   |    |   |   |   |     '---+            '-+         +
     1   2 3   4    1   2   3   4    1   2   3   4         '--- 4          '-- 4     \ 4
```

## GoAT Diagrams Examples

### Graphics

```goat
                                                                             .
    0       3                          P *              Eye /         ^     /
     *-------*      +y                    \                +)          \   /  Reflection
  1 /|    2 /|       ^                     \                \           \ v
   *-------* |       |                v0    \       v3           --------*--------
   | |4    | |7      |                  *----\-----*
   | *-----|-*       +-----> +x        /      v X   \          .-.<--------        o
   |/      |/       /                 /        o     \        | / | Refraction    / \
   *-------*       v                 /                \        +-'               /   \
  5       6      +z              v1 *------------------* v2    |                o-----o
                                                               v

```

### Complex

```goat
+-------------------+                           ^                      .---.
|    A Box          |__.--.__    __.-->         |      .-.             |   |
|                   |        '--'               v     | * |<---        |   |
+-------------------+                                  '-'             |   |
                       Round                                       *---(-. |
  .-----------------.  .-------.    .----------.         .-------.     | | |
 |   Mixed Rounded  | |         |  / Diagonals  \        |   |   |     | | |
 | & Square Corners |  '--. .--'  /              \       |---+---|     '-)-'       .--------.
 '--+------------+-'  .--. |     '-------+--------'      |   |   |       |        / Search /
    |            |   |    | '---.        |               '-------'       |       '-+------'
    |<---------->|   |    |      |       v                Interior                 |     ^
    '           <---'      '----'   .-----------.              ---.     .---       v     |
 .------------------.  Diag line    | .-------. +---.              \   /           .     |
 |   if (a > b)     +---.      .--->| |       | |    | Curved line  \ /           / \    |
 |   obj->fcn()     |    \    /     | '-------' |<--'                +           /   \   |
 '------------------'     '--'      '--+--------'      .--. .--.     |  .-.     +Done?+-'
    .---+-----.                        |   ^           |\ | | /|  .--+ |   |     \   /
    |   |     | Join        \|/        |   | Curved    | \| |/ | |    \    |      \ /
    |   |     +---->  o    --o--        '-'  Vertical  '--' '--'  '--  '--'        +  .---.
 <--+---+-----'       |     /|\                                                    |  | 3 |
                      v                             not:line    'quotes'        .-'   '---'
  .-.             .---+--------.            /            A || B   *bold*       |        ^
 |   |           |   Not a dot  |      <---+---<--    A dash--is not a line    v        |
  '-'             '---------+--'          /           Nor/is this.            ---

```

### Process

```goat
                                      .
   .---------.                       / \
  |   START   |                     /   \        .-+-------+-.      ___________
   '----+----'    .-------.    A   /     \   B   | |COMPLEX| |     /           \      .-.
        |        |   END   |<-----+CHOICE +----->| |       | +--->+ PREPARATION +--->| X |
        v         '-------'        \     /       | |PROCESS| |     \___________/      '-'
    .---------.                     \   /        '-+---+---+-'
   /  INPUT  /                       \ /
  '-----+---'                         '
        |                             ^
        v                             |
  .-----------.                 .-----+-----.        .-.
  |  PROCESS  +---------------->|  PROCESS  |<------+ X |
  '-----------'                 '-----------'        '-'
```

### File tree

Created from <https://arthursonzogni.com/Diagon/#Tree>

```goat  { width=300  color="orange" }
───Linux─┬─Android
         ├─Debian─┬─Ubuntu─┬─Lubuntu
         │        │        ├─Kubuntu
         │        │        ├─Xubuntu
         │        │        └─Xubuntu
         │        └─Mint
         ├─Centos
         └─Fedora
```


### Sequence Diagram

<https://arthursonzogni.com/Diagon/#Sequence>

```goat { class="w-40" }
┌─────┐       ┌───┐
│Alice│       │Bob│
└──┬──┘       └─┬─┘
   │            │
   │ Hello Bob! │
   │───────────>│
   │            │
   │Hello Alice!│
   │<───────────│
┌──┴──┐       ┌─┴─┐
│Alice│       │Bob│
└─────┘       └───┘

```


### Flowchart

<https://arthursonzogni.com/Diagon/#Flowchart>

```goat
   _________________
  ╱                 ╲                                                     ┌─────┐
 ╱ DO YOU UNDERSTAND ╲____________________________________________________│GOOD!│
 ╲ FLOW CHARTS?      ╱yes                                                 └──┬──┘
  ╲_________________╱                                                        │
           │no                                                               │
  _________▽_________                    ______________________              │
 ╱                   ╲                  ╱                      ╲    ┌────┐   │
╱ OKAY, YOU SEE THE   ╲________________╱ ... AND YOU CAN SEE    ╲___│GOOD│   │
╲ LINE LABELED 'YES'? ╱yes             ╲ THE ONES LABELED 'NO'? ╱yes└──┬─┘   │
 ╲___________________╱                  ╲______________________╱       │     │
           │no                                     │no                 │     │
   ________▽_________                     _________▽__________         │     │
  ╱                  ╲    ┌───────────┐  ╱                    ╲        │     │
 ╱ BUT YOU SEE THE    ╲___│WAIT, WHAT?│ ╱ BUT YOU JUST         ╲___    │     │
 ╲ ONES LABELED 'NO'? ╱yes└───────────┘ ╲ FOLLOWED THEM TWICE? ╱yes│   │     │
  ╲__________________╱                   ╲____________________╱    │   │     │
           │no                                     │no             │   │     │
       ┌───▽───┐                                   │               │   │     │
       │LISTEN.│                                   └───────┬───────┘   │     │
       └───┬───┘                                    ┌──────▽─────┐     │     │
     ┌─────▽────┐                                   │(THAT WASN'T│     │     │
     │I HATE YOU│                                   │A QUESTION) │     │     │
     └──────────┘                                   └──────┬─────┘     │     │
                                                      ┌────▽───┐       │     │
                                                      │SCREW IT│       │     │
                                                      └────┬───┘       │     │
                                                           └─────┬─────┘     │
                                                                 │           │
                                                                 └─────┬─────┘
                                                               ┌───────▽──────┐
                                                               │LET'S GO DRING│
                                                               └───────┬──────┘
                                                             ┌─────────▽─────────┐
                                                             │HEY, I SHOULD TRY  │
                                                             │INSTALLING FREEBSD!│
                                                             └───────────────────┘

```


### Table

<https://arthursonzogni.com/Diagon/#Table>

```goat { class="w-80 dark-blue" }
┌────────────────────────────────────────────────┐
│                                                │
├────────────────────────────────────────────────┤
│SYNTAX    : { PRODUCTION } .                   │
├────────────────────────────────────────────────┤
│PRODUCTION: IDENTIFIER "=" EXPRESSION "." .    │
├────────────────────────────────────────────────┤
│EXPRESSION: TERM { "|" TERM } .                │
├────────────────────────────────────────────────┤
│TERM      : FACTOR { FACTOR } .                │
├────────────────────────────────────────────────┤
│FACTOR    : IDENTIFIER                         │
├────────────────────────────────────────────────┤
│          | LITERAL                             │
├────────────────────────────────────────────────┤
│          | "[" EXPRESSION "]"                  │
├────────────────────────────────────────────────┤
│          | "(" EXPRESSION ")"                  │
├────────────────────────────────────────────────┤
│          | "{" EXPRESSION "}" .                │
├────────────────────────────────────────────────┤
│IDENTIFIER: letter { letter } .                │
├────────────────────────────────────────────────┤
│LITERAL   : """" character { character } """" .│
└────────────────────────────────────────────────┘
```

## Mermaid Diagrams

Mermaid is rendered on demand by a render hook, so the script only loads on pages that use it.

```mermaid
flowchart LR
    A[Author] --> B[Build]
    B --> C[Publish]
```
