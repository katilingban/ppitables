---
name: Update CRAN release
about: Checklist of tasks for update CRAN release
title: Checklist of tasks for update CRAN release
labels: documentation
assignees: ernestguevarra
---

* [ ] Check current CRAN check results
* [ ] Check if any deprecation processes should be advanced, as described in [Gradual deprecation](https://lifecycle.r-lib.org/articles/communicate.html#gradual-deprecation)
* [ ] [Polish NEWS](https://style.tidyverse.org/news.html#news-release)
* [ ] `urlchecker::url_check()`
* [ ] `devtools::build_readme()`
* [ ] `devtools::check(remote = TRUE, manual = TRUE)`
* [ ] `devtools::check_win_devel()`
* [ ] `usethis::use_revdep()` then `revdepcheck::revdep_check(num_workers = 4)`
* [ ] Update `cran-comments.md`
