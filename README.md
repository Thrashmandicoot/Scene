# Scene
Bringing local organizations and artists together to make boring workspaces more interesting!


# Git Workflow
pre-req: git clone repo
----
1. git co <feature-branch-name>
2. DO WORK
3. git add -A
4. git commit -m "commit message"
5. git co development
6. git pull origin development
7. *fix merge conflics*
8. git co <feature-branch>
9. git merge development
10. Run RSPEC
11 git push origin <feature-branch>
12. Create pull request on github
13. Announce pull to team members
14. Merge