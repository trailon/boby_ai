# Boby AI – Movie App  

**Flutter | Clean Architecture | MobX | Resilient API Design**

This project is a movie discovery application built as part of a **Mobile Developer Assessment**.  
The main focus of the project is **architecture quality**, **state management**, and **resilience against backend changes**, rather than visual polish alone.

A full app walkthrough video is included in the root directory:

📹 **/app_walkthrough.mov**

---

## 🚀 Tech Stack

- **Flutter**
- **MobX** (state management)
- **Clean Architecture**
- **Injectable + GetIt** (dependency injection)
- **Retrofit + Dio** (network layer)
- **build_runner** (code generation)
- **TMDB API**

---

## 🧱 Architecture

The app strictly follows **Clean Architecture** principles:
lib/
├── data/           # DTOs, remote/local sources
├── domain/         # Entities, repositories, use cases
├── presentation/  # UI, Stores (ViewModels)
├── app/            # DI, routing, theming, env

### Key Principles

- **Strict separation of layers**
- **SOLID compliance**
- **ViewModel pattern via MobX Stores**
- UI contains **no business logic**
- All async & state logic lives in Stores / UseCases

---

## 🧠 State Management

State is handled using **MobX**:

- Each screen has a dedicated **Store**
- Stores act as **ViewModels**
- UI reacts via `Observer` widgets
- No `setState`-driven business logic

This ensures:

- Predictable state updates
- Easy debugging
- High testability

---

## 🎬 App Flow Overview

### 1. Onboarding

- Select favorite movies
- Select favorite genres
- Selections are **persisted locally**
- No forced skip logic (as per assignment)

### 2. Home

- **For You** feed based on selected genres
- Genre-based category feeds
- Pagination supported
- Parallel fetching for performance

### 3. Search

- Debounced search
- Search state separated from discovery state
- Genres & category feeds remain visible when not searching

### 4. Paywall

- Fully local (no endpoint dependency)
- Animated feature comparison
- Subscription plan selection logic handled via Store

---

## 🔁 Backend Resilience (V2 Ready)

Special care was taken to **isolate backend changes**:

- DTOs are versioned:
  - `movie_detailed_dto_v1`
  - `movie_paged_response_dto_v1`
- Domain layer **never depends on DTOs**
- Mappers handle transformation

➡️ **If backend moves to V2**, only:

- DTOs
- Mappers  
need to change — the rest of the app remains intact.

---

## 🌐 API Usage

The app uses TMDB endpoints:

- `/discover/movie`
- `/search/movie`
- `/genre/movie/list`

### Discover Logic

- Multiple genre IDs are combined using pipe operator (`|`)
- Example:

### Key Principles

- **Strict separation of layers**
- **SOLID compliance**
- **ViewModel pattern via MobX Stores**
- UI contains **no business logic**
- All async & state logic lives in Stores / UseCases

---

## 🧠 State Management

State is handled using **MobX**:

- Each screen has a dedicated **Store**
- Stores act as **ViewModels**
- UI reacts via `Observer` widgets
- No `setState`-driven business logic

This ensures:

- Predictable state updates
- Easy debugging
- High testability

---

## 🎬 App Flow Overview

### 1. Onboarding

- Select favorite movies
- Select favorite genres
- Selections are **persisted locally**
- No forced skip logic (as per assignment)

### 2. Home

- **For You** feed based on selected genres
- Genre-based category feeds
- Pagination supported
- Parallel fetching for performance

### 3. Search

- Debounced search
- Search state separated from discovery state
- Genres & category feeds remain visible when not searching

### 4. Paywall

- Fully local (no endpoint dependency)
- Animated feature comparison
- Subscription plan selection logic handled via Store

---

## 🔁 Backend Resilience (V2 Ready)

Special care was taken to **isolate backend changes**:

- DTOs are versioned:
  - `movie_detailed_dto_v1`
  - `movie_paged_response_dto_v1`
- Domain layer **never depends on DTOs**
- Mappers handle transformation

➡️ **If backend moves to V2**, only:

- DTOs
- Mappers  
need to change — the rest of the app remains intact.

---

## 🌐 API Usage

The app uses TMDB endpoints:

- `/discover/movie`
- `/search/movie`
- `/genre/movie/list`

### Discover Logic

- Multiple genre IDs are combined using pipe operator (`|`)
- Example:
with_genres=12|14

---

## ⚙️ Environment Configuration

### `.env` (Example)

```env
BASE_URL=https://api.themoviedb.org/3/
IMAGE_BUCKET_URL=https://image.tmdb.org/t/p/w500
BEARER_TOKEN=
VARIANT=A or B

⚠️ BEARER_TOKEN is intentionally left empty.
Reviewer should provide their own TMDB bearer token.


⸻

▶️ Running the Project

1️⃣ Install dependencies
flutter pub get

2️⃣ Run code generation (required)
flutter pub run build_runner build --delete-conflicting-outputs

This step is mandatory before running the app.

3️⃣ Run using Flavors

The project supports Dev / Stage / Prod flavors.

VS Code launch.json
Multiple configurations are already provided:
 • Boby Ai Dev
 • Boby Ai Stage
 • Boby Ai Prod
 • Profile & Release modes included

Example:

{
  "name": "Boby Ai Dev",
  "request": "launch",
  "type": "dart",
  "program": "lib/main.dart",
  "args": ["--flavor", "dev", "--dart-define=flavor=dev"]
}

🧪 Notes for Reviewers
 • No Firebase integration (intentionally skipped due to time constraints)
 • VARIANT is handled via env instead
 • UI animations are implemented manually where required
 • Code prioritizes clarity, maintainability, and scalability


⸻

✅ What This Project Demonstrates

✔ Clean Architecture
✔ SOLID principles
✔ Proper ViewModel separation
✔ Scalable state management
✔ Backend-change resilience
✔ Production-ready structure

⸻

👤 Author Veli Kaan Çetinel
Developed as part of a technical case study.
All architectural decisions were made consciously with long-term maintainability in mind.
