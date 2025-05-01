# README

This is the backend side of Jammer, an application for managing a busy schedule of concert attendance. Through the use of schedules, you can plan out your festival day, and save it for future reference. You can even create tomorrow's schedule and save that too.

## Features

- Manage **users**, **shows**, and **schedules**.
- Associate shows with schedules using the `ScheduleShow` model.
- Retrieve detailed information about schedules, including associated shows and users.
- RESTful API endpoints for CRUD operations.
- Serialization for clean and structured API responses.

# Users
GET /api/v1/users: Retrieve all users.
GET /api/v1/users/:id: Retrieve a specific user.
GET /api/v1/users/:user_id/schedules: Retrieve all schedules for a specific user.
POST /api/v1/users/:user_id/schedules: Create a new schedule for a specific user.
# Schedules
GET /api/v1/schedules: Retrieve all schedules.
GET /api/v1/schedules/:id: Retrieve a specific schedule.
GET /api/v1/schedules/:schedule_id/schedule_shows: Retrieve all schedule shows for a specific schedule.
DELETE /api/v1/schedules/:schedule_id/schedule_shows/:id: Delete a specific schedule show.
# Shows
GET /api/v1/shows: Retrieve all shows.
