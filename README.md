# MI-AFP homework #00

Dummy homework for explanation and showing the workflow

* Original repository with homework: [MI-AFP/hw00](https://github.com/MI-AFP/hw00)

## Task

Your task is just to try the workflow of doing homeworks:

1. Create new personal private repository (with some good name like `MI-AFP_hwNN`) for the homework, do not create `README`, `.gitignore`, nor `LICENSE` yet. You need [Student Developer Pack](https://education.github.com/pack) (free private repositories and Travis-CI.com for private repositories), optionally you can use other services after consulation with teacher(s).
2. [Turn on](https://docs.travis-ci.com/user/getting-started/) [Travis CI](https://travis-ci.com) for your repository. (It will check the solution for you and makes teacher's life easier! The `.travis.yml` file is prepared for you as well as tests.)
3. Add teacher(s) as [collaborators](https://help.github.com/articles/inviting-collaborators-to-a-personal-repository/) to the repository - they will inform you about their usernames.
4. Clone the repository or use `git init` and add remote as described in showed instructions at GitHub.
5. In the repository, add the upstream (name it for example `assignment`, see code block below).
6. Get the assignment and push it to your repository (`pull` & `push`).
7. Try the `stack build` and/or `stack test`. It should not end with build error and all tests should be "red".
8. Now switch to new branch, where you will do the solution (let's say `solution`).
9. After changes, do commit & push normally to this branch. Good practice is to make atomic commits. Complete the task - use `stack` (esp. `stack test`, but also `stack ghci` can be useful), visit `test/` to see the expected behavior of your implementation in `src/`.
10. After finishing all [create Pull Request](https://help.github.com/articles/creating-a-pull-request/) and request a [review](https://help.github.com/articles/about-pull-request-reviews/) from teacher(s) which is/are added to collaborators.
11. Wait for the review... :coffee:

```
~/MI-AFP $ git clone git@github.com:MyUsername/MI-AFP_hw00.git                            # clone your repo
~/MI-AFP $ cd MI-AFP_hw00
~/MI-AFP/MI-AFP_hw00 (master)$ git remote add assignment git@github.com:MI-AFP/hw00.git   # repository with hw
~/MI-AFP/MI-AFP_hw00 (master)$ git pull assignment master                                 # get assignment
~/MI-AFP/MI-AFP_hw00 (master)$ git push origin master                                     # push to your repo
~/MI-AFP/MI-AFP_hw00 (master)$ stack build
~/MI-AFP/MI-AFP_hw00 (master)$ stack test                                                 # all "red"
~/MI-AFP/MI-AFP_hw00 (master)$ git checkout -b solution                                   # let's solve it
~/MI-AFP/MI-AFP_hw00 (solution)$ ...                                                      # work on hw
~/MI-AFP/MI-AFP_hw00 (solution)$ stack test
~/MI-AFP/MI-AFP_hw00 (solution)$ git add ...
~/MI-AFP/MI-AFP_hw00 (solution)$ git commit ...
~/MI-AFP/MI-AFP_hw00 (solution)$ git push origin
```

If you need, there is also a video with the workflow slowly explained (with subtitles): https://youtu.be/Wl96sF34GbI

## Notes

 * This homework is optional but highly recommended.
 * If you encounter some trouble, create an issue in your repository.
 * In case you find abug or have an idea how to improve assignment project, create an issue or PR in this repository.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for more details.
