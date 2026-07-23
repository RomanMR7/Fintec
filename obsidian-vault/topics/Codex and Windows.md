---
date: 2026-07-24
description: Codex на Windows, конфигурация и типовые ошибки
tags: [codex, windows, powershell, git]
---

# Codex и Windows

## Среда

Использовалось приложение Codex из Microsoft Store и Codex CLI.

## Встречавшиеся проблемы

- Ошибки разбора `omniroute-models.json`.
- Недопустимые значения reasoning level: `max` и `ultra`.
- Пустой файл rollout-сессии.
- Ошибка получения статуса загрузки проекта.
- Несовпадение аккаунтов Codex и GitLab/GitHub.
- Необходимость завершить процессы Codex через PowerShell.

## Важные пути

```text
%USERPROFILE%\.codex
%USERPROFILE%\.codex\config.toml
%USERPROFILE%\.codex\sessions
```

## Obsidian Mind

Проект `breferrari/obsidian-mind` можно использовать как долговременную память для Codex CLI.

Codex читает `AGENTS.md`, а для чтения `CLAUDE.md` можно добавить:

```toml
project_doc_fallback_filenames = ["CLAUDE.md"]
```

Команды Obsidian Mind в Codex вводятся без `/`, например:

```text
om-standup
om-dump
om-wrap-up
```
