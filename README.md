# Richland Jekyll

[![CircleCI](https://circleci.com/gh/wadeanthony0100/Richland-Jekyll/tree/master.svg?style=svg)](https://circleci.com/gh/wadeanthony0100/Richland-Jekyll/tree/master)

---

Yeah, I guess I should document this. Might as well do that now.

## The Old Way

Richland's website was built under the assumtion that maitenence would 
be handed off the the borough secretary. As such, the original was made 
using a WYSIWYG that was reccomended by someone who maintains a neighboring
borough's website. When it was decided that I would be maintaining the 
website, I quickly abandoned the program, and began maintaining a static
HTML/CSS/some JavaScript-version at [this repository](https://github.com/wadeanthony0100/Richland-Borough-dot-org).
This worked well the time but it had some issues. Notably:

- **Human error**. Without a build system or build-time error checking, I was
frequently having broken or missing links brought to my attention.
- **Poor separation of concerns**. With everything being written statically,
there was often duplication of data, and every time I made a change, I would
have to change multiple files. This became increasingly difficult when I would
spend weeks at a time not looking at the code base, often missing critical parts
of time sensitive updates
- **Limitations in  moving forward**. Things are just easier when you can generate them
at compile time.

## How does this even work?

Put simply: ruby, markdown, and magic.

Jekyll is a neat tool that lets you define your views with markdown, and then compile them
to the HTML/CSS/JS that we serve to our users.

I also wrote [a custom plugin](https://github.com/wadeanthony0100/Richland-Jekyll/blob/master/_plugins/minutes.rb)
to look through the `/meeting_minutes` directory, and generate a table of links to the meeting minutes files
for the [Meeting Minutes page](richlangborough.org/meeting_minutes). Yeah, it's a messy script,
but it does the job, and it only runs at compile time, so the complexity is as good as arbitrary.

To improve the issues with broken links, there is a rigorous suite of tests that a build must pass in order to
be pushed into production. In picture form, it looks like this:

![CI/CD Diagram](RichlandCicdDiagram.png)

## Development

### Setup

You must have `Git` and `Ruby` installed on your system, and paths properly configured. Use Homebrew on Mac, or your package manager of choice on Linux. If you're on Windows, I dunno good luck.

- `git clone <repo url>`
- `gem install bundler`
- `bundle install
- Develop things...

### Build

- `jekyll b`
- Alternitavely, you can run `jekyll b --watch` to have jekyll rebuild everytime you write changes to a project file.

### Deploy

- Push commits to origin/master `git push origin master`
- Done. (sort of)
- You can watch your build run on [CircleCI here](https://circleci.com/gh/wadeanthony0100/Richland-Jekyll). If the build passes, you should be deployed. (But do check the live site to confirm your changes were applied)
- If the build is rejected, it should tell you what was broken, and you should fix that and push again.

---

This is a recreation of [the original static version of Richland Borough's website](https://github.com/wadeanthony0100/Richland-Borough-dot-org).
