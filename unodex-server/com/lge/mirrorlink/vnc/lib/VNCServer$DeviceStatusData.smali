.class public Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;
.super Ljava/lang/Object;
.source "VNCServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/vnc/lib/VNCServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceStatusData"
.end annotation


# static fields
.field public static final DEVICE_LOCK:Ljava/lang/String; = "device-lock"

.field public static final DISABLED:Ljava/lang/String; = "disabled"

.field public static final DRIVE_MODE:Ljava/lang/String; = "drive-mode"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final KEY_LOCK:Ljava/lang/String; = "key-lock"

.field public static final LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final MICINPUT:Ljava/lang/String; = "micinput"

.field public static final NIGHT_MODE:Ljava/lang/String; = "night-mode"

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final ROTATION:Ljava/lang/String; = "rotation"

.field public static final ROTATION_0:Ljava/lang/String; = "0"

.field public static final ROTATION_180:Ljava/lang/String; = "180"

.field public static final ROTATION_270:Ljava/lang/String; = "270"

.field public static final ROTATION_90:Ljava/lang/String; = "90"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final VOICEINPUT:Ljava/lang/String; = "voiceinput"


# instance fields
.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/mirrorlink/vnc/lib/VNCServer;


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/vnc/lib/VNCServer;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->this$0:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->data:Ljava/util/Map;

    .line 796
    return-void
.end method

.method private updateDeviceStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 829
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->data:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 830
    .local v0, "previousData":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 831
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->data:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    return v2

    .line 833
    :cond_11
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 834
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->data:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    return v2

    .line 837
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getDeivceStatus()I
    .registers 14

    .prologue
    const/16 v11, 0x1a

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 952
    const/4 v6, 0x0

    .line 953
    .local v6, "status":I
    iget-object v7, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->data:Ljava/util/Map;

    const-string/jumbo v8, "key-lock"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 965
    .local v2, "keyLock":Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->data:Ljava/util/Map;

    const-string/jumbo v8, "device-lock"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 966
    .local v0, "deviceLock":Ljava/lang/String;
    if-eqz v0, :cond_2c

    .line 967
    const-string/jumbo v7, "disabled"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e2

    .line 968
    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v6

    .line 976
    :cond_2c
    :goto_2c
    iget-object v7, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->data:Ljava/util/Map;

    const-string/jumbo v8, "night-mode"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 977
    .local v3, "nightmode":Ljava/lang/String;
    if-eqz v3, :cond_56

    .line 978
    const-string/jumbo v7, "enabled"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_100

    .line 979
    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/Utility;->setBit(I[Ljava/lang/Object;)I

    move-result v6

    .line 1008
    :cond_56
    :goto_56
    iget-object v7, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->data:Ljava/util/Map;

    const-string/jumbo v8, "drive-mode"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1009
    .local v1, "drivemode":Ljava/lang/String;
    if-eqz v1, :cond_82

    .line 1010
    const-string/jumbo v7, "enabled"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_110

    .line 1011
    new-array v7, v9, [Ljava/lang/Object;

    const/16 v8, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    const/16 v8, 0x11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/Utility;->setBit(I[Ljava/lang/Object;)I

    move-result v6

    .line 1017
    :cond_82
    :goto_82
    iget-object v7, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->data:Ljava/util/Map;

    const-string/jumbo v8, "rotation"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1018
    .local v5, "rotation":Ljava/lang/String;
    if-eqz v5, :cond_9c

    .line 1019
    const-string/jumbo v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_121

    .line 1020
    invoke-static {v6, v11}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v6

    .line 1030
    :cond_9c
    :goto_9c
    iget-object v7, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->data:Ljava/util/Map;

    const-string/jumbo v8, "orientation"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1031
    .local v4, "orientation":Ljava/lang/String;
    if-eqz v4, :cond_b8

    .line 1032
    const-string/jumbo v7, "landscape"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_187

    .line 1033
    const/16 v7, 0x1c

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v6

    .line 1038
    :cond_b8
    :goto_b8
    const-string/jumbo v7, "MirrorLink_VNC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Device Status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "0x%08X"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    return v6

    .line 969
    .end local v1    # "drivemode":Ljava/lang/String;
    .end local v3    # "nightmode":Ljava/lang/String;
    .end local v4    # "orientation":Ljava/lang/String;
    .end local v5    # "rotation":Ljava/lang/String;
    :cond_e2
    const-string/jumbo v7, "enabled"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 970
    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/Utility;->setBit(I[Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_2c

    .line 980
    .restart local v3    # "nightmode":Ljava/lang/String;
    :cond_100
    const-string/jumbo v7, "disabled"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 981
    const/4 v7, 0x7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v6

    goto/16 :goto_56

    .line 1012
    .restart local v1    # "drivemode":Ljava/lang/String;
    :cond_110
    const-string/jumbo v7, "disabled"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 1013
    const/16 v7, 0x11

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v6

    goto/16 :goto_82

    .line 1021
    .restart local v5    # "rotation":Ljava/lang/String;
    :cond_121
    const-string/jumbo v7, "90"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_140

    .line 1022
    new-array v7, v9, [Ljava/lang/Object;

    const/16 v8, 0x18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/Utility;->setBit(I[Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_9c

    .line 1023
    :cond_140
    const-string/jumbo v7, "180"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15f

    .line 1024
    new-array v7, v9, [Ljava/lang/Object;

    const/16 v8, 0x19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/Utility;->setBit(I[Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_9c

    .line 1025
    :cond_15f
    const-string/jumbo v7, "270"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 1026
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0x18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    const/16 v8, 0x19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/Utility;->setBit(I[Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_9c

    .line 1034
    .restart local v4    # "orientation":Ljava/lang/String;
    :cond_187
    const-string/jumbo v7, "portrait"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 1035
    new-array v7, v9, [Ljava/lang/Object;

    const/16 v8, 0x1b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    const/16 v8, 0x1c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/Utility;->setBit(I[Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_b8
.end method

.method public getDriveMode()Z
    .registers 4

    .prologue
    .line 907
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->data:Ljava/util/Map;

    const-string/jumbo v2, "drive-mode"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 908
    .local v0, "mode":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 909
    const/4 v1, 0x0

    return v1

    .line 912
    :cond_f
    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getMicInput()Z
    .registers 4

    .prologue
    .line 936
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->data:Ljava/util/Map;

    const-string/jumbo v2, "micinput"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 937
    .local v0, "mode":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 938
    const/4 v1, 0x0

    return v1

    .line 940
    :cond_f
    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getNightMode()Z
    .registers 4

    .prologue
    .line 917
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->data:Ljava/util/Map;

    const-string/jumbo v2, "night-mode"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 918
    .local v0, "mode":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 919
    const/4 v1, 0x0

    return v1

    .line 922
    :cond_f
    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getVoiceInput()Z
    .registers 4

    .prologue
    .line 927
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->data:Ljava/util/Map;

    const-string/jumbo v2, "voiceinput"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 928
    .local v0, "mode":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 929
    const/4 v1, 0x0

    return v1

    .line 931
    :cond_f
    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public initialize()V
    .registers 1

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateOrientation()Z

    .line 946
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateKeyLock()Z

    .line 947
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateDeviceLock()Z

    .line 943
    return-void
.end method

.method public updateDeviceLock()Z
    .registers 3

    .prologue
    .line 898
    const-string/jumbo v1, "device-lock"

    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->this$0:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 899
    const-string/jumbo v0, "enabled"

    .line 898
    :goto_e
    invoke-direct {p0, v1, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateDeviceStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 899
    :cond_13
    const-string/jumbo v0, "disabled"

    goto :goto_e
.end method

.method public updateDriveMode(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 857
    const-string/jumbo v0, "drive-mode"

    invoke-direct {p0, v0, p1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateDeviceStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateKeyLock()Z
    .registers 2

    .prologue
    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public updateMicInput(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 852
    const-string/jumbo v0, "micinput"

    invoke-direct {p0, v0, p1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateDeviceStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateNightMode(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 842
    const-string/jumbo v0, "night-mode"

    invoke-direct {p0, v0, p1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateDeviceStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateOrientation()Z
    .registers 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->this$0:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getRotation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateOrientation(I)Z

    move-result v0

    return v0
.end method

.method public updateOrientation(I)Z
    .registers 5
    .param p1, "rotation"    # I

    .prologue
    .line 869
    if-eqz p1, :cond_5

    const/4 v1, 0x2

    if-ne v1, p1, :cond_1b

    .line 870
    :cond_5
    const-string/jumbo v1, "orientation"

    const-string/jumbo v2, "portrait"

    invoke-direct {p0, v1, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateDeviceStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 871
    .local v0, "changed":Z
    const-string/jumbo v1, "rotation"

    const-string/jumbo v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateDeviceStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 883
    :goto_1a
    return v0

    .line 873
    .end local v0    # "changed":Z
    :cond_1b
    const-string/jumbo v1, "orientation"

    const-string/jumbo v2, "landscape"

    invoke-direct {p0, v1, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateDeviceStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 874
    .restart local v0    # "changed":Z
    const/4 v1, 0x1

    if-ne v1, p1, :cond_34

    .line 875
    const-string/jumbo v1, "rotation"

    const-string/jumbo v2, "90"

    invoke-direct {p0, v1, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateDeviceStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1a

    .line 876
    :cond_34
    const/4 v1, 0x3

    if-ne v1, p1, :cond_43

    .line 877
    const-string/jumbo v1, "rotation"

    const-string/jumbo v2, "270"

    invoke-direct {p0, v1, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateDeviceStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1a

    .line 879
    :cond_43
    const-string/jumbo v1, "rotation"

    const-string/jumbo v2, "unknown"

    invoke-direct {p0, v1, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateDeviceStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1a
.end method

.method public updateVoiceInput(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 847
    const-string/jumbo v0, "voiceinput"

    invoke-direct {p0, v0, p1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateDeviceStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
