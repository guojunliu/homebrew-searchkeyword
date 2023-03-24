#!/bin/bash

# 接受外部传入的扫描关键字
keyword=$1

# 检查关键字是否为空
checkKeyword() {
    nullWord=""
    if [[ $keyword = $nullWord ]]
    then
        # 关键字为空则终止脚本
        echo "keyword is null"
        exit
    fi
}

#***************************************************************************************
#
#
# ____  _____    _    ____   ____ _   _   _  _________   ____        _____  ____  ____
#/ ___|| ____|  / \  |  _ \ / ___| | | | | |/ / ____\ \ / /\ \      / / _ \|  _ \|  _ \
#\___ \|  _|   / _ \ | |_) | |   | |_| | | ' /|  _|  \ V /  \ \ /\ / / | | | |_) | | | |
# ___) | |___ / ___ \|  _ <| |___|  _  | | . \| |___  | |    \ V  V /| |_| |  _ <| |_| |
#|____/|_____/_/   \_\_| \_\\____|_| |_| |_|\_\_____| |_|     \_/\_/  \___/|_| \_\____/
#
#
#                     关键字扫描工具 https://github.com/guojunliu
#
#***************************************************************************************
                                                                                       

flowers() {

    flowers="KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCgoKIF9fX18gIF9fX19fICAgIF8gICAgX19fXyAgIF9fX18gXyAgIF8gICBfICBfX19fX19fX18gICBfX19fICAgICAgICBfX19fXyAgX19fXyAgX19fXwovIF9fX3x8IF9fX198ICAvIFwgIHwgIF8gXCAvIF9fX3wgfCB8IHwgfCB8LyAvIF9fX19cIFwgLyAvXCBcICAgICAgLyAvIF8gXHwgIF8gXHwgIF8gXApcX19fIFx8ICBffCAgIC8gXyBcIHwgfF8pIHwgfCAgIHwgfF98IHwgfCAnIC98ICBffCAgXCBWIC8gIFwgXCAvXCAvIC8gfCB8IHwgfF8pIHwgfCB8IHwKIF9fXykgfCB8X19fIC8gX19fIFx8ICBfIDx8IHxfX198ICBfICB8IHwgLiBcfCB8X19fICB8IHwgICAgXCBWICBWIC98IHxffCB8ICBfIDx8IHxffCB8CnxfX19fL3xfX19fXy9fLyAgIFxfXF98IFxfXFxfX19ffF98IHxffCB8X3xcX1xfX19fX3wgfF98ICAgICBcXy9cXy8gIFxfX18vfF98IFxfXF9fX18vCgoKICAgICAgICAgICAgICAgICAgICAg5YWz6ZSu5a2X5omr5o+P5bel5YW3IGh0dHBzOi8vZ2l0aHViLmNvbS9ndW9qdW5saXUKCgoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKio="
    
    echo -e " \n"
    echo $flowers | base64 -d
    echo -e " \n"
}

# 声明数组
filePathArray=();
# 查找文件夹下所有的文件路径
findAllFilePath() {
    filePathArray=(`find . ! -type d`);
}

# 打印文件路径
printfFilePath() {
    for filePath in "${filePathArray[@]}"
    do
    echo "filePath : "$filePath"";
    done
}

# 创建用来存储<查询到关键字的文件路径>的数组
usefullArray=();

# 使用grep命令来扫描文件
grepFile() {
    # 遍历所有文件
    for filePath in "${filePathArray[@]}"
    do
        # 判断文件是否包含关键字
        if (grep -rl $keyword $filePath > /dev/null);
        then
            # 包含则加入数组
            usefullArray+=($filePath);
            # 并打印警告信息
            echo "⚠️  $keyword          appears in "$filePath"";
        else
            # 不包含则打印正常信息
            echo "✅  $keyword does not appear  in "$filePath"";
        fi
    done
}

printfResult() {

    echo -e " \n"
    echo "-----------------------------<🎉 扫描结果/Scan result>---------------------------------";
    echo -e " \n"
    
    if [ ${#usefullArray[@]} = 0 ]
    then
        echo "该目录下所有文件未扫描到关键字";
        echo -e " \n"
        echo "------------------------------------🎉 完成/Done!--------------------------------------";
        echo -e " \n"
        exit
    fi
    
    for filePath1 in "${usefullArray[@]}"
    do
        echo "⚠️  $keyword appears in "$filePath1"";
    done
           
    echo -e " \n"
    echo "------------------------------------🎉 完成/Done!--------------------------------------";
    echo -e " \n"
}

echo "-----<开始扫描关键字>--------";

# 检查外边传入的关键字
checkKeyword;
# 获取文件夹下所有文件的路径
findAllFilePath;
# 开始打印文件路径
#printfFilePath;
# 开始扫描
grepFile;
# 打印花字
flowers;
# 打印扫描结果;
printfResult;
