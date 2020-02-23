# lede-imagebuilder
### Build

1. 配置docker环境
2. `docker build --no-cache -t 12f23eddde/pku-auto-elective {文件夹路径}`
3. 删除临时image  `docker image prune`

### Run
```bash
docker run -it --rm \
           --name lede-imagebuilder \
           --network host -p 23322:22 \
           -v /mnt/user/dev/lede:/lede \
           lede/imagebuilder
```

### Usage

1. 选择需要编译的包后选中save	文件名.config	按Enter确定
2. `make -j{线程数} V=s`