<a id="readme-top"></a>

<!-- Shields
LinkedIn
Portfolio
Github
 -->

<br>
<div align="center">
   <!-- TODO -->
   <a href="#"><img src="#" alt="logo" width="80" height="80"></a>

   <h3 align="center">Blog Platform</h3>

   <p align="center">
      This project is a Rails-based blog platform with user roles, 
      rich search, admin panel, comments (including threaded replies), and other features.
   </p>
</div>

<!-- TABLE OF CONTETS -->
 <details>
   <summary>Table of Contents</summary>
   <ol>
      <li>
         <a href="#demo">Demo</a>
      </li>
      <li>
         <a href="#about-the-project">About the Project</a>
         <ul>
            <li><a href="#built-with">Built With</a></li>
         </ul>
      </li>
      <li><a href="#installation">Instalation</a></li>
      <li><a href="#features-implemented">Features Implemented</a></li>
      <li><a href="#roadmap">Roadmap</a></li>
      <li><a href="#contact">Contact</a></li>
      <li><a href="#licence">License</a></li>
   </ol>
 </details>

<!-- DEMO -->

## Demo 🚀

🔗 [Live Demo](https://blog-platform-8wx4.onrender.com)

### Demo Users

#### Admin

- Email: `admin2@example.com`
- Password: `qweqwe`
- Role: admin

#### Users

- Email: `person1@example.com` / Password: `qweqwe` / Role: user
- Email: `person2@example.com` / Password: `qweqwe` / Role: user
- Email: `person3@example.com` / Password: `qweqwe` / Role: user
- Email: `person4@example.com` / Password: `qweqwe` / Role: user

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ABOUT -->

## About The Project

[![Blog Platform Screenshot][blog-screenshot]](https://blog-platform-8wx4.onrender.com)

### Built With

- [![Ruby on Rails][Rails-badge]][Rails-url]
- [![PostgreSQL][Postgres-badge]][Postgres-url]
- [![Bootstrap][Bootstrap-badge]][Bootstrap-url]
- [![Stimulus][Stimulus-badge]][Stimulus-url]
- [![Hotwire][Hotwire-badge]][Hotwire-url]
- [![Render][Render-badge]][Render-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Installation

1. Clone repo

```sh
git clone git@gitlab.com:javier.beltran.hmo/blog-platform.git
cd blog-platform
```

2. Install dependencies

```sh
bundle install
```

3. Setup Database

```sh
rails db:create db:migrate db:seed
```

4. Start Server

```sh
rails s
Open http://localhost:3000
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Features Implemented

### 🧑‍💼 User Roles and Authorization

- Role-based access control (`admin` and `user`) with roles stored as strings.
- Authorization using Pundit policies to protect blog editing, deletion, and admin features.

### 🛠️ Admin Panel

- Admin dashboard to manage users and blogs.
- Ability to toggle user roles (admin/user).
- Password confirmation required for user deletion.
- Proper routing and UI controls for admin actions.

### 🔑👤 Authentication and User Profiles

- Devise integration with customized RegistrationsController.
- User profile includes `user_name` and `bio` fields.
- Sign-up and account update forms permit custom fields (`user_name`, `bio`).

### 📋 Blogs

- Blogs belong to users, with friendly URLs using FriendlyId.
- Blog CRUD with permissions based on roles.
- Featured blogs functionality (boolean flag).
- Display featured blogs with proper styling and links.

### 🔍 Search and Filtering

- Integrated Ransack for powerful search capabilities on blogs.
- Search form on home page with filters for title, author, and date.
- Sorting options for blogs (date ascending/descending, author A-Z/Z-A, title A-Z/Z-A).
- Configured `ransackable_attributes` and `ransackable_associations` to enable searching related user attributes.

### 🔄 Comments

- Users can leave comments on blogs.
- Support for threaded replies to comments (currently single-level).
- Collapsible reply forms using Bootstrap 5 components.
- Comments show author and creation date.
- Policies and permissions to allow commenting only for signed-in users.

### Screenshots

1. **Admin Dashboard**:
   [![Admin Dashboard][admin-dashboard]]
2. **Blog index with search and filters**
   [![Search filter][search-filter]]
3. **Blog show page**:
   [![Blog Show][blog-show]]
4. **User Profile page**:
   [![Profile][profile]]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Roadmap

### Summary Checklist

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

- [ ] **Nested replies**: Allow replies to replies to arbitrary depth, rendering comments recursively for better threaded discussions.
- [ ] **Pagination**: Add paginated views for blogs, comments, and users to improve performance and usability.
- [ ] **Advanced search**: Integrate PostgreSQL full-text search (pg_search) for better search performance and ranking.
- [ ] **Admin panel enhancements**: Add more management features such as blog moderation, comment moderation, and metrics dashboards.
- [ ] **Blog images**: Support uploading and displaying cover images for blogs.
- [ ] **Comment editing and deletion**: Allow users to edit or delete their own comments.
- [ ] **Notifications**: Notify users when their blogs receive comments or replies.
- [ ] **Security improvements**: Rate limiting, captcha on sign-up/comment forms.
- [ ] **UI/UX polishing**: Improve design, responsiveness, and accessibility.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contact

Javier Beltran - [LinkedIn](https://www.linkedin.com/in/javier-alejandro-beltran-montiel-3172222b1/)

Project Link: [https://gitlab.com/javier.beltran.hmo/blog-platform](https://gitlab.com/javier.beltran.hmo/blog-platform)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## License

Distributed under the Unlicense License.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Links and images -->

[//]: # "Badge links"
[Rails-badge]: https://img.shields.io/badge/Ruby%20on%20Rails-7-red?style=for-the-badge&logo=ruby&logoColor=white
[Rails-url]: https://rubyonrails.org/
[Postgres-badge]: https://img.shields.io/badge/PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white
[Postgres-url]: https://www.postgresql.org/
[Bootstrap-badge]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com/
[Stimulus-badge]: https://img.shields.io/badge/Stimulus-FF6F61?style=for-the-badge&logo=stimulus&logoColor=white
[Stimulus-url]: https://stimulus.hotwired.dev/
[Hotwire-badge]: https://img.shields.io/badge/Hotwire-FF2D20?style=for-the-badge&logo=hotwire&logoColor=white
[Hotwire-url]: https://hotwired.dev/
[Render-badge]: https://img.shields.io/badge/Render-00CFFF?style=for-the-badge&logo=render&logoColor=white
[Render-url]: https://render.com/
[//]: # "Images"
[blog-screenshot]: app/assets/images/blog-sc.png
[admin-dashboard]: app/assets/images/dashboard.png
[search-filter]: app/assets/images/searchandsort.png
[blog-show]: app/assets/images/comments.png
[profile]: app/assets/images/profile.png
