This is a small code challenge I solved for Community.lawyer.

---

My first thoughts upon reading the specifications of this challenge were: "I'd *really* like to subclass Cat". The business logic of calculating food per week is complex but should be transparent to any dependencies, and it's the sort of thing that's perfect for duck typing. The words "A Cat _has_ a Breed" were warring with "You can change any part of the code...", and in the end my duck-typing urges won out.

Not only did I subclass Cat for each breed, but upon thinking about it having a Calculator class didn't make sense either. Food per week is something a Person knows based on their owned Cats. As such, I moved the logic for calculating food per week to the Person class and modified the specs accordingly. I considered adding a 'weeks' param to the method (so you could calculate food for _n_ number of week, defaulting to 1), but that was beyond the specifications and I decided not to overcomplicate things.

I moved all 'Models' into their own subfolder both for classes and for tests. I considered creating a sub-subfolder for Cat models specifically, but decided that was pushing the actual organizational needs.

On some stylistic notes:
 - I don't usually like a blank line present after a class or method definition so I removed a few (note that this isn't something I'd go nitpick-crazy over in an existing codebase, but since I'm the only one working here...)
 - I also tend to prefer using `self.something` where something is a method or instance variable. I usually find `self.age` more readable then just `age`.
 - Just want to acknowledge that I instinctively began organizing this a bit like a Rails app, moving models to /models, etc.

On a super-small performance point, if this were a Rails app I *might* cache 'food per week' on the Cat model and have it recalculate whenever its age changes. Though admittedly this would be a tiny gain.