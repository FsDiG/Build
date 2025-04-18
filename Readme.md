## 调试说明
正常情况下,插件会通过PackageContents.xml根据Debug和Release判断自动进行加载
如果不能正常加载,请手工处理: 或查看 [话题](https://github.com/FsDiG/DiG/discussions/346)
1. 将acad.lsp复制到Degbug或Release的2019文件夹下
2. 如果希望CAD启动时自动加载,请将2019文件夹的全路径, 添加到AutoCAD的支持文件搜索路径中
3. 如果只希望CAD在调试时加载,请删除2中添加的路径; 并在Fs.DiG.CAD.Launcher中项目属性-->Build-->2019--WorkingDirectory中填写将2019文件夹的全路径
![image](https://github.com/user-attachments/assets/8c5e79d4-dc0b-45a4-9686-75fd4c854433)

P.S.
如果每次弹出安全警告,请在CAD选项--将2019的全路径添加 信任路径 中.
 
## 路径说明:
1. Debug文件夹下会输出2019文件夹,此文件夹为插件各版本的输出路径或编译后xcopy此输出路径.无需在Fs.DiG.CAD.Launcher中进行处理.
2. Assets文件夹下为插件各版本的资源文件夹,此处文件夹是由各子模块的资源合并而成:
    (1)各子模块的资源文件夹源文件在各自的子模块下,此处只是Copy
    (2)目前:Assets文件夹下的路径在 2019\Assets\ 下, 这个输出控制可以方便用VS的"Copy to Output Directory"控制
3. Assets文件夹应由各AutoCAD版本共用,目前在2019文件夹下, 暂不调整
4. 原则上Build文件夹无需存储.如果有全部源代码的话; 可以重新编译而生成.
