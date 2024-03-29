#!/usr/bin/python3
"""Has a function that queries the Reddit API and returns a list"""
import requests


def recurse(subreddit, hot_list=[], count=0, after=None):
    """Queries the Reddit API and returns a list"""
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    UA = "My-User-Agent"
    params = {"count": count, "after": after}
    headers = {"User-Agent": UA}
    res = requests.get(url,
                       params=params,
                       headers=headers,
                       allow_redirects=False)
    if res.status_code >= 400:
        return None

    temp = []
    for child in res.json().get("data").get("children"):
        temp.append(child.get("data").get("title"))

    hotl = hot_list + temp

    data = res.json()
    if not data.get("data").get("after"):
        return hotl

    return recurse(
        subreddit,
        hotl,
        data.get("data").get("count"),
        data.get("data").get("after")
    )
