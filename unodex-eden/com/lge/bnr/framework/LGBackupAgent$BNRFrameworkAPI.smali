.class Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;
.super Ljava/lang/Object;
.source "LGBackupAgent.java"

# interfaces
.implements Lcom/lge/bnr/framework/IBNRFrameworkAPI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bnr/framework/LGBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BNRFrameworkAPI"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/bnr/framework/LGBackupAgent;


# direct methods
.method constructor <init>(Lcom/lge/bnr/framework/LGBackupAgent;)V
    .registers 2

    .prologue
    .line 358
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized copyBackupFile(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/io/File;
    .param p3, "dest"    # Ljava/io/File;

    .prologue
    .line 483
    monitor-enter p0

    if-eqz p2, :cond_5

    if-nez p3, :cond_7

    .line 538
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 487
    :cond_7
    :try_start_7
    sget-boolean v7, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    if-nez v7, :cond_5

    .line 491
    const v7, 0x7d000

    new-array v4, v7, [B
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_97

    .line 492
    .local v4, "buf":[B
    const/4 v0, 0x0

    .line 493
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 496
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_12
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_67
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_78
    .catchall {:try_start_12 .. :try_end_1c} :catchall_8b

    .line 497
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_1c
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 498
    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v8, 0x0

    invoke-direct {v7, p3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 497
    invoke-direct {v3, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_27} :catch_c2
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_27} :catch_b9
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_b2
    .catchall {:try_start_1c .. :try_end_27} :catchall_ab

    .line 500
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 502
    .local v5, "bytesRead":I
    :cond_28
    :goto_28
    :try_start_28
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_3e

    .line 512
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_54
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_31} :catch_bc
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_31} :catch_b5
    .catchall {:try_start_28 .. :try_end_31} :catchall_ae

    .line 524
    if-eqz v1, :cond_36

    .line 526
    :try_start_33
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_a9
    .catchall {:try_start_33 .. :try_end_36} :catchall_97

    .line 530
    :cond_36
    :goto_36
    if-eqz v3, :cond_9b

    .line 532
    :try_start_38
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_9a
    .catchall {:try_start_38 .. :try_end_3b} :catchall_97

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .line 533
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 503
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    :cond_3e
    const/4 v7, 0x0

    :try_start_3f
    invoke-virtual {v3, v4, v7, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 505
    iget-object v7, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v7}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v7

    if-eqz v7, :cond_28

    .line 506
    iget-object v7, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v7}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v7

    invoke-interface {v7, p1, v5}, Lcom/lge/bnr/remote/IRemoteBackup;->setBackupProgressforCopyFile(Ljava/lang/String;I)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_53} :catch_54
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_53} :catch_bc
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_53} :catch_b5
    .catchall {:try_start_3f .. :try_end_53} :catchall_ae

    goto :goto_28

    .line 514
    :catch_54
    move-exception v6

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .line 516
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bytesRead":I
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v6, "e":Landroid/os/RemoteException;
    :goto_57
    :try_start_57
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_8b

    .line 524
    if-eqz v0, :cond_5f

    .line 526
    :try_start_5c
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_9f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_97

    .line 530
    :cond_5f
    :goto_5f
    if-eqz v2, :cond_5

    .line 532
    :try_start_61
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65
    .catchall {:try_start_61 .. :try_end_64} :catchall_97

    goto :goto_5

    .line 533
    :catch_65
    move-exception v7

    goto :goto_5

    .line 517
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_67
    move-exception v6

    .line 519
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_68
    :try_start_68
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_8b

    .line 524
    if-eqz v0, :cond_70

    .line 526
    :try_start_6d
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_a1
    .catchall {:try_start_6d .. :try_end_70} :catchall_97

    .line 530
    :cond_70
    :goto_70
    if-eqz v2, :cond_5

    .line 532
    :try_start_72
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76
    .catchall {:try_start_72 .. :try_end_75} :catchall_97

    goto :goto_5

    .line 533
    :catch_76
    move-exception v7

    goto :goto_5

    .line 520
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_78
    move-exception v6

    .line 522
    .local v6, "e":Ljava/io/IOException;
    :goto_79
    :try_start_79
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_8b

    .line 524
    if-eqz v0, :cond_81

    .line 526
    :try_start_7e
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_a3
    .catchall {:try_start_7e .. :try_end_81} :catchall_97

    .line 530
    :cond_81
    :goto_81
    if-eqz v2, :cond_5

    .line 532
    :try_start_83
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_88
    .catchall {:try_start_83 .. :try_end_86} :catchall_97

    goto/16 :goto_5

    .line 533
    :catch_88
    move-exception v7

    goto/16 :goto_5

    .line 523
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_8b
    move-exception v7

    .line 524
    :goto_8c
    if-eqz v0, :cond_91

    .line 526
    :try_start_8e
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_a5
    .catchall {:try_start_8e .. :try_end_91} :catchall_97

    .line 530
    :cond_91
    :goto_91
    if-eqz v2, :cond_96

    .line 532
    :try_start_93
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_a7
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    .line 536
    :cond_96
    :goto_96
    :try_start_96
    throw v7
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    .line 483
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buf":[B
    :catchall_97
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buf":[B
    .restart local v5    # "bytesRead":I
    :catch_9a
    move-exception v7

    :cond_9b
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_5

    .end local v5    # "bytesRead":I
    .local v6, "e":Landroid/os/RemoteException;
    :catch_9f
    move-exception v7

    goto :goto_5f

    .local v6, "e":Ljava/io/FileNotFoundException;
    :catch_a1
    move-exception v7

    goto :goto_70

    .local v6, "e":Ljava/io/IOException;
    :catch_a3
    move-exception v7

    goto :goto_81

    .end local v6    # "e":Ljava/io/IOException;
    :catch_a5
    move-exception v8

    goto :goto_91

    :catch_a7
    move-exception v8

    goto :goto_96

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bytesRead":I
    :catch_a9
    move-exception v7

    goto :goto_36

    .line 523
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "bytesRead":I
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_ab
    move-exception v7

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_8c

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bytesRead":I
    :catchall_ae
    move-exception v7

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_8c

    .line 520
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bytesRead":I
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_b2
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_79

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bytesRead":I
    :catch_b5
    move-exception v6

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_79

    .line 517
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bytesRead":I
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_b9
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_68

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bytesRead":I
    :catch_bc
    move-exception v6

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_68

    .line 514
    .end local v5    # "bytesRead":I
    :catch_c0
    move-exception v6

    goto :goto_57

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_c2
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_57
.end method

.method public declared-synchronized getRemoteFd(Ljava/lang/String;J)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "offset"    # J

    .prologue
    .line 630
    monitor-enter p0

    const/4 v1, 0x0

    .line 632
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_2
    sget-boolean v3, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_22

    if-eqz v3, :cond_9

    move-object v2, v1

    .line 645
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_7
    monitor-exit p0

    return-object v2

    .line 637
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_9
    :try_start_9
    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 638
    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/lge/bnr/remote/IRemoteBackup;->getRemoteFd(Ljava/lang/String;J)Landroid/os/ParcelFileDescriptor;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_1d
    .catchall {:try_start_9 .. :try_end_1a} :catchall_22

    move-result-object v1

    :cond_1b
    :goto_1b
    move-object v2, v1

    .line 645
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_7

    .line 640
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1d
    move-exception v0

    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1e
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_1b

    .line 630
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_22
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setBackupComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "failItem"    # Lcom/lge/bnr/model/BNRFailItem;

    .prologue
    .line 407
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 408
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/bnr/remote/IRemoteBackup;->setBackupComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_14
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    .line 415
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 410
    :catch_14
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_12

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setBackupProgress(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "percents"    # I

    .prologue
    .line 366
    monitor-enter p0

    :try_start_1
    sget-boolean v1, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_32

    if-eqz v1, :cond_7

    .line 381
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 371
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 372
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/bnr/remote/IRemoteBackup;->setBackupProgress(Ljava/lang/String;I)V

    .line 373
    const-string v1, "JGZIP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bnr.setBackupProgress(packageName, accumulateProgress) "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2c} :catch_2d
    .catchall {:try_start_7 .. :try_end_2c} :catchall_32

    goto :goto_5

    .line 376
    :catch_2d
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_5

    .line 366
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setEnableBackup(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "totalFileCount"    # I

    .prologue
    .line 436
    monitor-enter p0

    :try_start_1
    const-string v1, "TT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packageName  =   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v1, "TT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "totalFileCount =  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 439
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/bnr/remote/IRemoteBackup;->setEnableBackup(Ljava/lang/String;I)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3a} :catch_3c
    .catchall {:try_start_1 .. :try_end_3a} :catchall_41

    .line 446
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    .line 441
    :catch_3c
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3d
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_3a

    .line 436
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_41
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setEnableRestore(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 453
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 454
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/bnr/remote/IRemoteBackup;->setEnableRestore(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_14
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    .line 461
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 456
    :catch_14
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_12

    .line 453
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFailItem(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)Lcom/lge/bnr/model/BNRFailItem;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "failItem"    # Lcom/lge/bnr/model/BNRFailItem;

    .prologue
    .line 468
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 469
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/bnr/remote/IRemoteBackup;->setFailItem(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)Lcom/lge/bnr/model/BNRFailItem;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_14
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    .line 476
    :cond_12
    :goto_12
    monitor-exit p0

    return-object p2

    .line 471
    :catch_14
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_12

    .line 468
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setRestoreComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "failItem"    # Lcom/lge/bnr/model/BNRFailItem;

    .prologue
    .line 422
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 423
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/bnr/remote/IRemoteBackup;->setRestoreComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_14
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    .line 429
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 425
    :catch_14
    move-exception v0

    .line 427
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_12

    .line 422
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setRestoreProgress(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "percents"    # I

    .prologue
    .line 387
    monitor-enter p0

    :try_start_1
    sget-boolean v1, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-eqz v1, :cond_7

    .line 400
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 392
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 393
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/bnr/remote/IRemoteBackup;->setRestoreProgress(Ljava/lang/String;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_19
    .catchall {:try_start_7 .. :try_end_18} :catchall_1e

    goto :goto_5

    .line 395
    :catch_19
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_5

    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized transferBackupFile(Ljava/lang/String;Ljava/io/File;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/io/File;

    .prologue
    .line 543
    monitor-enter p0

    if-nez p2, :cond_5

    .line 592
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 547
    :cond_5
    :try_start_5
    sget-boolean v6, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    if-nez v6, :cond_3

    .line 551
    new-instance v5, Lcom/lge/bnr/model/BNRZipByteData;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/lge/bnr/model/BNRZipByteData;-><init>(Ljava/lang/String;)V

    .line 553
    .local v5, "zipData":Lcom/lge/bnr/model/BNRZipByteData;
    const v6, 0x7d000

    new-array v4, v6, [B
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_74

    .line 555
    .local v4, "sharedByte":[B
    const/4 v0, 0x0

    .line 558
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_18
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_22} :catch_85
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_22} :catch_55
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_22} :catch_61
    .catchall {:try_start_18 .. :try_end_22} :catchall_6d

    .line 560
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 562
    .local v2, "bytesRead":I
    :cond_23
    :goto_23
    :try_start_23
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_48
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_26} :catch_82
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_7f
    .catchall {:try_start_23 .. :try_end_26} :catchall_7c

    move-result v2

    if-gtz v2, :cond_30

    .line 583
    if-eqz v1, :cond_78

    .line 585
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_77
    .catchall {:try_start_2b .. :try_end_2e} :catchall_74

    move-object v0, v1

    .line 586
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 564
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :cond_30
    :try_start_30
    iget-object v6, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v6}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v6

    if-eqz v6, :cond_23

    .line 565
    invoke-virtual {v5, v4}, Lcom/lge/bnr/model/BNRZipByteData;->set_byte([B)V

    .line 566
    invoke-virtual {v5, v2}, Lcom/lge/bnr/model/BNRZipByteData;->set_ReadByte(I)V

    .line 568
    iget-object v6, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v6}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v6

    invoke-interface {v6, p1, v5}, Lcom/lge/bnr/remote/IRemoteBackup;->setBackupStreamData(Ljava/lang/String;Lcom/lge/bnr/model/BNRZipByteData;)I
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_47} :catch_48
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_47} :catch_82
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_47} :catch_7f
    .catchall {:try_start_30 .. :try_end_47} :catchall_7c

    goto :goto_23

    .line 572
    :catch_48
    move-exception v3

    move-object v0, v1

    .line 574
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bytesRead":I
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "e":Landroid/os/RemoteException;
    :goto_4a
    :try_start_4a
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_6d

    .line 583
    if-eqz v0, :cond_3

    .line 585
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53
    .catchall {:try_start_4f .. :try_end_52} :catchall_74

    goto :goto_3

    .line 586
    :catch_53
    move-exception v6

    goto :goto_3

    .line 575
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_55
    move-exception v3

    .line 577
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_56
    :try_start_56
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_6d

    .line 583
    if-eqz v0, :cond_3

    .line 585
    :try_start_5b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catchall {:try_start_5b .. :try_end_5e} :catchall_74

    goto :goto_3

    .line 586
    :catch_5f
    move-exception v6

    goto :goto_3

    .line 578
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_61
    move-exception v3

    .line 580
    .local v3, "e":Ljava/io/IOException;
    :goto_62
    :try_start_62
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6d

    .line 583
    if-eqz v0, :cond_3

    .line 585
    :try_start_67
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b
    .catchall {:try_start_67 .. :try_end_6a} :catchall_74

    goto :goto_3

    .line 586
    :catch_6b
    move-exception v6

    goto :goto_3

    .line 581
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_6d
    move-exception v6

    .line 583
    :goto_6e
    if-eqz v0, :cond_73

    .line 585
    :try_start_70
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_7a
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    .line 590
    :cond_73
    :goto_73
    :try_start_73
    throw v6
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    .line 543
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "sharedByte":[B
    .end local v5    # "zipData":Lcom/lge/bnr/model/BNRZipByteData;
    :catchall_74
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bytesRead":I
    .restart local v4    # "sharedByte":[B
    .restart local v5    # "zipData":Lcom/lge/bnr/model/BNRZipByteData;
    :catch_77
    move-exception v6

    :cond_78
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v2    # "bytesRead":I
    :catch_7a
    move-exception v7

    goto :goto_73

    .line 581
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bytesRead":I
    :catchall_7c
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_6e

    .line 578
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_7f
    move-exception v3

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_62

    .line 575
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_82
    move-exception v3

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_56

    .line 572
    .end local v2    # "bytesRead":I
    :catch_85
    move-exception v3

    goto :goto_4a
.end method

.method public declared-synchronized transferByteArray(Ljava/lang/String;Ljava/lang/String;[BI)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "backupFileName"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    monitor-enter p0

    :try_start_1
    sget-boolean v3, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2f

    if-eqz v3, :cond_7

    .line 624
    :cond_5
    monitor-exit p0

    return-void

    .line 603
    :cond_7
    :try_start_7
    new-instance v2, Lcom/lge/bnr/model/BNRZipByteData;

    invoke-direct {v2, p2}, Lcom/lge/bnr/model/BNRZipByteData;-><init>(Ljava/lang/String;)V

    .line 605
    .local v2, "zipData":Lcom/lge/bnr/model/BNRZipByteData;
    const/4 v0, -0x1

    .line 606
    .local v0, "cnt":I
    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 607
    invoke-virtual {v2, p3}, Lcom/lge/bnr/model/BNRZipByteData;->set_byte([B)V

    .line 608
    invoke-virtual {v2, p4}, Lcom/lge/bnr/model/BNRZipByteData;->set_ReadByte(I)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_2f

    .line 611
    :try_start_1b
    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lcom/lge/bnr/remote/IRemoteBackup;->setBackupStreamData(Ljava/lang/String;Lcom/lge/bnr/model/BNRZipByteData;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_32
    .catchall {:try_start_1b .. :try_end_24} :catchall_40

    move-result v0

    .line 618
    if-gez v0, :cond_5

    .line 619
    :try_start_27
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Remote IO Exception!!!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    .line 599
    .end local v0    # "cnt":I
    .end local v2    # "zipData":Lcom/lge/bnr/model/BNRZipByteData;
    :catchall_2f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 613
    .restart local v0    # "cnt":I
    .restart local v2    # "zipData":Lcom/lge/bnr/model/BNRZipByteData;
    :catch_32
    move-exception v1

    .line 615
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_33
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_40

    .line 618
    if-gez v0, :cond_5

    .line 619
    :try_start_38
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Remote IO Exception!!!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 616
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_40
    move-exception v3

    .line 618
    if-gez v0, :cond_4b

    .line 619
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Remote IO Exception!!!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 621
    :cond_4b
    throw v3
    :try_end_4c
    .catchall {:try_start_38 .. :try_end_4c} :catchall_2f
.end method
