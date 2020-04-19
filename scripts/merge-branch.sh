for branch in `git branch -r | cut -d '/' -f2`;
    do 
        if [ "$branch" != "origin" -a "$branch" != "->" -a "$branch" != "master" ];
    then 
        git checkout $branch && git merge master && git push origin $branch;
    fi;
done