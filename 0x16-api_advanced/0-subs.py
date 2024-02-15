#!/usr/bin/python3
"""Querying subscribers on a Reddit API ."""
import requests


def number_of_subscribers(subreddit):
    """Finds the total number of subscribers."""
    url = "https://www.reddit.com/r/{}/about".format(subreddit)
    headers = {"User-Agent": "My-User-Agent"}
    res = requests.get(url, headers=headers, allow_redirects=False)
    if res.status_code >= 300:
        return 0
    data = res.json().get("data")
    return data.get("subscribers")
