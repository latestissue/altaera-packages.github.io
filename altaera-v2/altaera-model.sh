#!/bin/bash

HEIGHT=120
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AI Model Settings"
TITLE="AI Model Selection"
MENU="Choose your desired model:"

OPTIONS=(1 "Q8_0-RWKV-4-World-1.5B-Untuned [Default]    1.8GB / min. 6GB RAM"
         2 "F16-RWKV-4-World-0.1B-Untuned       0.39GB / min. 1.5GB RAM"
         3 "F32-RWKV-4-World-0.1B-Untuned       0.78GB / min. 3GB RAM"
         4 "F16-RWKV-4-World-0.4B-Untuned       0.92GB / min. 4GB RAM"
         5 "F32-RWKV-4-World-0.4B-Untuned       1.85GB / min. 6GB RAM"
         6 "Q4_0-RWKV-4-World-1.5B-Untuned      1.19GB / min. 4GB RAM"
         7 "Q4_0-RWKV-4-World-1.5B-CHNtuned     1.69GB / min. 6GB RAM"
         8 "Q4_1-RWKV-4-World-1.5B-Untuned      1.26GB / min. 4GB RAM"
         9 "Q4_1-RWKV-4-World-1.5B-CHNtuned     1.76GB / min. 6GB RAM"
         10 "Q5_0-RWKV-4-World-1.5B-Untuned      1.34GB / min. 4/6GB RAM"
         11 "Q5_0-RWKV-4-World-1.5B-CHNtuned     1.84GB / min. 6GB RAM"
         12 "Q5_1-RWKV-4-World-1.5B-Untuned      1.42GB / min. 6GB RAM"
         13 "Q5_1-RWKV-4-World-1.5B-CHNtuned     1.92GB / min. 6GB RAM"
         14 "Q8_0-RWKV-4-World-1.5B-CHNtuned    2.3GB / min. 8GB RAM"
         15 "Q4_0-RWKV-4-World-3B-Untuned       2.06GB / min. 8GB RAM"
         16 "Q4_0-RWKV-4-World-3B-CHNtuned      2.06GB / min. 8GB RAM"
         17 "Q4_1-RWKV-4-World-3B-Untuned       2.22GB / min. 8GB RAM"
         18 "Q4_1-RWKV-4-World-3B-CHNtuned      2.22GB / min. 8GB RAM"
         19 "Q5_0-RWKV-4-World-3B-Untuned       2.37GB / min. 8GB RAM"
         20 "Q5_0-RWKV-4-World-3B-CHNtuned      2.37GB / min. 8GB RAM"
         21 "Q5_1-RWKV-4-World-3B-Untuned       2.53GB / min. 8/12GB RAM"
         22 "Q5_1-RWKV-4-World-3B-CHNtuned      2.53GB / min. 8/12GB RAM"
         23 "Q8_0-RWKV-4-World-3B-Untuned       3.33GB / min. 12GB RAM"
         24 "Q8_0-RWKV-4-World-3B-CHNtuned      3.33GB / min. 12GB RAM"
         25 "Q4_0-RWKV-4-World-7B-Untuned       4.66GB / min. 12GB RAM"
         26 "Q4_1-RWKV-4-World-7B-Untuned       5.07GB / min. 12GB RAM"
         27 "Q5_0-RWKV-4-World-7B-Untuned       5.47GB / min. 12GB RAM"
         28 "Q5_1-RWKV-4-World-7B-Untuned       5.88GB / min. 12/16GB RAM"
         29 "Q8_0-RWKV-4-World-7B-Untuned       7.91GB / min. 16GB RAM"
         30 "Q4_0-open-llama-3b                1.93 GB / min. ???"
         31 "Q4_1-open-llama-3b                2.14 GB / min. ???"
         32 "Q5_0-open-llama-3b                2.36 GB / min. ???"
         33 "Q5_1-open-llama-3b                2.57 GB / min. ???"
         34 "Q8_0-open-llama-3b                3.64 GB / min. ???"
         35 "F16-open-llama-3b                  6.85 GB / min. ???")


CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            echo "You chose 'Q8_0-RWKV-4-World-1.5B-Untuned [Default]'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q8_0-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin
            mv 'q8_0-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q8_0-RWKV-4-World-1.5B-Untuned'
            "
            ;;
        2)
            echo "You chose 'F16-RWKV-4-World-0.1B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml/resolve/main/f16-RWKV-4-World-0.1B-v1-20230520-ctx4096.bin
            mv 'f16-RWKV-4-World-0.1B-v1-20230520-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'F16-RWKV-4-World-0.1B-Untuned'
            "
            ;;
        3)
            echo "You chose 'F32-RWKV-4-World-0.1B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml/resolve/main/f32-RWKV-4-World-0.1B-v1-20230520-ctx4096.bin
            mv 'f32-RWKV-4-World-0.1B-v1-20230520-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'F32-RWKV-4-World-0.1B-Untuned'
            "
            ;;
        4)
            echo "You chose 'F16-RWKV-4-World-0.4B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml/resolve/main/f16-RWKV-4-World-0.4B-v1-20230529-ctx4096.bin
            mv 'f16-RWKV-4-World-0.4B-v1-20230529-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'F16-RWKV-4-World-0.4B-Untuned'
            "
            ;;
        5)
            echo "You chose 'F32-RWKV-4-World-0.4B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml/resolve/main/f32-RWKV-4-World-0.4B-v1-20230529-ctx4096.bin
            mv 'f32-RWKV-4-World-0.4B-v1-20230529-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'F32-RWKV-4-World-0.4B-Untuned'
            "
            ;;
        6)
            echo "You chose 'Q4_0-RWKV-4-World-1.5B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q4_0-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin
            mv 'q4_0-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q4_0-RWKV-4-World-1.5B-Untuned'
            "
            ;;
        7)
            echo "你选择了 'Q4_0-RWKV-4-World-1.5B-CHNtuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q4_0-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin
            mv 'q4_0-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            你已经成功地将模型改为 'Q4_0-RWKV-4-World-1.5B-CHNtuned'
            "
            ;;
        8)
            echo "You chose 'Q4_1-RWKV-4-World-1.5B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q4_1-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin
            mv 'q4_1-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q4_1-RWKV-4-World-1.5B-Untuned'
            "
            ;;
        9)
            echo "你选择了 'Q4_1-RWKV-4-World-1.5B-CHNtuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q4_1-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin
            mv 'q4_1-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            你已经成功地将模型改为 'Q4_1-RWKV-4-World-1.5B-CHNtuned'
            "
            ;;
        10)
            echo "You chose 'Q5_0-RWKV-4-World-1.5B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q5_0-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin
            mv 'q5_0-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q5_0-RWKV-4-World-1.5B-Untuned'
            "
            ;;
        11)
            echo "你选择了 'Q5_0-RWKV-4-World-1.5B-CHNtuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q5_0-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin
            mv 'q5_0-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            你已经成功地将模型改为 'Q5_0-RWKV-4-World-1.5B-CHNtuned'
            "
            ;;
        12)
            echo "You chose 'Q5_1-RWKV-4-World-1.5B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q5_1-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin
            mv 'q5_1-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q5_1-RWKV-4-World-1.5B-Untuned'
            "
            ;;
        13)
            echo "你选择了 'Q5_1-RWKV-4-World-1.5B-CHNtuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q5_1-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin
            mv 'q5_1-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            你已经成功地将模型改为 'Q5_1-RWKV-4-World-1.5B-CHNtuned'
            "
            ;;
        14)
            echo "你选择了 'Q8_0-RWKV-4-World-1.5B-CHNtuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q8_0-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin
            mv 'q8_0-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            你已经成功地将模型改为 'Q8_0-RWKV-4-World-1.5B-CHNtuned'
            "
            ;;
        15)
            echo "You chose 'Q4_0-RWKV-4-World-3B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q4_0-RWKV-4-World-3B-v1-20230619-ctx4096.bin
            mv 'q4_0-RWKV-4-World-3B-v1-20230619-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q4_0-RWKV-4-World-3B-Untuned'
            "
            ;;
        16)
            echo "你选择了 'Q4_0-RWKV-4-World-3B-CHNtuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q4_0-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin
            mv 'q4_0-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            你已经成功地将模型改为 'Q4_0-RWKV-4-World-3B-CHNtuned'
            "
            ;;
        17)
            echo "You chose 'Q4_1-RWKV-4-World-3B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q4_1-RWKV-4-World-3B-v1-20230619-ctx4096.bin
            mv 'q4_1-RWKV-4-World-3B-v1-20230619-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q4_1-RWKV-4-World-3B-Untuned'
            "
            ;;
        18)
            echo "你选择了 'Q4_1-RWKV-4-World-3B-CHNtuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q4_1-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin
            mv 'q4_1-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            你已经成功地将模型改为 'Q4_1-RWKV-4-World-3B-CHNtuned'
            "
            ;;
        19)
            echo "You chose 'Q5_0-RWKV-4-World-3B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q5_0-RWKV-4-World-3B-v1-20230619-ctx4096.bin
            mv 'q5_0-RWKV-4-World-3B-v1-20230619-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q5_0-RWKV-4-World-3B-Untuned'
            "
            ;;
        20)
            echo "你选择了 'Q5_0-RWKV-4-World-3B-CHNtuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q5_0-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin
            mv 'q5_0-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            你已经成功地将模型改为 'Q5_0-RWKV-4-World-3B-CHNtuned'
            "
            ;;
        21)
            echo "You chose 'Q5_1-RWKV-4-World-3B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q5_1-RWKV-4-World-3B-v1-20230619-ctx4096.bin
            mv 'q5_1-RWKV-4-World-3B-v1-20230619-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q5_1-RWKV-4-World-3B-Untuned'
            "
            ;;
        22)
            echo "你选择了 'Q5_1-RWKV-4-World-3B-CHNtuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q5_1-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin
            mv 'q5_1-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            你已经成功地将模型改为 'Q5_1-RWKV-4-World-3B-CHNtuned'
            "
            ;;
        23)
            echo "You chose 'Q8_0-RWKV-4-World-3B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q8_0-RWKV-4-World-3B-v1-20230619-ctx4096.bin
            mv 'q8_0-RWKV-4-World-3B-v1-20230619-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q8_0-RWKV-4-World-3B-Untuned'
            "
            ;;
        24)
            echo "你选择了 'Q8_0-RWKV-4-World-3B-CHNtuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q8_0-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin
            mv 'q8_0-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            你已经成功地将模型改为 'Q8_0-RWKV-4-World-3B-CHNtuned'
            "
            ;;
        25)
            echo "You chose 'Q4_0-RWKV-4-World-7B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q4_0-RWKV-4-World-7B-v1-20230626-ctx4096.bin
            mv 'q4_0-RWKV-4-World-7B-v1-20230626-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q4_0-RWKV-4-World-7B-Untuned'
            "
            ;;
        26)
            echo "You chose 'Q4_1-RWKV-4-World-7B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q4_1-RWKV-4-World-7B-v1-20230626-ctx4096.bin
            mv 'q4_1-RWKV-4-World-7B-v1-20230626-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q4_1-RWKV-4-World-7B-Untuned'
            "
            ;;
        27)
            echo "You chose 'Q5_0-RWKV-4-World-7B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q5_0-RWKV-4-World-7B-v1-20230626-ctx4096.bin
            mv 'q5_0-RWKV-4-World-7B-v1-20230626-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q5_0-RWKV-4-World-7B-Untuned'
            "
            ;;
        28)
            echo "You chose 'Q5_1-RWKV-4-World-7B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q5_1-RWKV-4-World-7B-v1-20230626-ctx4096.bin
            mv 'q5_1-RWKV-4-World-7B-v1-20230626-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q5_1-RWKV-4-World-7B-Untuned'
            "
            ;;
        29)
            echo "You chose 'Q8_0-RWKV-4-World-7B-Untuned'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv-4-world-ggml-quantized/resolve/main/q8_0-RWKV-4-World-7B-v1-20230626-ctx4096.bin
            mv 'q8_0-RWKV-4-World-7B-v1-20230626-ctx4096.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q8_0-RWKV-4-World-7B-Untuned'
            "
            ;;
        30)
            echo "You chose 'Q4_0-open-llama-3b'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SlyEcho/open_llama_3b_ggml/resolve/main/open-llama-3b-q4_0.bin
            mv 'open-llama-3b-q4_0.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q4_0-open-llama-3b'
            "
            ;;
        31)
            echo "You chose 'Q4_1-open-llama-3b'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SlyEcho/open_llama_3b_ggml/resolve/main/open-llama-3b-q4_1.bin
            mv 'open-llama-3b-q4_1.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q4_1-open-llama-3b'
            "
            ;;
        32)
            echo "You chose 'Q5_0-open-llama-3b'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SlyEcho/open_llama_3b_ggml/resolve/main/open-llama-3b-q5_0.bin
            mv 'open-llama-3b-q5_0.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q5_0-open-llama-3b'
            "
            ;;
        33)
            echo "You chose 'Q5_1-open-llama-3b'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SlyEcho/open_llama_3b_ggml/resolve/main/open-llama-3b-q5_1.bin
            mv 'open-llama-3b-q5_1.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q5_1-open-llama-3b'
            "
            ;;
        34)
            echo "You chose 'Q8_0-open-llama-3b'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SlyEcho/open_llama_3b_ggml/resolve/main/open-llama-3b-q8_0.bin
            mv 'open-llama-3b-q8_0.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'Q8_0-open-llama-3b'
            "
            ;;
        35)
            echo "You chose 'F16-open-llama-3b'"
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SlyEcho/open_llama_3b_ggml/resolve/main/open-llama-3b-f16.bin
            mv 'open-llama-3b-f16.bin' 'model.bin'
            cd /root
            clear
            echo "


            You have succesfully changed the model to 'F16-open-llama-3b'
            "
            ;;
esac
