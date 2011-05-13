#!/usr/bin/env ruby
# git push on commit

`echo 'git push' > .git/hooks/post-commit`
`chmod 755 .git/hooks/post-commit`
