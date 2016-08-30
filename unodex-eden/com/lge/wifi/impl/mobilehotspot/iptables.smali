.class public Lcom/lge/wifi/impl/mobilehotspot/iptables;
.super Ljava/lang/Object;
.source "iptables.java"


# static fields
.field static final IPTABLES_FILENAME:Ljava/lang/String; = "/data/misc/wifi/iptables.conf"

.field private static final TAG:Ljava/lang/String; = "iptables"

.field public static flag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 198
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/impl/mobilehotspot/iptables;->flag:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CnvItem(Ljava/lang/String;)Lcom/lge/wifi/impl/mobilehotspot/iptable;
    .registers 11
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 112
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_16

    .line 113
    :cond_e
    const-string v4, "iptables"

    const-string v5, "CnvItem() line is not ok"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_15
    :goto_15
    return-object v3

    .line 117
    :cond_16
    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "ArrS":[Ljava/lang/String;
    array-length v4, v1

    if-ge v4, v7, :cond_27

    .line 119
    const-string v4, "iptables"

    const-string v5, "CnvItem() line token is not ok"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 122
    :cond_27
    aget-object v4, v1, v6

    const-string v5, "-A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 123
    const-string v4, "iptables"

    const-string v5, "CnvItem() is not item"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 127
    :cond_39
    aget-object v4, v1, v7

    const-string v5, "INPUT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 128
    new-instance v3, Lcom/lge/wifi/impl/mobilehotspot/iptable;

    invoke-direct {v3}, Lcom/lge/wifi/impl/mobilehotspot/iptable;-><init>()V

    .line 129
    .local v3, "ret":Lcom/lge/wifi/impl/mobilehotspot/iptable;
    sget-object v4, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;->FILTERING:Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    iput-object v4, v3, Lcom/lge/wifi/impl/mobilehotspot/iptable;->itype:Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    .line 130
    const/4 v4, 0x4

    aget-object v4, v1, v4

    const-string v5, "tcp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 131
    sget-object v4, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;->TCP:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    iput-object v4, v3, Lcom/lge/wifi/impl/mobilehotspot/iptable;->protocol:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    .line 136
    :goto_5b
    aget-object v4, v1, v9

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "ports":[Ljava/lang/String;
    aget-object v4, v2, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/lge/wifi/impl/mobilehotspot/iptable;->port_start:I

    .line 138
    aget-object v4, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/lge/wifi/impl/mobilehotspot/iptable;->port_end:I

    goto :goto_15

    .line 134
    .end local v2    # "ports":[Ljava/lang/String;
    :cond_74
    sget-object v4, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;->UDP:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    iput-object v4, v3, Lcom/lge/wifi/impl/mobilehotspot/iptable;->protocol:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    goto :goto_5b

    .line 143
    .end local v3    # "ret":Lcom/lge/wifi/impl/mobilehotspot/iptable;
    :cond_79
    aget-object v4, v1, v7

    const-string v5, "PREROUTING"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 144
    new-instance v3, Lcom/lge/wifi/impl/mobilehotspot/iptable;

    invoke-direct {v3}, Lcom/lge/wifi/impl/mobilehotspot/iptable;-><init>()V

    .line 145
    .restart local v3    # "ret":Lcom/lge/wifi/impl/mobilehotspot/iptable;
    sget-object v4, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;->FORWARDING:Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    iput-object v4, v3, Lcom/lge/wifi/impl/mobilehotspot/iptable;->itype:Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    .line 146
    aget-object v4, v1, v9

    const-string v5, "tcp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 147
    sget-object v4, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;->TCP:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    iput-object v4, v3, Lcom/lge/wifi/impl/mobilehotspot/iptable;->protocol:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    .line 152
    :goto_9a
    const/16 v4, 0xa

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/lge/wifi/impl/mobilehotspot/iptable;->port_start:I

    .line 153
    const/16 v4, 0xa

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/lge/wifi/impl/mobilehotspot/iptable;->port_end:I

    .line 154
    const/16 v4, 0xe

    aget-object v4, v1, v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "Addrs":[Ljava/lang/String;
    aget-object v4, v0, v8

    iput-object v4, v3, Lcom/lge/wifi/impl/mobilehotspot/iptable;->ip:Ljava/lang/String;

    goto/16 :goto_15

    .line 150
    .end local v0    # "Addrs":[Ljava/lang/String;
    :cond_be
    sget-object v4, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;->UDP:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    iput-object v4, v3, Lcom/lge/wifi/impl/mobilehotspot/iptable;->protocol:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    goto :goto_9a
.end method

.method private static appendIptable(Ljava/lang/String;)V
    .registers 7
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v3, "iptables"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "appendIptable(line="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") START"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, "ra":Ljava/io/RandomAccessFile;
    :try_start_1b
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/data/misc/wifi/iptables.conf"

    const-string v4, "rws"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_42
    .catchall {:try_start_1b .. :try_end_24} :catchall_55

    .line 66
    .end local v1    # "ra":Ljava/io/RandomAccessFile;
    .local v2, "ra":Ljava/io/RandomAccessFile;
    if-eqz v2, :cond_34

    .line 67
    :try_start_26
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_34} :catch_64
    .catchall {:try_start_26 .. :try_end_34} :catchall_61

    .line 77
    :cond_34
    if-eqz v2, :cond_5d

    .line 78
    :try_start_36
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_5c

    move-object v1, v2

    .line 85
    .end local v2    # "ra":Ljava/io/RandomAccessFile;
    .restart local v1    # "ra":Ljava/io/RandomAccessFile;
    :cond_3a
    :goto_3a
    const-string v3, "iptables"

    const-string v4, "appendIptable() END"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 71
    :catch_42
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    :goto_43
    :try_start_43
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 73
    const-string v3, "iptables"

    const-string v4, "appendIptable() get exception."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_55

    .line 77
    if-eqz v1, :cond_3a

    .line 78
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_3a

    .line 80
    :catch_53
    move-exception v3

    goto :goto_3a

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_55
    move-exception v3

    .line 77
    :goto_56
    if-eqz v1, :cond_5b

    .line 78
    :try_start_58
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5f

    .line 84
    :cond_5b
    :goto_5b
    throw v3

    .end local v1    # "ra":Ljava/io/RandomAccessFile;
    .restart local v2    # "ra":Ljava/io/RandomAccessFile;
    :catch_5c
    move-exception v3

    :cond_5d
    move-object v1, v2

    .end local v2    # "ra":Ljava/io/RandomAccessFile;
    .restart local v1    # "ra":Ljava/io/RandomAccessFile;
    goto :goto_3a

    :catch_5f
    move-exception v4

    goto :goto_5b

    .line 75
    .end local v1    # "ra":Ljava/io/RandomAccessFile;
    .restart local v2    # "ra":Ljava/io/RandomAccessFile;
    :catchall_61
    move-exception v3

    move-object v1, v2

    .end local v2    # "ra":Ljava/io/RandomAccessFile;
    .restart local v1    # "ra":Ljava/io/RandomAccessFile;
    goto :goto_56

    .line 71
    .end local v1    # "ra":Ljava/io/RandomAccessFile;
    .restart local v2    # "ra":Ljava/io/RandomAccessFile;
    :catch_64
    move-exception v0

    move-object v1, v2

    .end local v2    # "ra":Ljava/io/RandomAccessFile;
    .restart local v1    # "ra":Ljava/io/RandomAccessFile;
    goto :goto_43
.end method

.method public static getPortFilteringList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wifi/impl/mobilehotspot/iptable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;->FILTERING:Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    invoke-static {v0}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->getTypeList(Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getPortforwardingList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wifi/impl/mobilehotspot/iptable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;->FORWARDING:Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    invoke-static {v0}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->getTypeList(Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getTypeList(Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "type"    # Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wifi/impl/mobilehotspot/iptable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "arrRet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wifi/impl/mobilehotspot/iptable;>;"
    :try_start_5
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "/data/misc/wifi/iptables.conf"

    const-string v6, "r"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_31

    .line 168
    .local v4, "ra":Ljava/io/RandomAccessFile;
    :cond_e
    :goto_e
    :try_start_e
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_2c

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_18

    .line 181
    .end local v2    # "line":Ljava/lang/String;
    :goto_14
    :try_start_14
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_31

    .line 186
    .end local v4    # "ra":Ljava/io/RandomAccessFile;
    :goto_17
    return-object v0

    .line 169
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "ra":Ljava/io/RandomAccessFile;
    :cond_18
    :try_start_18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_e

    .line 170
    invoke-static {v2}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->CnvItem(Ljava/lang/String;)Lcom/lge/wifi/impl/mobilehotspot/iptable;

    move-result-object v3

    .line 171
    .local v3, "node":Lcom/lge/wifi/impl/mobilehotspot/iptable;
    if-eqz v3, :cond_e

    .line 172
    iget-object v5, v3, Lcom/lge/wifi/impl/mobilehotspot/iptable;->itype:Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    if-ne p0, v5, :cond_e

    .line 173
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2b} :catch_2c

    goto :goto_e

    .line 178
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "node":Lcom/lge/wifi/impl/mobilehotspot/iptable;
    :catch_2c
    move-exception v1

    .line 179
    .local v1, "e":Ljava/io/IOException;
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_14

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "ra":Ljava/io/RandomAccessFile;
    :catch_31
    move-exception v1

    .line 183
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 184
    const-string v5, "iptables"

    const-string v6, "getTypeList() error"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public static initIptables()V
    .registers 6

    .prologue
    .line 33
    const-string v3, "iptables"

    const-string v4, "initIptables() START"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v1, 0x0

    .line 36
    .local v1, "ra":Ljava/io/RandomAccessFile;
    :try_start_8
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/data/misc/wifi/iptables.conf"

    const-string v4, "rws"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_44
    .catchall {:try_start_8 .. :try_end_11} :catchall_57

    .line 37
    .end local v1    # "ra":Ljava/io/RandomAccessFile;
    .local v2, "ra":Ljava/io/RandomAccessFile;
    if-eqz v2, :cond_36

    .line 38
    :try_start_13
    new-instance v3, Ljava/lang/String;

    const-string v4, "iptables -F\n"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 39
    new-instance v3, Ljava/lang/String;

    const-string v4, "iptables -t nat -A POSTROUTING -o rmnet0 -j MASQUERADE\n"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 40
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_36} :catch_66
    .catchall {:try_start_13 .. :try_end_36} :catchall_63

    .line 49
    :cond_36
    if-eqz v2, :cond_5f

    .line 51
    :try_start_38
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_5e

    move-object v1, v2

    .line 58
    .end local v2    # "ra":Ljava/io/RandomAccessFile;
    .restart local v1    # "ra":Ljava/io/RandomAccessFile;
    :cond_3c
    :goto_3c
    const-string v3, "iptables"

    const-string v4, "initIptables() END"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 43
    :catch_44
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    :goto_45
    :try_start_45
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 45
    const-string v3, "iptables"

    const-string v4, "initIptables() get exception."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_57

    .line 49
    if-eqz v1, :cond_3c

    .line 51
    :try_start_51
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_3c

    .line 53
    :catch_55
    move-exception v3

    goto :goto_3c

    .line 47
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_57
    move-exception v3

    .line 49
    :goto_58
    if-eqz v1, :cond_5d

    .line 51
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_61

    .line 57
    :cond_5d
    :goto_5d
    throw v3

    .end local v1    # "ra":Ljava/io/RandomAccessFile;
    .restart local v2    # "ra":Ljava/io/RandomAccessFile;
    :catch_5e
    move-exception v3

    :cond_5f
    move-object v1, v2

    .end local v2    # "ra":Ljava/io/RandomAccessFile;
    .restart local v1    # "ra":Ljava/io/RandomAccessFile;
    goto :goto_3c

    :catch_61
    move-exception v4

    goto :goto_5d

    .line 47
    .end local v1    # "ra":Ljava/io/RandomAccessFile;
    .restart local v2    # "ra":Ljava/io/RandomAccessFile;
    :catchall_63
    move-exception v3

    move-object v1, v2

    .end local v2    # "ra":Ljava/io/RandomAccessFile;
    .restart local v1    # "ra":Ljava/io/RandomAccessFile;
    goto :goto_58

    .line 43
    .end local v1    # "ra":Ljava/io/RandomAccessFile;
    .restart local v2    # "ra":Ljava/io/RandomAccessFile;
    :catch_66
    move-exception v0

    move-object v1, v2

    .end local v2    # "ra":Ljava/io/RandomAccessFile;
    .restart local v1    # "ra":Ljava/io/RandomAccessFile;
    goto :goto_45
.end method

.method public static iptableTest()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 201
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->initIptables()V

    .line 202
    sget-boolean v1, Lcom/lge/wifi/impl/mobilehotspot/iptables;->flag:Z

    if-eqz v1, :cond_65

    const/4 v1, 0x0

    :goto_9
    sput-boolean v1, Lcom/lge/wifi/impl/mobilehotspot/iptables;->flag:Z

    .line 203
    sget-boolean v1, Lcom/lge/wifi/impl/mobilehotspot/iptables;->flag:Z

    if-eqz v1, :cond_2c

    .line 204
    const/16 v1, 0xa

    const/16 v3, 0x14

    invoke-static {v1, v3, v2}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->setPortFiltering(III)Z

    .line 205
    const/16 v1, 0x1e

    const/16 v2, 0x28

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->setPortFiltering(III)Z

    .line 206
    const/16 v1, 0x32

    const-string v2, "192.168.0.100"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->setPortforwarding(ILjava/lang/String;)Z

    .line 207
    const/16 v1, 0x3c

    const-string v2, "192.168.0.100"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->setPortforwarding(ILjava/lang/String;)Z

    .line 209
    :cond_2c
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->getPortforwardingList()Ljava/util/ArrayList;

    move-result-object v0

    .line 210
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wifi/impl/mobilehotspot/iptable;>;"
    const-string v1, "SAM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Test getPortforwardingList() num="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->getPortFilteringList()Ljava/util/ArrayList;

    move-result-object v0

    .line 212
    const-string v1, "SAM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Test getPortFilteringList() num="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void

    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wifi/impl/mobilehotspot/iptable;>;"
    :cond_65
    move v1, v2

    .line 202
    goto :goto_9
.end method

.method public static setPortFiltering(III)Z
    .registers 8
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "portType"    # I

    .prologue
    const/4 v4, 0x1

    .line 90
    const-string v1, "iptables"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPortFiltering(start="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",portType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") START"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-ne v4, p2, :cond_71

    .line 93
    const-string v0, "udp"

    .line 98
    .local v0, "protocol":Ljava/lang/String;
    :goto_33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iptables -A INPUT -p "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -m "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --dport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -j DROP\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->appendIptable(Ljava/lang/String;)V

    .line 99
    const-string v1, "iptables"

    const-string v2, "setPortFiltering() END"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v4

    .line 96
    .end local v0    # "protocol":Ljava/lang/String;
    :cond_71
    const-string v0, "tcp"

    .restart local v0    # "protocol":Ljava/lang/String;
    goto :goto_33
.end method

.method public static setPortforwarding(ILjava/lang/String;)Z
    .registers 5
    .param p0, "port"    # I
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "iptables"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPortforwarding(port="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") START"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iptables -A PREROUTING -t nat -i rmnet0 -p tcp --dport "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -j DNAT --to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->appendIptable(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iptables -A PREROUTING -t nat -i rmnet0 -p udp --dport "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -j DNAT --to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->appendIptable(Ljava/lang/String;)V

    .line 107
    const-string v0, "iptables"

    const-string v1, "setPortforwarding() END"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x1

    return v0
.end method
