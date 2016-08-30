.class Lcom/lge/hardware/LGCamera$EventHandler;
.super Landroid/os/Handler;
.source "LGCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hardware/LGCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mLGCamera:Lcom/lge/hardware/LGCamera;

.field final synthetic this$0:Lcom/lge/hardware/LGCamera;


# direct methods
.method public constructor <init>(Lcom/lge/hardware/LGCamera;Lcom/lge/hardware/LGCamera;Landroid/os/Looper;)V
    .registers 4
    .param p2, "c"    # Lcom/lge/hardware/LGCamera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    .line 778
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 779
    iput-object p2, p0, Lcom/lge/hardware/LGCamera$EventHandler;->mLGCamera:Lcom/lge/hardware/LGCamera;

    .line 780
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 784
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_36e

    .line 900
    const-string v19, "LGCamera"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Unknown message type "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_23
    :goto_23
    return-void

    .line 786
    :sswitch_24
    const/4 v3, 0x0

    .line 787
    .local v3, "cb":Lcom/lge/hardware/LGCamera$CameraDataCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCameraDataCallbackLock:Ljava/lang/Object;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$2(Lcom/lge/hardware/LGCamera;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    .line 788
    :try_start_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$3(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraDataCallback;

    move-result-object v3

    .line 787
    monitor-exit v20
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_8d

    .line 791
    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$0(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v19

    if-eqz v19, :cond_23

    .line 793
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [B

    const/16 v20, 0x0

    # invokes: Lcom/lge/hardware/LGCamera;->byteToInt([BI)I
    invoke-static/range {v19 .. v20}, Lcom/lge/hardware/LGCamera;->access$4([BI)I

    move-result v17

    .line 795
    .local v17, "stat_data_num":I
    if-lez v17, :cond_61

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_90

    .line 796
    :cond_61
    const-string v19, "LGCamera"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Invalid stat data number : "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v20, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v20 .. v20}, Lcom/lge/hardware/LGCamera;->access$0(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v3, v0, v1}, Lcom/lge/hardware/LGCamera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    goto :goto_23

    .line 787
    .end local v17    # "stat_data_num":I
    :catchall_8d
    move-exception v19

    :try_start_8e
    monitor-exit v20
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v19

    .line 799
    .restart local v17    # "stat_data_num":I
    :cond_90
    move/from16 v0, v17

    mul-int/lit16 v8, v0, 0x101

    .line 802
    .local v8, "data_size":I
    new-array v0, v8, [I

    move-object/from16 v18, v0

    .line 804
    .local v18, "statsdata":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_99
    if-lt v11, v8, :cond_ae

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$0(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Lcom/lge/hardware/LGCamera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    goto/16 :goto_23

    .line 805
    :cond_ae
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [B

    add-int/lit8 v20, v11, 0x1

    mul-int/lit8 v20, v20, 0x4

    # invokes: Lcom/lge/hardware/LGCamera;->byteToInt([BI)I
    invoke-static/range {v19 .. v20}, Lcom/lge/hardware/LGCamera;->access$4([BI)I

    move-result v19

    aput v19, v18, v11

    .line 804
    add-int/lit8 v11, v11, 0x1

    goto :goto_99

    .line 814
    .end local v3    # "cb":Lcom/lge/hardware/LGCamera$CameraDataCallback;
    .end local v8    # "data_size":I
    .end local v11    # "i":I
    .end local v17    # "stat_data_num":I
    .end local v18    # "statsdata":[I
    :sswitch_c3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    .line 815
    .local v2, "buf":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$5(Lcom/lge/hardware/LGCamera;)I

    move-result v19

    if-eqz v19, :cond_23

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$0(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v19

    if-eqz v19, :cond_23

    .line 817
    const/4 v4, 0x0

    .line 818
    .local v4, "cb1":Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    const/4 v5, 0x0

    .line 819
    .local v5, "cb2":Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    const/4 v6, 0x0

    .line 820
    .local v6, "cb3":Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mMetaDataCallbackLock:Ljava/lang/Object;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$6(Lcom/lge/hardware/LGCamera;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    .line 821
    :try_start_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mHdrMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$7(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    move-result-object v4

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mFlashMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$8(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    move-result-object v5

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mManualModeMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$9(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    move-result-object v6

    .line 820
    monitor-exit v20
    :try_end_110
    .catchall {:try_start_f1 .. :try_end_110} :catchall_1bf

    .line 826
    const/16 v19, 0x0

    aget-byte v19, v2, v19

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_145

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$5(Lcom/lge/hardware/LGCamera;)I

    move-result v19

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_145

    .line 828
    if-eqz v4, :cond_145

    .line 829
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v10, v0, [B

    .line 830
    .local v10, "hdr_data":[B
    const/16 v19, 0x0

    const/16 v20, 0x4

    aget-byte v20, v2, v20

    aput-byte v20, v10, v19

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$0(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v4, v10, v0}, Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    .line 834
    .end local v10    # "hdr_data":[B
    :cond_145
    const/16 v19, 0x0

    aget-byte v19, v2, v19

    and-int/lit8 v19, v19, 0x8

    if-eqz v19, :cond_17a

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$5(Lcom/lge/hardware/LGCamera;)I

    move-result v19

    and-int/lit8 v19, v19, 0x8

    if-eqz v19, :cond_17a

    .line 836
    if-eqz v5, :cond_17a

    .line 837
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v9, v0, [B

    .line 838
    .local v9, "flash_data":[B
    const/16 v19, 0x0

    const/16 v20, 0x8

    aget-byte v20, v2, v20

    aput-byte v20, v9, v19

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$0(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v5, v9, v0}, Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    .line 842
    .end local v9    # "flash_data":[B
    :cond_17a
    const/16 v19, 0x0

    aget-byte v19, v2, v19

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_23

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$5(Lcom/lge/hardware/LGCamera;)I

    move-result v19

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_23

    .line 844
    if-eqz v6, :cond_23

    .line 845
    const/16 v19, 0x14

    move/from16 v0, v19

    new-array v12, v0, [B

    .line 846
    .local v12, "lg_manual_data":[B
    array-length v0, v2

    move/from16 v19, v0

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1cd

    .line 847
    const/16 v15, 0xc

    .line 848
    .local v15, "ptr":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    move/from16 v16, v15

    .end local v15    # "ptr":I
    .local v16, "ptr":I
    :goto_1a8
    const/16 v19, 0x14

    move/from16 v0, v19

    if-lt v11, v0, :cond_1c2

    .line 858
    .end local v16    # "ptr":I
    :goto_1ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$0(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v12, v0}, Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    goto/16 :goto_23

    .line 820
    .end local v11    # "i":I
    .end local v12    # "lg_manual_data":[B
    :catchall_1bf
    move-exception v19

    :try_start_1c0
    monitor-exit v20
    :try_end_1c1
    .catchall {:try_start_1c0 .. :try_end_1c1} :catchall_1bf

    throw v19

    .line 850
    .restart local v11    # "i":I
    .restart local v12    # "lg_manual_data":[B
    .restart local v16    # "ptr":I
    :cond_1c2
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ptr":I
    .restart local v15    # "ptr":I
    aget-byte v19, v2, v16

    aput-byte v19, v12, v11

    .line 848
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v15

    .end local v15    # "ptr":I
    .restart local v16    # "ptr":I
    goto :goto_1a8

    .line 853
    .end local v11    # "i":I
    .end local v16    # "ptr":I
    :cond_1cd
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1ce
    const/16 v19, 0x14

    move/from16 v0, v19

    if-lt v11, v0, :cond_1dc

    .line 856
    const-string v19, "LGCamera"

    const-string v20, "error! Manual mode was set but data was not matched."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ae

    .line 854
    :cond_1dc
    const/16 v19, 0x0

    aput-byte v19, v12, v11

    .line 853
    add-int/lit8 v11, v11, 0x1

    goto :goto_1ce

    .line 866
    .end local v2    # "buf":[B
    .end local v4    # "cb1":Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    .end local v5    # "cb2":Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    .end local v6    # "cb3":Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    .end local v11    # "i":I
    .end local v12    # "lg_manual_data":[B
    :sswitch_1e3
    const/4 v13, 0x0

    .line 867
    .local v13, "listener":Lcom/lge/hardware/LGCamera$ProxyDataListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mProxyDataListenerLock:Ljava/lang/Object;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$10(Lcom/lge/hardware/LGCamera;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    .line 868
    :try_start_1ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mProxyDataListener:Lcom/lge/hardware/LGCamera$ProxyDataListener;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$11(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$ProxyDataListener;

    move-result-object v13

    .line 867
    monitor-exit v20
    :try_end_1fa
    .catchall {:try_start_1ef .. :try_end_1fa} :catchall_34b

    .line 871
    if-eqz v13, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$0(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v19

    if-eqz v19, :cond_23

    .line 872
    new-instance v14, Lcom/lge/hardware/LGCamera$ProxyData;

    invoke-direct {v14}, Lcom/lge/hardware/LGCamera$ProxyData;-><init>()V

    .line 873
    .local v14, "proxyData":Lcom/lge/hardware/LGCamera$ProxyData;
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [B

    .line 874
    .local v7, "data":[B
    const/4 v15, 0x0

    .line 875
    .restart local v15    # "ptr":I
    if-eqz v7, :cond_34e

    .line 876
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ptr":I
    .restart local v16    # "ptr":I
    aget-byte v19, v7, v15

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ptr":I
    .restart local v15    # "ptr":I
    aget-byte v20, v7, v16

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    .line 877
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ptr":I
    .restart local v16    # "ptr":I
    aget-byte v20, v7, v15

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    or-int v19, v19, v20

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ptr":I
    .restart local v15    # "ptr":I
    aget-byte v20, v7, v16

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x18

    or-int v19, v19, v20

    .line 876
    move/from16 v0, v19

    iput v0, v14, Lcom/lge/hardware/LGCamera$ProxyData;->val:I

    .line 878
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ptr":I
    .restart local v16    # "ptr":I
    aget-byte v19, v7, v15

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ptr":I
    .restart local v15    # "ptr":I
    aget-byte v20, v7, v16

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    .line 879
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ptr":I
    .restart local v16    # "ptr":I
    aget-byte v20, v7, v15

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    or-int v19, v19, v20

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ptr":I
    .restart local v15    # "ptr":I
    aget-byte v20, v7, v16

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x18

    or-int v19, v19, v20

    .line 878
    move/from16 v0, v19

    iput v0, v14, Lcom/lge/hardware/LGCamera$ProxyData;->conv:I

    .line 880
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ptr":I
    .restart local v16    # "ptr":I
    aget-byte v19, v7, v15

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ptr":I
    .restart local v15    # "ptr":I
    aget-byte v20, v7, v16

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    .line 881
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ptr":I
    .restart local v16    # "ptr":I
    aget-byte v20, v7, v15

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    or-int v19, v19, v20

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ptr":I
    .restart local v15    # "ptr":I
    aget-byte v20, v7, v16

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x18

    or-int v19, v19, v20

    .line 880
    move/from16 v0, v19

    iput v0, v14, Lcom/lge/hardware/LGCamera$ProxyData;->sig:I

    .line 882
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ptr":I
    .restart local v16    # "ptr":I
    aget-byte v19, v7, v15

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ptr":I
    .restart local v15    # "ptr":I
    aget-byte v20, v7, v16

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    .line 883
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ptr":I
    .restart local v16    # "ptr":I
    aget-byte v20, v7, v15

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    or-int v19, v19, v20

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ptr":I
    .restart local v15    # "ptr":I
    aget-byte v20, v7, v16

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x18

    or-int v19, v19, v20

    .line 882
    move/from16 v0, v19

    iput v0, v14, Lcom/lge/hardware/LGCamera$ProxyData;->amb:I

    .line 884
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ptr":I
    .restart local v16    # "ptr":I
    aget-byte v19, v7, v15

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ptr":I
    .restart local v15    # "ptr":I
    aget-byte v20, v7, v16

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    .line 885
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ptr":I
    .restart local v16    # "ptr":I
    aget-byte v20, v7, v15

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    or-int v19, v19, v20

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ptr":I
    .restart local v15    # "ptr":I
    aget-byte v20, v7, v16

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x18

    or-int v19, v19, v20

    .line 884
    move/from16 v0, v19

    iput v0, v14, Lcom/lge/hardware/LGCamera$ProxyData;->raw:I

    .line 894
    :goto_32e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mProxyDataListener:Lcom/lge/hardware/LGCamera$ProxyDataListener;
    invoke-static/range {v19 .. v19}, Lcom/lge/hardware/LGCamera;->access$11(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$ProxyDataListener;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hardware/LGCamera$EventHandler;->this$0:Lcom/lge/hardware/LGCamera;

    move-object/from16 v20, v0

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static/range {v20 .. v20}, Lcom/lge/hardware/LGCamera;->access$0(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v14, v1}, Lcom/lge/hardware/LGCamera$ProxyDataListener;->onDataListen(Lcom/lge/hardware/LGCamera$ProxyData;Landroid/hardware/Camera;)V

    goto/16 :goto_23

    .line 867
    .end local v7    # "data":[B
    .end local v14    # "proxyData":Lcom/lge/hardware/LGCamera$ProxyData;
    .end local v15    # "ptr":I
    :catchall_34b
    move-exception v19

    :try_start_34c
    monitor-exit v20
    :try_end_34d
    .catchall {:try_start_34c .. :try_end_34d} :catchall_34b

    throw v19

    .line 887
    .restart local v7    # "data":[B
    .restart local v14    # "proxyData":Lcom/lge/hardware/LGCamera$ProxyData;
    .restart local v15    # "ptr":I
    :cond_34e
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v14, Lcom/lge/hardware/LGCamera$ProxyData;->val:I

    .line 888
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v14, Lcom/lge/hardware/LGCamera$ProxyData;->conv:I

    .line 889
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v14, Lcom/lge/hardware/LGCamera$ProxyData;->sig:I

    .line 890
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v14, Lcom/lge/hardware/LGCamera$ProxyData;->amb:I

    .line 891
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v14, Lcom/lge/hardware/LGCamera$ProxyData;->raw:I

    goto :goto_32e

    .line 784
    nop

    :sswitch_data_36e
    .sparse-switch
        0x10000 -> :sswitch_24
        0x20000 -> :sswitch_c3
        0x80000 -> :sswitch_1e3
    .end sparse-switch
.end method
