.class public Lcom/lge/hardware/usb/LGUsbManager;
.super Ljava/lang/Object;
.source "LGUsbManager.java"


# static fields
.field private static final CONFIG_NUM_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/config_num"

.field private static final TAG:Ljava/lang/String; = "LGUsbManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMultipleConfiguration()I
    .registers 9

    .prologue
    const/16 v6, 0x400

    .line 21
    const/4 v1, 0x0

    .line 23
    .local v1, "config_num":I
    new-array v0, v6, [C

    .line 24
    .local v0, "buffer":[C
    const/4 v3, 0x0

    .line 27
    .local v3, "file":Ljava/io/FileReader;
    :try_start_6
    new-instance v4, Ljava/io/FileReader;

    const-string v6, "/sys/class/android_usb/android0/config_num"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_d} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_44
    .catchall {:try_start_6 .. :try_end_d} :catchall_5b

    .line 28
    .end local v3    # "file":Ljava/io/FileReader;
    .local v4, "file":Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    :try_start_10
    invoke-virtual {v4, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 29
    .local v5, "len":I
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_25} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_25} :catch_78
    .catchall {:try_start_10 .. :try_end_25} :catchall_75

    move-result v1

    .line 36
    if-eqz v4, :cond_73

    .line 37
    :try_start_28
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_6b

    move-object v3, v4

    .line 43
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v5    # "len":I
    .restart local v3    # "file":Ljava/io/FileReader;
    :cond_2c
    :goto_2c
    return v1

    .line 31
    :catch_2d
    move-exception v6

    :goto_2e
    :try_start_2e
    const-string v6, "LGUsbManager"

    const-string v7, "File Not Found"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_5b

    .line 36
    if-eqz v3, :cond_2c

    .line 37
    :try_start_37
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_2c

    .line 39
    :catch_3b
    move-exception v2

    .line 40
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "LGUsbManager"

    const-string v7, "IOException closing file"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 32
    .end local v2    # "e":Ljava/io/IOException;
    :catch_44
    move-exception v2

    .line 33
    .local v2, "e":Ljava/lang/Exception;
    :goto_45
    :try_start_45
    const-string v6, "LGUsbManager"

    const-string v7, "Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_5b

    .line 36
    if-eqz v3, :cond_2c

    .line 37
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_2c

    .line 39
    :catch_52
    move-exception v2

    .line 40
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "LGUsbManager"

    const-string v7, "IOException closing file"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 34
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_5b
    move-exception v6

    .line 36
    :goto_5c
    if-eqz v3, :cond_61

    .line 37
    :try_start_5e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    .line 42
    :cond_61
    :goto_61
    throw v6

    .line 39
    :catch_62
    move-exception v2

    .line 40
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "LGUsbManager"

    const-string v8, "IOException closing file"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    .line 39
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    .restart local v5    # "len":I
    :catch_6b
    move-exception v2

    .line 40
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "LGUsbManager"

    const-string v7, "IOException closing file"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    :cond_73
    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_2c

    .line 34
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v5    # "len":I
    .restart local v4    # "file":Ljava/io/FileReader;
    :catchall_75
    move-exception v6

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_5c

    .line 32
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_78
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_45

    .line 31
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_7b
    move-exception v6

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_2e
.end method
