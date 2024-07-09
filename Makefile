REPO_NAME = Learning_git
PERSONAL_GITHUB_ACCESS_TOKEN = GITHUB_PERSONAL_ACCESS_TOKEN

create_new_repo:
	curl -L \
	-X POST \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer ${GITHUB_TOKEN}" \
	-H "X-GitHub-Api-Version: 2022-11-28" \
	https://api.github.com/user/repos \
	-d "{\"name\":\"${REPO_NAME}\",\"description\":\"This repo helps learning git\",\"homepage\":\"https://github.com\",\"private\":false,\"is_template\":true}"
