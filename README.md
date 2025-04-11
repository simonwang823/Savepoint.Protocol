Savepoint.Protocol v1.0 — Canonical Public Release (2025-04-08)
# Savepoint.Protocol

> Authored by Peter Salvato
> Protocol Version: 3.0  
> Repository Release: 1.0  
> © 2025 Peter Salvato. All rights reserved. All terminology, structure, and logic protected.

---

# Savepoint Protocol

**Trace your thinking. Don’t just remember—author.**  
_Savepoint is the machete, not the map._

Savepoint Protocol is a minimal, timestamped markup system for capturing **cognitive turning points**—the moments when phrasing lands, realizations click, or meaning shifts.

It’s not memory. It’s authorship infrastructure.  
Built for thinkers in wild terrain.

---

## Semantic Cartography for the Mind

> Thought doesn’t arrive in order. It arrives like a jungle—dense, recursive, and overgrown.  
> Savepoint Protocol isn’t a vault. It’s a **trail marker system**.

Each `<savepoint>` is a deliberate notch in your cognitive path:  
You were **here**. This **mattered**. Come back **if needed**.

---

## Why Savepoint Exists

As AI systems adopt passive memory, the risk isn’t forgetting—it’s **losing authorship**.

- AI memory captures facts.  
- **You** capture meaning.

Savepoint helps you:
- Preserve phrasing that *locked in*
- Mark realizations that *reframed everything*
- Trace how your thoughts actually *evolved*

It’s for writers, designers, researchers, coders—  
**anyone who thinks recursively and wants to leave a trail.**

---

## How It Works

Each Savepoint session is a timestamped `.md` log—  
lightweight, versionable, and machine-readable.

```txt
<session 2025-04-10-2 | Savepoint.Protocol | opened 16:04>

<savepoint 16:07>
That metaphor finally locked in: “Savepoints aren’t memories, they’re commits.”
#language #realization

<savepoint 16:13>
This changes the purpose of the spec—this isn’t note-taking, this is cartography.
#framing #specification

</session>


---

Syntax Summary

> Savepoint syntax is the interface.
Simple enough to write by hand.
Structured enough to parse, grep, or synthesize.



<session YYYY-MM-DD-N | Context | opened HH:MM>

<savepoint HH:MM>
Realization, phrasing, or shift.
#hashtags
</savepoint>

<meta project="Optional" mood="Optional" tool="Optional">
</session>

Supports retro: and summary flags

Compatible with AI tools and plain-text grep

Designed for version control + later synthesis


→ Full syntax spec


---

Use Cases

Writers tracking when language finally clicked

Designers preserving layout metaphors or system shifts

Researchers marking conceptual pivots in literature review

Coders logging paradigm or architecture realizations

Philosophers noting when internal logic changed direction



---

Savepoint CLI Tool

> Now available: extract .savepoint.md files from exported ChatGPT logs.



git clone https://github.com/peterSalvato/savepoint-protocol.git
cd savepoint-protocol
python cli/savepoint_split.py conversations.json

Converts a conversations.json file (from ChatGPT export)
into individual Savepoint sessions

Outputs timestamped, Git-ready .md files


Requires Python 3.7+


---

Repo Overview

/spec/ – Protocol structure and rules

/cli/ – Functional tools (e.g., log splitter)

/examples/ – Sample Savepoint sessions

/.savepoints/ – Actual working logs

/docs/ – Extended philosophy and integration docs



---

Philosophy

Savepoint Protocol is intentionally low-tech and high-trust.
It degrades gracefully.
It works offline.
It makes no assumptions about your stack, your memory, or your tools.

When the forest regrows, the Savepoints remain.
They let you return—not just to what you knew, but to how you came to know it.

→ Read the full philosophy


---

License

Licensed under custom humanist license.
Use freely, fork deeply—but preserve authorship and intent.


---

Author

Designed by Peter Salvato
Part of a broader system of authored infrastructure, symbolic tooling, and design protocols.
