.class public Lcom/lge/wfds/DhcpFileObserver;
.super Landroid/os/FileObserver;
.source "DhcpFileObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DhcpFileObserver"


# instance fields
.field private mDhcpFileName:Ljava/lang/String;

.field private mDhcpFilePath:Ljava/lang/String;

.field private mWfdsStateMachine:Lcom/android/internal/util/StateMachine;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/StateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "stateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 33
    const-string v0, "DhcpFileObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DhcpFileObserver Created - path : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-object p1, p0, Lcom/lge/wfds/DhcpFileObserver;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    .line 35
    iput-object p2, p0, Lcom/lge/wfds/DhcpFileObserver;->mDhcpFilePath:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/lge/wfds/DhcpFileObserver;->mDhcpFileName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private closeFileBufferReader(Ljava/io/FileReader;Ljava/io/BufferedReader;)V
    .registers 7
    .param p1, "fr"    # Ljava/io/FileReader;
    .param p2, "br"    # Ljava/io/BufferedReader;

    .prologue
    .line 146
    if-eqz p2, :cond_5

    .line 147
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 149
    :cond_5
    if-eqz p1, :cond_a

    .line 150
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    .line 155
    :cond_a
    :goto_a
    return-void

    .line 152
    :catch_b
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DhcpFileObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPeerDhcpInfo close: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private getPeerDhcpInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 102
    const/4 v4, 0x0

    .line 103
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 104
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v2, "dhcpInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_8
    const-string v8, "DhcpFileObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Peer device Address: MAC ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v5, Ljava/io/FileReader;

    const-string v8, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_29} :catch_105
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_29} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_96
    .catchall {:try_start_8 .. :try_end_29} :catchall_b0

    .line 110
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_29
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_108
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_2e} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_f5
    .catchall {:try_start_29 .. :try_end_2e} :catchall_ee

    .line 113
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_60
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_31} :catch_100
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_f8
    .catchall {:try_start_2e .. :try_end_31} :catchall_f1

    move-result-object v7

    .local v7, "s":Ljava/lang/String;
    if-nez v7, :cond_42

    .line 127
    invoke-direct {p0, v5, v1}, Lcom/lge/wfds/DhcpFileObserver;->closeFileBufferReader(Ljava/io/FileReader;Ljava/io/BufferedReader;)V

    .line 131
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_38
    :try_start_38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_38 .. :try_end_3b} :catch_d4

    move-result v8

    if-lt v6, v8, :cond_b5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v8, v9

    .line 141
    .end local v6    # "i":I
    .end local v7    # "s":Ljava/lang/String;
    :goto_41
    return-object v8

    .line 114
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v7    # "s":Ljava/lang/String;
    :cond_42
    :try_start_42
    const-string v8, "DhcpFileObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "readLine : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v7, v11}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_5f} :catch_60
    .catch Ljava/lang/NullPointerException; {:try_start_42 .. :try_end_5f} :catch_100
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_5f} :catch_f8
    .catchall {:try_start_42 .. :try_end_5f} :catchall_f1

    goto :goto_2e

    .line 117
    .end local v7    # "s":Ljava/lang/String;
    :catch_60
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 118
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v3, "e":Ljava/io/IOException;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :goto_63
    :try_start_63
    const-string v8, "DhcpFileObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "IOException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_63 .. :try_end_77} :catchall_b0

    .line 127
    invoke-direct {p0, v4, v0}, Lcom/lge/wfds/DhcpFileObserver;->closeFileBufferReader(Ljava/io/FileReader;Ljava/io/BufferedReader;)V

    move-object v8, v9

    .line 119
    goto :goto_41

    .line 120
    .end local v3    # "e":Ljava/io/IOException;
    :catch_7c
    move-exception v3

    .line 121
    .local v3, "e":Ljava/lang/NullPointerException;
    :goto_7d
    :try_start_7d
    const-string v8, "DhcpFileObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "NullPointerException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_7d .. :try_end_91} :catchall_b0

    .line 127
    invoke-direct {p0, v4, v0}, Lcom/lge/wfds/DhcpFileObserver;->closeFileBufferReader(Ljava/io/FileReader;Ljava/io/BufferedReader;)V

    move-object v8, v9

    .line 122
    goto :goto_41

    .line 123
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_96
    move-exception v3

    .line 124
    .local v3, "e":Ljava/lang/Exception;
    :goto_97
    :try_start_97
    const-string v8, "DhcpFileObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_97 .. :try_end_ab} :catchall_b0

    .line 127
    invoke-direct {p0, v4, v0}, Lcom/lge/wfds/DhcpFileObserver;->closeFileBufferReader(Ljava/io/FileReader;Ljava/io/BufferedReader;)V

    move-object v8, v9

    .line 125
    goto :goto_41

    .line 126
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_b0
    move-exception v8

    .line 127
    :goto_b1
    invoke-direct {p0, v4, v0}, Lcom/lge/wfds/DhcpFileObserver;->closeFileBufferReader(Ljava/io/FileReader;Ljava/io/BufferedReader;)V

    .line 128
    throw v8

    .line 132
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "i":I
    .restart local v7    # "s":Ljava/lang/String;
    :cond_b5
    :try_start_b5
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-le v8, v10, :cond_d0

    .line 133
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_cc
    .catch Ljava/lang/NullPointerException; {:try_start_b5 .. :try_end_cc} :catch_d4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_41

    .line 131
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_d0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_38

    .line 136
    :catch_d4
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v8, "DhcpFileObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "NullPointerException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v8, v9

    .line 138
    goto/16 :goto_41

    .line 126
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v6    # "i":I
    .end local v7    # "s":Ljava/lang/String;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_ee
    move-exception v8

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_b1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_f1
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_b1

    .line 123
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_f5
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_97

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_f8
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_97

    .line 120
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_fc
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_7d

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_100
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_7d

    .line 117
    :catch_105
    move-exception v3

    goto/16 :goto_63

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_108
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_63
.end method


# virtual methods
.method public getPeerIpAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 10
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/lge/wfds/DhcpFileObserver;->getPeerDhcpInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "peerDhcpInfo":Ljava/lang/String;
    if-nez v2, :cond_10

    .line 71
    const-string v4, "DhcpFileObserver"

    const-string v5, "DhcpFileObserver peerDhcpInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_f
    return-object v3

    .line 74
    :cond_10
    const-string v4, "DhcpFileObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "peerDhcpInfo : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "element":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x4

    if-lt v4, v5, :cond_72

    .line 89
    const-string v4, "DhcpFileObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Peer device Address: MAC ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), IP ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v4, 0x2

    :try_start_55
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5a
    .catch Ljava/net/UnknownHostException; {:try_start_55 .. :try_end_5a} :catch_5c

    move-result-object v3

    goto :goto_f

    .line 92
    :catch_5c
    move-exception v0

    .line 93
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v4, "DhcpFileObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 97
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_72
    const-string v4, "DhcpFileObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getPeerIpAddress : END element.length = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public onEvent(ILjava/lang/String;)V
    .registers 6
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 41
    if-nez p2, :cond_a

    .line 42
    const-string v0, "DhcpFileObserver"

    const-string v1, "Received the event, but path is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_9
    :goto_9
    return-void

    .line 45
    :cond_a
    const-string v0, "DhcpFileObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEvent - Event : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    .line 49
    const-string v0, "DhcpFileObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received the event ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wfds/DhcpFileObserver;->mDhcpFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is modified]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/lge/wfds/DhcpFileObserver;->mDhcpFileName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 52
    iget-object v0, p0, Lcom/lge/wfds/DhcpFileObserver;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x901017

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_9
.end method

.method public startObserving()V
    .registers 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/lge/wfds/DhcpFileObserver;->startWatching()V

    .line 59
    const-string v0, "DhcpFileObserver"

    const-string v1, "DhcpFileObserver startObserving"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public stopObserving()V
    .registers 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/lge/wfds/DhcpFileObserver;->stopWatching()V

    .line 64
    const-string v0, "DhcpFileObserver"

    const-string v1, "DhcpFileObserver stopObserving"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method
