# curl-fetch
A repository for comedy. A recursive bash script that fetches `curl` using `wget` which is another UNIX tool to fetch outside binaries and other things.

## What is `curl-fetch` 
It's simple, it's a bash script that fetches curl, using wget. It can't get anymore recursive than this. Code can be funny too!

## Usage

Open up a terminal and run: 

```bash
chmod +x ./curl_fetch.sh
./curl_fetch.sh
```

## Flowchart 

<img width="768" alt="curl-fetch" src="https://github.com/Montana/curl-fetch/assets/20936398/31c3b716-1359-49a7-92da-4cf6863a85a7">

## Upcoming features in `curl-fetch v2.0`

* More recursiveness, so for example:

```bash
if wget "${CURL_URL}" -O "${CURL_TARBALL}"; then
        echo "Download complete. But wait, let's download it again for good measure!"
        download_curl
    else
        echo "Error downloading curl. But maybe it'll work if we try again?"
        download_curl
    fi
}
```

I'm in the process of making a newsletter to keeping you up-to-date on all the updates! 
