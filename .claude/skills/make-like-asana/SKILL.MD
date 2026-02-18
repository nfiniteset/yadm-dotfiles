---
name: make-like-asana
description: Audit current changes against historical patterns and "tribal knowledge" found in the codebase and past PRs.
---

Ensure my code "blends in" and looks like it was written by the original authors of this system. Research the specific files I am touching and look at their git history and surrounding patterns (naming conventions, error handling, architectural style). If I'm doing something "un-idiomatic" for this specific repo, point it out. Your mission is to make my PR indistinguishable from the most high-quality existing code in this project, using past PRs as a guide for what "good" looks like here.