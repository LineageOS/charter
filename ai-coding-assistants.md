# AI Coding Assistants

This document provides guidance for the usage of AI assistance in regards to contributing to
the LineageOS Project.

The use of “MUST”, “MUST NOT”, “REQUIRED”, “SHALL”, “SHALL NOT”, “SHOULD”, “SHOULD NOT”,
“RECOMMENDED”, “MAY”, and “OPTIONAL” is per the IETF standard defined in RFC2119.

AI tools assisting with LineageOS development MUST follow this document, as well as the
[device support requirements](device-support-requirements.md).

## Licensing and Legal Requirements

All contributions MUST comply with the [Licensing](device-support-requirements.md#licensing)
section of the Device Support Requirements:

- Use appropriate SPDX license identifiers
- See each repository's LICENSE and upstream licensing rules for details

## Proprietary Code and Reverse Engineering

- AI tools MUST NOT be prompted with proprietary source code or knowingly used to reproduce or
  derive code from sources with incompatible licensing terms.
- AI tools MAY be used to analyze proprietary blobs, logs, and observed behavior for debugging,
  compatibility, and reverse engineering purposes, provided such use does not violate applicable
  licenses or legal restrictions.
- AI-assisted implementations MUST NOT incorporate proprietary code or otherwise infringe upon
  third-party intellectual property rights.

## Responsibility

The human submitter is responsible for:

- Reviewing all AI-generated code
- Ensuring compliance with licensing requirements
- Accepting accountability for any licensing issues arising from the contribution
- Addressing any feedback and requests for changes raised by reviewers, until the contribution is
  approved and merged

Contributors MUST reasonably understand the changes they submit, including their purpose, behavior,
and interaction with the surrounding code. Exhaustive knowledge of every subsystem and component is
not required, but contributors MUST be capable of explaining and justifying their changes during review.

Contributions generated entirely by AI MUST be reviewed by the human submitter and at least one
additional human contributor before being accepted.

## Maintainability

AI-assisted contributions MUST be reasonably maintainable without continued reliance on AI tools.
Contributors MUST take sufficient time to understand the relevant architecture, dependencies, and
implementation before submitting changes, particularly when implementing entirely new functionality.

Contributors SHOULD be capable of independently investigating bugs, diagnosing regressions, and
adapting their contributions to future Android or LineageOS versions without dependence on a
particular AI model or subscription.

AI-generated changes MUST NOT be accepted solely because they compile or appear to work.

Contributors SHOULD verify that changes address the underlying issue rather than masking errors,
disabling functionality, or introducing unnecessary workarounds.

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
Assisted-by: LLM
```

Contributor MAY append the model and revision to the  `Assisted-by` tag in the following format:

```text
Assisted-by: LLM - ModelName 1.1
```
