import git

repo = git.Repo.init('.')

repo.index.add('*')
repo.index.commit("Initial commit")

repository_url = ""
remote = repo.create_remote('origin', url=repository_url)

remote.push()