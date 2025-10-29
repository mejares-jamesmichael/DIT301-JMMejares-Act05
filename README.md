# NoteKeeperApp

## Reflection Questions

### How did you implement CRUD using SQLite?

I implemented CRUD operations using the `sqflite` package in the pubspec.yml through a DatabaseHelper singleton class:

- **CREATE:** Used `db.insert()` to add new notes with auto-generated (or auto-increment) IDs. Each note contains id, title, content, and timestamp fields.

- **READ:** Implemented `getAllNotes()` using `db.query()` to fetch all notes ordered by ID descending. Used `ListView.builder` for efficient list rendering.

- **UPDATE:** Used `db.update()` with `WHERE id = ?` clause to modify existing notes. I Reused the same form screen for both creating and editing so that I can cut time and won't create a new one (It still serve the different functionality but it will be familiar for the user).

- **DELETE:** Implemented `db.delete()` with confirmation dialog prompt to prevent accidental deletion from the user. The list refreshes automatically after deletion and displays a notification for the user to see.

The database initializes using `openDatabase()` with an `onCreate` callback that creates the notes table on first launch.

---

### What challenges did you face in maintaining data persistence?

- **Platform Compatibility:** The `sqflite` package doesn't support web browsers (it only works on android upon my testing), causing the app to hang on loading. I was also stuck on the loading screen on android when I didn't realize I have bug on the sqlite.

- **Sqlite Database:** Had problems connecting with the database and checking if the data are being stored (I was not familiar on how sqlite works, I only know the default MySQL).

- **Data Persistence:** Ensuring the notes have data persistence correctly and trying if the notes are being stored even if the app was closed and reopened

- **Form Validation:** Implemented validation using Flutter's `Form` widget to prevent user from saving empty notes (i was testing this back to back)

---

### How could you improve performance or UI design in future versions?

**Performance Optimizations:**
- Implement pagination to load notes in batches instead of all at once
- Add database indexes for faster queries
- Implement caching for frequently accessed notes

**UI/UX Enhancements:**
- Add search and filter functionality (by date, category, tags)
- Implement rich text formatting (bold, italic, lists)
- Add swipe-to-delete gesture and smooth animations
- Include dark mode and customizable themes
- Add categories/tags with color coding


## Screenshots
### Empty Notes
![Empty Notes](./activity5/emptyNotes.png)
### Add Note
![Add Note](./activity5/addNote.png)
### New Note Screen
![New Note Screen](./activity5/newNoteScreen.png)
### New Note Text
![New Note Text](./activity5/newNoteText.png)
### Second Note
![Second Note](./activity5/secondNote.png)
### Third Note
![Third Note](./activity5/thirdNote.png)
### Edit Note
![Edit Note](./activity5/editNote.png)
### Update Note
![Update Note](./activity5/updateNote.png)
### Delete Note Prompt
![Delete Note Prompt](./activity5/deleteNotePrompt.png)
### Deleted Note
![Deleted Note](./activity5/deletedNote.png)
