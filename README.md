# YOLO Commits  
  
### Prerequisites  
- `fortune`  
- `cowthink`  
  
### Installation  
```bash
git clone https://github.com/KatrixReloaded/yolocommit-message.git $ZSH_CUSTOM/plugins/yolo
```  
  
- Open .zshrc  
  `vim ~/.zshrc`  
- Find the `plugins=(git ...)` line  
- Add `yolo` to it like `plugins=(git yolo ...)`  
  
### Usage  
- `yolomsg` random commit message printed  
- `yolocommit` random commit message used to `git commit`  
- `yolo_cow` random commit message thought by a dragon  
- `yolo_online` random commit message used to commit in repo but not using fortune or cowthink
> NOTE: You can use `yolo_online` even if you don't have `fortune` and `cowthink`  
