# TARS Skills Configuration

This document outlines TARS' active skills and capabilities.

## Active Skills

| Skill | Description | Status |
|-------|-------------|--------|
| personal | Daily life management - health, fitness, home, finance, routines | ✅ |
| bible-study | Scripture reading, devotionals, theological research | ✅ |
| grandview | Grandview Medical Center work management | ✅ |
| plotline | Plotline business/project management | ✅ |
| jesus-harvesters | Jesus Harvesters Ministries coordination | ✅ |
| grok | Web and X search via xAI Grok API | ✅ |
| gog | Google Workspace (Gmail, Calendar, Drive) | ✅ |
| discord | Discord channel management | ✅ |
| slack | Slack integration | ✅ |
| github | GitHub operations via gh CLI | ✅ |

## Channels

- Discord: TARS HQ server (#general, #tasks, #updates, etc.)
- Slack: Work workspace
- iMessage: Direct messages

## Models

- Primary: Anthropic Claude Sonnet 4.6
- Fallbacks: Claude Opus 4.6, MiniMax M2.5, Kimi K2.5

## Cron Jobs

- openclaw-news-daily: Daily @steipete + OpenClaw community X updates (9 AM)
- morning-tasks-proactive: Morning proactive task check (7 AM)
- morning-brief-alabama-weather: Alabama weather +:30 AM)
- traffic-gv-shift-alert: commute briefing (5 Grandview shift traffic alerts
- daily-todo-reminder: Daily TODO reminder (6 PM)
- healthcheck:security-weekly: Weekly security audit (Monday 9 AM)

## Environment

- Host: Mac mini (TARS's Mac mini)
- OS: macOS Darwin
- Node: v25.6.1
- Framework: OpenClaw

---

Last updated: 2026-02-22
