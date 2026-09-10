# AI Coding Assistants

This document provides guidance for AI tools and developers using AI assistance when contributing to
the LineageOS Project.

The use of “MUST”, “MUST NOT”, “REQUIRED”, “SHALL”, “SHALL NOT”, “SHOULD”, “SHOULD NOT”,
“RECOMMENDED”, “MAY”, and “OPTIONAL” is per the IETF standard defined in RFC2119.

AI tools helping with LineageOS development SHOULD follow the
[device support requirements](device-support-requirements.md).

## Licensing and Legal Requirements

All contributions MUST comply with the [Licensing](device-support-requirements.md#licensing)
section of the Device Support Requirements:

- Use appropriate SPDX license identifiers
- See each repository's LICENSE and upstream licensing rules for details

## Responsibility

The human submitter is responsible for:

- Reviewing all AI-generated code
- Ensuring compliance with licensing requirements
- Accepting accountability for any licensing issues arising from the contribution
- Addressing any feedback and requests for changes raised by reviewers, until the contribution is
  approved and merged

## Annotation

All generated code MUST comply with the following standards:

- Inline comments MUST focus on non-obvious logic, complex algorithms,
  or non-trivial side effects. MUST not contain self-evident explanations or narrative comments
- Commit messages MUST be concise and meaningful. Long winded explanation SHOULD only be used to annotate the non-obvious.
- All code submitted MUST be understood and explainable by the human submitter during the review process

## Attribution

When AI tools contribute to LineageOS development, proper attribution helps track the evolving role
of AI in the development process. Contributions MUST include an `Assisted-by` tag in the following
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
