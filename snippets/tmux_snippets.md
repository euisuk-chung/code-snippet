# Tmux snippets
- for installation
```bash
sudo apt-get install tmux
```

- open new tmux session named `jupyter-server`
```bash
tmux new -s jupyter-server
```

- attach currently opened tmux session by its name, `jupyter-server`
```bash
tmux attach -t jupyter-server
```

- to make new window in tmux session
```bash
# make window below
ctrl + b , shift + '

# make window right
ctrl + b,  shift + 5
```

- moving around tmux windows (maneuvering)
```bash
ctrl + b, arrow movements(←,→,↑,↓) 
````

- exiting tmux window
```bash
ctrl + b , d # 퇴장
# OR
exit # tmux 창 삭제
```

- etc (tmux 명령어 바꾸기)
   - 해당 링크 참고: https://gist.github.com/spicycode/1229612
```bash
~/.tmux.conf
```
- 
