# Blog Platform

This project is a Rails-based blog platform with user roles, rich search, admin panel, comments (including threaded replies), and other features.

---

## Features Implemented

### User Roles and Authorization

- Role-based access control (`admin` and `user`) with roles stored as strings.
- Authorization using Pundit policies to protect blog editing, deletion, and admin features.

### Admin Panel

- Admin dashboard to manage users and blogs.
- Ability to toggle user roles (admin/user).
- Password confirmation required for user deletion.
- Proper routing and UI controls for admin actions.

### Authentication and User Profiles

- Devise integration with customized RegistrationsController.
- User profile includes `user_name` and `bio` fields.
- Sign-up and account update forms permit custom fields (`user_name`, `bio`).

### Blogs

- Blogs belong to users, with friendly URLs using FriendlyId.
- Blog CRUD with permissions based on roles.
- Featured blogs functionality (boolean flag).
- Display featured blogs with proper styling and links.

### Search and Filtering

- Integrated Ransack for powerful search capabilities on blogs.
- Search form on home page with filters for title, author, and date.
- Sorting options for blogs (date ascending/descending, author A-Z/Z-A, title A-Z/Z-A).
- Configured `ransackable_attributes` and `ransackable_associations` to enable searching related user attributes.

### Comments

- Users can leave comments on blogs.
- Support for threaded replies to comments (currently single-level).
- Collapsible reply forms using Bootstrap 5 components.
- Comments show author and creation date.
- Policies and permissions to allow commenting only for signed-in users.

---

## Planned/Future Features

- [ ] **Nested replies**: Allow replies to replies to arbitrary depth, rendering comments recursively for better threaded discussions.
- [ ] **Pagination**: Add paginated views for blogs, comments, and users to improve performance and usability.
- [ ] **Advanced search**: Integrate PostgreSQL full-text search (pg_search) for better search performance and ranking.
- [ ] **Admin panel enhancements**: Add more management features such as blog moderation, comment moderation, and metrics dashboards.
- [ ] **Blog images**: Support uploading and displaying cover images for blogs.
- [ ] **Comment editing and deletion**: Allow users to edit or delete their own comments.
- [ ] **Notifications**: Notify users when their blogs receive comments or replies.
- [ ] **Security improvements**: Rate limiting, captcha on sign-up/comment forms.
- [ ] **UI/UX polishing**: Improve design, responsiveness, and accessibility.

## Screenshots

1. **Admin Dashboard**:
   [Admin Dashboard](app/assets/images/dashboard.png)
2. **Blog index with search and filters**
   [Search filter](app/assets/images/searchandsort.png)
3. **Blog show page**:
   [Blog Show](app/assets/images/comments.png)
4. **User Profile page**:
   [Profile](app/assets/images/profile.png)

---

## Summary Checklist

| Feature                           | Status     |
| --------------------------------- | ---------- |
| User Roles and Authorization      | ✔️ Done    |
| Admin Panel (User Management)     | ✔️ Done    |
| Devise User Registration Custom   | ✔️ Done    |
| User Avatars                      | ✔️ Done    |
| User Bio Field                    | ✔️ Done    |
| Blogs CRUD and FriendlyId         | ✔️ Done    |
| Featured Blogs                    | ✔️ Done    |
| Search + Filters with Ransack     | ✔️ Done    |
| Comments and Single-Level Replies | ✔️ Done    |
| Nested Replies (recursive)        | ⬜ Planned |
| Pagination                        | ⬜ Planned |
| Advanced Search with pg_search    | ⬜ Planned |
| Admin Panel Enhancements          | ⬜ Planned |
| Blog Images                       | ⬜ Planned |
| Comment Edit/Delete               | ⬜ Planned |
| Notifications                     | ⬜ Planned |
| Security Improvements             | ⬜ Planned |
| UI/UX Polishing                   | ⬜ Planned |
