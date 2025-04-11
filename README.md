Savepoint.Protocol v1.0 — Canonical Public Release (2025-04-08)
# Savepoint.Protocol

> Authored by Peter Salvato | Aetherwright
> Protocol Version: 3.0  
> Repository Release: 1.0  
> © 2025 Peter Salvato. All rights reserved. All terminology, structure, and logic protected.

---

README.md — Savepoint Protocol

> “The machete, not the map.”



# Savepoint Protocol

**Trace your thinking. Don’t just remember—author.**

Savepoint Protocol is a minimal, timestamped markup system for capturing cognitive turning points—language, phrasing, and realizations—as they emerge in real time.

This is not memory. This is authorship infrastructure.

---

### Semantic Cartography for the Mind

> Thought doesn’t arrive in order. It arrives like a jungle—dense, recursive, and overgrown.  
> Savepoint Protocol is the **machete**, not the map.

Each `<savepoint>` is a notch in the cognitive treeline:  
You were *here*. This *mattered*. Come back if needed.

Savepoint captures:
- What phrasing clicked
- When a realization reshaped your path
- Why a concept felt sharp enough to carve

Unlike AI memory, Savepoint traces **meaning**, not just moments.

---

### What It Is

A **tool-agnostic, versioned protocol** for anchoring thought in wild terrain.

Savepoints work in:
- Plaintext
- Git
- NotebookLM
- ChatGPT
- Your own offline workflows

Designed for:
- **Human authorship**
- **Machine parsing**
- **Reflective synthesis**
- **Minimal friction**

---

### Why It Exists

> As AI systems adopt passive memory, the risk isn’t forgetting—it’s losing **authorship**.

LLMs can store facts.  
Only you can decide what mattered.

Savepoint was created to make **your cognitive evolution legible**—to you, and to any system that follows.

It’s a control layer for authored memory in synthetic environments.

---

### How It Works

Each session is a timestamped `.md` file:

```txt
<session 2025-04-10-2 | Savepoint.Protocol | opened 16:04>

<savepoint 16:07>
That metaphor finally locked in: “Savepoints aren’t memories, they’re commits.”
#language #realization

<savepoint 16:13>
This changes the purpose of the spec—this isn’t note-taking, this is cartography.
#framing #specification

</session>

You can also include:

<meta> blocks (tool, mood, tags)

#hashtags (for grep/NotebookLM)

retro: or summary flags for post-hoc capture



---

Key Features


---

Use Cases

Writers marking when phrasing snaps

Designers articulating conceptual pivots

Developers tracing architecture shifts

Philosophers tracking internal reframes

Anyone doing recursive, reflective thinking who wants a record of how it changed



---

Install the CLI

> Now available: Savepoint CLI Tool
Split conversations.json (from ChatGPT export) into discrete .savepoint.md sessions.



git clone https://github.com/peterSalvato/savepoint-protocol.git
cd savepoint-protocol
python cli/savepoint_split.py conversations.json

Requires Python 3.7+

Outputs structured, Git-ready Savepoint logs



---

Repo Structure

/spec/ — Protocol structure + rules

/cli/ — Functional CLI tools

/examples/ — Savepoint samples

/.savepoints/ — Actual reflection logs

/docs/ — Optional integration notes



---

Philosophy

You don’t need more tools that remember.
You need a protocol that helps you see your own trail.

Savepoint Protocol is:

Machine-readable

Human-honest

Time-anchored

Thought-indexed


It’s not a database—it’s a way to find your way back.
When the forest regrows, the savepoints remain.

Read the full philosophy →


---

License

Licensed under custom humanist license.
Use it, fork it, remix it—but don’t erase authorship.
This is about transparency, not surveillance.


---

Author

Designed by Peter Salvato
Part of a broader system of authored infrastructure, semantic tooling, and symbolic design practice.

---

Let me know if you want a short version for the GitHub **profile README**, or a companion `savepoint-spec-v1.md` next to this that formally defines syntax without losing the soul.

