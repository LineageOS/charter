# AI Coding Assistants

This document provides guidance for AI tools and developers using AI assistance when contributing to
the LineageOS Project.

AI tools helping with LineageOS development should follow the
[device support requirements](device-support-requirements.md).

## Licensing and Legal Requirements

All contributions must comply with the licensing requirements of the repository they are submitted
to:

- All code must be compatible with the existing license of that repository (e.g. Apache-2.0,
  GPL-2.0-only, MIT)
- Use appropriate SPDX license identifiers
- See each repository's LICENSE and upstream licensing rules for details

## Responsibility

The human submitter is responsible for:

- Reviewing all AI-generated code
- Ensuring compliance with licensing requirements
- Taking full responsibility for the contribution
- Addressing any feedback and requests for changes raised by the reviewers, until it is approved and
  merged

## Attribution

When AI tools contribute to LineageOS development, proper attribution helps track the evolving role
of AI in the development process. Contributions should include an `Assisted-by` tag in the following
format:

```text
Assisted-by: AGENT_NAME:MODEL_VERSION
```

Where:

- `AGENT_NAME` is the name of the AI tool or framework
- `MODEL_VERSION` is the specific model version used

Example:

```text
Assisted-by: Claude-Code:claude-opus-4.7
```
