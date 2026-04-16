# Lab 8 diagrams (outside LaTeX)

These files describe the same figures as in `cda_lab8.tex`, using tools that are often easier to tweak than TikZ.

`fsm-block.mmd` sets looser `nodeSpacing` / `padding` in the `%%{init: ...}%%` header so boxes and edge labels do not stack on top of each other.

## Option A — Mermaid (`.mmd`)

- **Online:** paste into [Mermaid Live Editor](https://mermaid.live).
- **VS Code:** install “Mermaid” extension and open the `.mmd` file.
- **GitHub:** put a fenced `mermaid` block in a `.md` file; it renders in the repo viewer.
- **CLI (optional):** `npm i -g @mermaid-js/mermaid-cli` then `mmdc -i fsm-block.mmd -o fsm-block.png`.

## Option B — Graphviz (`.dot`)

- Install [Graphviz](https://graphviz.org/download/), then:

  `dot -Tpng fsm-block.dot -o fsm-block.png`

- Or use an online [DOT editor](https://dreampuf.github.io/GraphvizOnline/).

## Option C — HTML preview

Open `preview.html` in a browser (double-click). It loads Mermaid from a CDN and draws the diagrams—no install if you are okay with network access for the script.

Export: use your browser’s print-to-PDF or screenshot, then `\includegraphics{...}` in LaTeX if you want the bitmap inside the report instead of TikZ.
