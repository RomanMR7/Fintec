---
date: 2026-07-24
description: Подход к безопасному аудиту приложений
tags: [security, audit, pentest]
---

# Аудиты безопасности

## Основной инструментарий

- Burp Suite.
- Nmap.
- Nuclei.
- Sn1per.
- BloodHound CE.
- Impacket.

## Ограничения

- Только системы, на тестирование которых есть разрешение.
- Не атаковать production.
- Не использовать реальные персональные или платёжные данные.
- Ограничивать RPS, concurrency и общее число запросов.
- Сохранять логи, скриншоты, HTTP evidence и точные версии кода.

## Приоритеты проверки

1. Authentication и session management.
2. Authorization и RBAC.
3. Merchant API и API keys.
4. Webhooks и SSRF.
5. Upload/storage.
6. Race conditions.
7. Audit logging.
8. Push и social auth.
9. Конфигурация инфраструктуры.
