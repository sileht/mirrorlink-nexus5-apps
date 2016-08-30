.class public final Lcom/lge/lgdrm/DrmObjectSession;
.super Ljava/lang/Object;
.source "DrmObjectSession.java"


# static fields
.field private static final PINIT_HND:I = 0x0

.field private static final PINIT_SL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DrmObjSes"


# instance fields
.field bEndError:Z

.field private context:Landroid/content/Context;

.field private downloadAgent:I

.field private errorMsg:Ljava/lang/String;

.field private failReason:I

.field private nativeProcessHandle:J

.field private nativeSLType:I

.field private nativeSession:I

.field nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

.field private redirectURL:Ljava/lang/String;

.field private storedFilename:Ljava/lang/String;

.field private validSession:Z

.field private waitFlag:Z


# direct methods
.method private constructor <init>(ILandroid/content/Context;I)V
    .registers 5
    .param p1, "downloadAgent"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "session"    # I

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    .line 309
    iput-object p2, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    .line 310
    iput p3, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 313
    return-void
.end method

.method private native nativeDestroySession(II)V
.end method

.method private native nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I
.end method

.method private native nativeProcessEnd(JILjava/lang/String;)I
.end method

.method private native nativeProcessInit(ILjava/lang/String;Ljava/lang/String;II)[J
.end method

.method private native nativeProcessStatus(J)I
.end method

.method private native nativeProcessUpdate(J[BII)I
.end method

.method private native nativeSetContentSize(JJ)I
.end method

.method static newInstance(ILandroid/content/Context;I)Lcom/lge/lgdrm/DrmObjectSession;
    .registers 5
    .param p0, "downloadAgent"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # I

    .prologue
    .line 327
    if-nez p1, :cond_a

    .line 328
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_a
    const/4 v0, 0x1

    if-lt p0, v0, :cond_10

    const/4 v0, 0x6

    if-le p0, v0, :cond_18

    .line 331
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid appType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_18
    new-instance v0, Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/lge/lgdrm/DrmObjectSession;-><init>(ILandroid/content/Context;I)V

    return-object v0
.end method

.method private postWaitResult(Ljava/lang/String;IILjava/lang/String;)V
    .registers 18
    .param p1, "resultReceiver"    # Ljava/lang/String;
    .param p2, "result"    # I
    .param p3, "waitType"    # I
    .param p4, "filename"    # Ljava/lang/String;

    .prologue
    .line 973
    const-string v10, "DrmObjSes"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "postWaitResult() : result = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " waitType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " filename = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    if-eqz p1, :cond_30

    if-nez p4, :cond_38

    .line 976
    :cond_30
    const-string v10, "DrmObjSes"

    const-string v11, "postWaitResult() : Invalid parameters"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_37
    :goto_37
    return-void

    .line 981
    :cond_38
    const-string v10, ";"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "component":[Ljava/lang/String;
    array-length v10, v1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4a

    .line 983
    const-string v10, "DrmObjSes"

    const-string v11, "postWaitResult() : Fail to devide package;class"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 987
    :cond_4a
    new-instance v2, Lcom/lge/lgdrm/DrmContent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-direct {v2, v0, v10, v11}, Lcom/lge/lgdrm/DrmContent;-><init>(Ljava/lang/String;II)V

    .line 989
    .local v2, "content":Lcom/lge/lgdrm/DrmContent;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0, v10}, Lcom/lge/lgdrm/DrmObjectSession;->nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_5d

    .line 990
    const/4 v2, 0x0

    .line 993
    :cond_5d
    if-eqz v2, :cond_37

    .line 998
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 999
    .local v9, "path":Landroid/net/Uri;
    if-nez v9, :cond_74

    .line 1000
    const-string v10, "DrmObjSes"

    const-string v11, "postWaitResult() : Fail to make URI"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 1005
    :cond_74
    iget-object v10, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v11, v12, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1007
    const/4 v10, 0x0

    aget-object v10, v1, v10

    const-string v11, "com.android.providers.downloads"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 1010
    .local v3, "downloadProvider":Z
    const/4 v10, 0x2

    move/from16 v0, p3

    if-eq v0, v10, :cond_90

    if-eqz v3, :cond_c7

    .line 1012
    :cond_90
    new-instance v7, Landroid/content/Intent;

    const-string v10, "com.lge.lgdrm.action.DRM_PROCESS_RESULT"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v7, "intent":Landroid/content/Intent;
    const-string v10, "DrmObjSes"

    const-string v11, "postWaitResult() : Intent (action wait result)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-string v10, "com.lge.lgdrm.extra.WAIT_RESULT"

    invoke-virtual {v7, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1016
    const-string v10, "com.lge.lgdrm.extra.WAIT_TYPE"

    move/from16 v0, p3

    invoke-virtual {v7, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1017
    const-string v10, "com.lge.lgdrm.extra.FILE_NAME"

    move-object/from16 v0, p4

    invoke-virtual {v7, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1063
    .end local v7    # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    :goto_b2
    if-nez v3, :cond_b9

    const/4 v10, 0x2

    move/from16 v0, p3

    if-ne v0, v10, :cond_116

    .line 1064
    :cond_b9
    :try_start_b9
    iget-object v10, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_be} :catch_c0

    goto/16 :goto_37

    .line 1087
    :catch_c0
    move-exception v6

    move-object v7, v8

    .line 1089
    .end local v8    # "intent":Landroid/content/Intent;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v7    # "intent":Landroid/content/Intent;
    :goto_c2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_37

    .line 1020
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_c7
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1021
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v10, "DrmObjSes"

    const-string v11, "postWaitResult() : Intent (action view)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v4, 0x0

    .line 1026
    .local v4, "drmMime":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v5

    .line 1027
    .local v5, "drmType":I
    and-int/lit8 v10, v5, 0x10

    if-eqz v10, :cond_f3

    .line 1028
    const-string v4, "application/vnd.oma.drm.message"

    .line 1038
    :goto_e0
    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    invoke-virtual {v2}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v10

    packed-switch v10, :pswitch_data_156

    goto/16 :goto_37

    .line 1042
    :pswitch_ec
    const-string v10, "com.lge.lgdrm.IMAGE_CATEGORY"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1043
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_b2

    .line 1029
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_f3
    and-int/lit16 v10, v5, 0x100

    if-eqz v10, :cond_fa

    .line 1030
    const-string v4, "application/vnd.oma.drm.content"

    .line 1031
    goto :goto_e0

    :cond_fa
    and-int/lit16 v10, v5, 0x1000

    if-eqz v10, :cond_37

    .line 1032
    const-string v4, "application/vnd.oma.drm.dcf"

    .line 1033
    goto :goto_e0

    .line 1045
    :pswitch_101
    const-string v10, "com.lge.lgdrm.AUDIO_CATEGORY"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1046
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_b2

    .line 1048
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    :pswitch_108
    const-string v10, "com.lge.lgdrm.VIDEO_CATEGORY"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1049
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_b2

    .line 1051
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    :pswitch_10f
    const-string v10, "com.lge.lgdrm.GAME_CATEGORY"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1052
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_b2

    .line 1069
    .end local v4    # "drmMime":Ljava/lang/String;
    .end local v5    # "drmType":I
    :cond_116
    :try_start_116
    invoke-virtual {v2}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v5

    .line 1070
    .restart local v5    # "drmType":I
    and-int/lit16 v10, v5, 0x100

    if-eqz v10, :cond_13f

    .line 1072
    new-instance v7, Landroid/content/Intent;

    const-string v10, "com.lge.lgdrm.action.RIGHTS_RECEIVED"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_125} :catch_c0

    .line 1073
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    :try_start_125
    const-string v10, "com.lge.lgdrm.extra.FILE_NAME"

    move-object/from16 v0, p4

    invoke-virtual {v7, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    const-string v10, "com.lge.lgdrm.extra.CID"

    const/4 v11, 0x3

    invoke-virtual {v2, v11}, Lcom/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    iget-object v10, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    invoke-virtual {v10, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_13b} :catch_13d

    goto/16 :goto_37

    .line 1087
    :catch_13d
    move-exception v6

    goto :goto_c2

    .line 1079
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    :cond_13f
    :try_start_13f
    iget v10, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_37

    iget v10, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_37

    .line 1085
    const/high16 v10, 0x10000000

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1086
    iget-object v10, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_153} :catch_c0

    move-object v7, v8

    .line 1087
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_37

    .line 1040
    :pswitch_data_156
    .packed-switch 0x1
        :pswitch_ec
        :pswitch_101
        :pswitch_108
        :pswitch_10f
    .end packed-switch
.end method

.method private setFailInfo(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "failReason"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "redirectURL"    # Ljava/lang/String;

    .prologue
    .line 877
    iput p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->failReason:I

    .line 878
    iput-object p2, p0, Lcom/lge/lgdrm/DrmObjectSession;->errorMsg:Ljava/lang/String;

    .line 879
    iput-object p3, p0, Lcom/lge/lgdrm/DrmObjectSession;->redirectURL:Ljava/lang/String;

    .line 880
    return-void
.end method

.method private setNextRequest(IIILjava/lang/String;[B)I
    .registers 7
    .param p1, "session"    # I
    .param p2, "requestType"    # I
    .param p3, "httpMethod"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "data"    # [B

    .prologue
    .line 908
    iput p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 911
    new-instance v0, Lcom/lge/lgdrm/DrmDldRequest;

    invoke-direct {v0}, Lcom/lge/lgdrm/DrmDldRequest;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 912
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-nez v0, :cond_f

    .line 913
    const/4 v0, -0x1

    .line 921
    :goto_e
    return v0

    .line 916
    :cond_f
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p2, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    .line 917
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p3, v0, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    .line 918
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p4, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    .line 919
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p5, v0, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    .line 921
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private setStoredFilename(Ljava/lang/String;)V
    .registers 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 888
    iput-object p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->storedFilename:Ljava/lang/String;

    .line 889
    return-void
.end method

.method private startDldClient()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 935
    iget v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    const/4 v1, 0x3

    .line 937
    .local v1, "downloadAgent":I
    :goto_7
    new-instance v2, Lcom/lge/lgdrm/DrmObjectSession;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    iget v4, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    invoke-direct {v2, v1, v3, v4}, Lcom/lge/lgdrm/DrmObjectSession;-><init>(ILandroid/content/Context;I)V

    .line 943
    .local v2, "session":Lcom/lge/lgdrm/DrmObjectSession;
    new-instance v0, Lcom/lge/lgdrm/DrmDldClient;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v4, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v4}, Lcom/lge/lgdrm/DrmDldClient;-><init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V

    .line 946
    .local v0, "dldClient":Lcom/lge/lgdrm/DrmDldClient;
    iput v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 947
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 950
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmDldClient;->start()V

    .line 953
    iput-boolean v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 955
    return v5

    .line 935
    .end local v0    # "dldClient":Lcom/lge/lgdrm/DrmDldClient;
    .end local v1    # "downloadAgent":I
    .end local v2    # "session":Lcom/lge/lgdrm/DrmObjectSession;
    :cond_24
    const/4 v1, 0x4

    goto :goto_7
.end method


# virtual methods
.method public destroySession(I)V
    .registers 8
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 362
    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-le p1, v0, :cond_10

    .line 363
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid reason"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_10
    if-nez p1, :cond_13

    .line 382
    :goto_12
    return-void

    .line 371
    :cond_13
    iput-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 372
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_25

    .line 374
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 380
    :cond_20
    :goto_20
    iput v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 381
    iput-wide v4, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:J

    goto :goto_12

    .line 375
    :cond_25
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    if-eqz v0, :cond_20

    .line 377
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    invoke-direct {p0, v0, p1}, Lcom/lge/lgdrm/DrmObjectSession;->nativeDestroySession(II)V

    goto :goto_20
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 853
    :try_start_0
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 855
    const-string v0, "DrmObjSes"

    const-string v1, "finalize() : There still exists valid processing handle. Check impl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_28

    .line 863
    :cond_14
    :goto_14
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 865
    return-void

    .line 857
    :cond_18
    :try_start_18
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    if-eqz v0, :cond_14

    .line 859
    const-string v0, "DrmObjSes"

    const-string v1, "finalize() : There still exists valid session. Check impl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_14

    .line 862
    :catchall_28
    move-exception v0

    .line 863
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 864
    throw v0
.end method

.method public getFailInfo(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->bEndError:Z

    if-nez v0, :cond_c

    .line 767
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No error was occurred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 770
    :cond_c
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 771
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->errorMsg:Ljava/lang/String;

    .line 773
    :goto_11
    return-object v0

    .line 772
    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_18

    .line 773
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->redirectURL:Ljava/lang/String;

    goto :goto_11

    .line 775
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFailReason()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->bEndError:Z

    if-nez v0, :cond_c

    .line 744
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No error was occurred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_c
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->failReason:I

    return v0
.end method

.method public getNextRequest()Lcom/lge/lgdrm/DrmDldRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 803
    .local v0, "request":Lcom/lge/lgdrm/DrmDldRequest;
    iget-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_e

    .line 804
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 806
    :cond_e
    if-nez v0, :cond_18

    .line 807
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not exist next message"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 811
    :cond_18
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 812
    return-object v0
.end method

.method public getStoredFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->storedFilename:Ljava/lang/String;

    return-object v0
.end method

.method public isValidSession()Z
    .registers 2

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    return v0
.end method

.method public processEnd(ILandroid/content/ComponentName;)I
    .registers 11
    .param p1, "userResponse"    # I
    .param p2, "resultReceiver"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 662
    const/4 v0, 0x0

    .line 664
    .local v0, "intentReceiver":Ljava/lang/String;
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_12

    .line 665
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Init was not called successfully"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 667
    :cond_12
    if-lt p1, v4, :cond_17

    const/4 v2, 0x3

    if-le p1, v2, :cond_1f

    .line 668
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid userResponse"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 670
    :cond_1f
    iget-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v2, :cond_2d

    if-eq p1, v4, :cond_2d

    .line 672
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid userResponse. Only permit PROC_RESP_CANCEL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 674
    :cond_2d
    if-eqz p2, :cond_52

    .line 685
    iget-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    if-eqz v2, :cond_63

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    :cond_52
    :goto_52
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:J

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessEnd(JILjava/lang/String;)I

    move-result v1

    .line 699
    .local v1, "retVal":I
    iput-wide v6, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:J

    .line 700
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    .line 702
    const/4 v2, -0x1

    if-ne v1, v2, :cond_6b

    .line 703
    iput-boolean v4, p0, Lcom/lge/lgdrm/DrmObjectSession;->bEndError:Z

    .line 714
    :cond_62
    :goto_62
    return v1

    .line 688
    .end local v1    # "retVal":I
    :cond_63
    const-string v2, "DrmObjSes"

    const-string v3, "processEnd() : Invalid resultReceiver. Setup only based on processStatus()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 704
    .restart local v1    # "retVal":I
    :cond_6b
    const/4 v2, 0x4

    if-ne v1, v2, :cond_62

    .line 705
    iget v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_78

    iget v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_62

    .line 707
    :cond_78
    const/4 v1, 0x0

    .line 708
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmObjectSession;->startDldClient()I

    move-result v2

    if-eqz v2, :cond_62

    .line 709
    const/4 v1, -0x1

    goto :goto_62
.end method

.method public processInit(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12
    .param p1, "drmMimeType"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "attribute"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 435
    const/4 v6, 0x0

    .line 437
    .local v6, "nativeHnds":[J
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v0, :cond_e

    .line 438
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_e
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    iget v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessInit(ILjava/lang/String;Ljava/lang/String;II)[J

    move-result-object v6

    .line 442
    if-eqz v6, :cond_32

    aget-wide v0, v6, v7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    .line 447
    iput v7, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 450
    aget-wide v0, v6, v7

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:J

    .line 451
    const/4 v0, 0x1

    aget-wide v0, v6, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    move v0, v7

    .line 455
    :goto_31
    return v0

    :cond_32
    const/4 v0, -0x1

    goto :goto_31
.end method

.method public processStatus()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 566
    iget-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_e

    .line 567
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 569
    :cond_e
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1e

    .line 570
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Init was not called successfully"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    :cond_1e
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:J

    invoke-direct {p0, v2, v3}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessStatus(J)I

    move-result v0

    .line 574
    .local v0, "retVal":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    .line 575
    iput-boolean v6, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 578
    :cond_29
    if-eq v0, v7, :cond_2e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_31

    .line 579
    :cond_2e
    iput-boolean v7, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    .line 584
    :goto_30
    return v0

    .line 581
    :cond_31
    iput-boolean v6, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    goto :goto_30
.end method

.method public processUpdate([BI)I
    .registers 4
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/lge/lgdrm/DrmObjectSession;->processUpdate([BII)I

    move-result v0

    return v0
.end method

.method public processUpdate([BII)I
    .registers 11
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 511
    iget-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_c

    .line 512
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 514
    :cond_c
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1c

    .line 515
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Init was not called successfully"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :cond_1c
    if-nez p1, :cond_26

    .line 518
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter buf is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 520
    :cond_26
    if-ltz p3, :cond_2b

    array-length v1, p1

    if-le p3, v1, :cond_33

    .line 521
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 524
    :cond_33
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessUpdate(J[BII)I

    move-result v0

    .line 525
    .local v0, "retVal":I
    if-eqz v0, :cond_42

    .line 526
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 529
    :cond_42
    return v0
.end method

.method public setContentSize(J)I
    .registers 8
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 831
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v0, :cond_e

    .line 832
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_e
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 835
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Init was not called successfully"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_1c
    cmp-long v0, p1, v2

    if-gtz v0, :cond_28

    .line 838
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :cond_28
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2f

    .line 842
    const/4 v0, 0x0

    .line 846
    :goto_2e
    return v0

    :cond_2f
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/lge/lgdrm/DrmObjectSession;->nativeSetContentSize(JJ)I

    move-result v0

    goto :goto_2e
.end method
