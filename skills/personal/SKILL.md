---
name: personal
version: 1.1.0
description: Daily life management - health, fitness, home, errands, personal finance, and routines
metadata:
  category: life
  capabilities:
    - health-tracking
    - fitness
    - home-management
    - errands
    - personal-finance
    - routines
    - meal-planning
openclaw:
  emoji: "🏠"
  always: false
author:
  name: Jeremy Rogers
---

# Personal Life Skill

Manage Jeremy's daily life: health, fitness, home, errands, personal finance, and routines.

## Jeremy's Profile

### Family
- **Name:** Jeremy Rogers
- **Spouse:** Becky Rogers (married June 16, 2001)
- **Children:**
  - **Son:** Hudson (10th grader at Hewitt Trussville High School)
    - Involved in band, plays percussion
    - Dreams of majoring in music in college
    - Hopes to play in WGI and DCI (drum corps)
  - **Daughter:** Ann Stewart (goes by Ann Stewart)
    - Junior at University of Alabama
    - Major: English and History
    - Planning to attend law school
    - Currently studying for the LSAT

### Home
- **Address:** 106 Pine Street, Trussville, Alabama 35173
- **Live there since:** 2006

### Work
- **Profession:** Emergency Physician
- **Residency:** Emergency Medicine at Christiana Care Health System, Newark, Delaware
- **Residency years:** 2003-2006 (graduated 2006)

### Hobbies & Interests
- **Gaming:** Currently playing Ark Raiders
- **Bible Study:** Active participant in Bible Study Fellowship (BSF) — very important, track all BSF-related info
- **Podcasts:** The Rest Is History Podcast, The All In Podcast
- **History:** Big fan, listens to history podcasts
- **Travel:** Loves traveling with family. Planning big summer 2026 trip to Italy (has been working on itinerary). Takes big family trip every 2 years.

### Health & Fitness
- **Gym:** 24E Fitness Center
- **Frequency:** Goal is 3+ days per week
- **Workout type:** Strength training, whole body workouts
- **Preference:** Likes to exercise with son Hudson when in Trussville
- **Program source:** Follows workouts from Dean Turner (find him on X)
- **Sets/Reps:** 2-3 sets of 8-10 reps
- **Weight focus:** 1-2 reps in reserve (RIR)
- **No allergies or dietary restrictions**

### Food & Dining
- **Meal service:** HelloFresh (2 nights per week)
- **Favorite local restaurants in Trussville:**
  - Mr. West
  - Jim N' Nicks
  - Full Moon BBQ
  - Taziki's
  - Taco Mama

### Pets
- None

## When This Skill Applies

Activate when the conversation involves any of:
- Health tracking (weight, sleep, water intake, medications, appointments)
- Fitness (workouts, gym plans, step counts, running, exercise logs)
- Home management (chores, maintenance, repairs, cleaning schedules)
- Errands and shopping (grocery lists, pickups, returns, to-do runs)
- Personal finance (budgeting, bills, expenses, savings goals, subscriptions)
- Daily routines (morning routine, evening wind-down, habit tracking)
- Meal planning and nutrition

## Key Behaviors

### Health & Fitness
- Track workouts when Jeremy reports them. Log to `memory/YYYY-MM-DD.md` under a `## Health` section.
- If Jeremy mentions a doctor appointment, check calendar via `gog` and confirm it exists. If not, offer to create it.
- Keep a running awareness of fitness goals. If Jeremy mentions a goal, note it in MEMORY.md.
- Never nag. Offer encouragement naturally, not like a fitness app notification.

### Home Management
- Maintain a mental model of recurring home tasks (lawn, filters, cleaning).
- When Jeremy mentions a home issue, help research solutions or find local services.
- Track seasonal maintenance (HVAC filters, gutter cleaning, etc.) with calendar reminders.

### Errands & Shopping
- Help build and organize shopping/errand lists.
- Cross-reference with calendar to find good times for errands.
- Group errands by location when possible (Trussville vs. Birmingham runs).

### Personal Finance
- Help track expenses and bills when asked.
- Never store sensitive financial data (account numbers, passwords) in memory files.
- Assist with budget categories and spending awareness.
- Subscription audits when requested.

### Routines
- Help design and refine morning/evening routines.
- Track habit streaks if Jeremy wants accountability.
- Integrate routine items with calendar when appropriate.

### Meal Planning
- Help plan meals for the week when asked.
- Consider dietary preferences and restrictions (learn these over time).
- Generate grocery lists from meal plans.

## Cross-Domain References

- **Grandview shifts**: Check the `grandview` skill context for work schedule before suggesting personal activities.
- **Calendar**: Use `gog calendar` for scheduling. Personal events use eventType "personal".
- **Bible Study**: Morning devotional can be part of the morning routine. Reference `bible-study` skill.
- **Jesus Harvesters**: Ministry events may overlap personal calendar. Be aware.

## Data Storage

- Daily logs: `memory/YYYY-MM-DD.md` under `## Personal` heading
- Long-term goals/preferences: `MEMORY.md`
- Never store medical records or financial account details in plain text.

## Channel Mapping

- Discord DM or #personal channel: This skill activates automatically.
- iMessage from Jeremy: Personal context is default unless topic says otherwise.
- Slack: Personal skill is deprioritized (work context assumed).
