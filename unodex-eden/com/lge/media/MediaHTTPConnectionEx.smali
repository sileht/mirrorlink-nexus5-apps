.class public Lcom/lge/media/MediaHTTPConnectionEx;
.super Landroid/media/MediaHTTPConnection;
.source "MediaHTTPConnectionEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT_MS:I = 0x7530

.field private static final HTTP_REQ_RANGE_DO_NOT_KNOW:I = 0x2

.field private static final HTTP_REQ_RANGE_FAIL:I = 0x3

.field private static final HTTP_REQ_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field private static final HTTP_REQ_RANGE_NOT_SUPPORT:I = 0x1

.field private static final HTTP_REQ_RANGE_SUPPORT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaHTTPConnectionEx"

.field private static final mLogEnable:Z


# instance fields
.field private endByte:J

.field private endTime:J

.field private mConnectTimeout:I

.field private mContentSize:J

.field private mExtendedBinderInternal:Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;

.field private mIsAcceptRangeHeader:Z

.field private mIsConnctionOK:Z

.field private mIsDisconnectAtPause:Z

.field private mIsHttpByteRangeSeek:Z

.field private mIsHttpDlnaPlayback:Z

.field private mIsHttpTimeSeek:Z

.field private mIsRangeRequestSupported:Z

.field private mNetworkException:Z

.field private mPackageName:Ljava/lang/String;

.field private mRangeRequested:Z

.field private mRangeRespEndPos:J

.field private mReadTimeout:I

.field private mResCode:I

.field private mResHeader:Ljava/lang/String;

.field private mResHeaderFields:Ljava/lang/StringBuilder;

.field private mServerSupportRangeRequest:Z

.field private mTimeSeekValue:J

.field private startByte:J

.field private startTime:J

.field private totalByte:J

.field private totalTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 84
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Lcom/lge/media/MediaHTTPConnectionEx;->mLogEnable:Z

    .line 86
    return-void

    .line 84
    :cond_e
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    .line 48
    iput-boolean v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpByteRangeSeek:Z

    .line 49
    iput-boolean v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpDlnaPlayback:Z

    .line 50
    iput-boolean v5, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsDisconnectAtPause:Z

    .line 51
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mTimeSeekValue:J

    .line 52
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mContentSize:J

    .line 53
    iput-object v4, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeader:Ljava/lang/String;

    .line 54
    iput-boolean v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mResCode:I

    .line 56
    iput v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnectTimeout:I

    .line 57
    iput v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mReadTimeout:I

    .line 58
    iput-object v4, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    .line 59
    iput-boolean v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mNetworkException:Z

    .line 62
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 63
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    .line 64
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    .line 65
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    .line 66
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    .line 67
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    .line 68
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRespEndPos:J

    .line 71
    iput-boolean v5, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mServerSupportRangeRequest:Z

    .line 72
    iput-boolean v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsRangeRequestSupported:Z

    .line 73
    iput-boolean v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsAcceptRangeHeader:Z

    .line 74
    iput-boolean v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsConnctionOK:Z

    .line 83
    iput-object v4, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mExtendedBinderInternal:Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;

    .line 85
    iput-object v4, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mPackageName:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    .line 91
    new-instance v0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;

    invoke-direct {v0, p0, v4}, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;-><init>(Lcom/lge/media/MediaHTTPConnectionEx;Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;)V

    iput-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mExtendedBinderInternal:Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;

    .line 92
    const-string v0, "MediaHTTPConnectionEx"

    const-string v1, "MediaHTTPConnectionEx contructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mPackageName:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_74

    .line 95
    const-string v0, "MediaHTTPConnectionEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current Package Name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_74
    return-void
.end method

.method static synthetic access$0(Lcom/lge/media/MediaHTTPConnectionEx;Z)V
    .registers 2

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    return-void
.end method

.method static synthetic access$1(Lcom/lge/media/MediaHTTPConnectionEx;Z)V
    .registers 2

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpByteRangeSeek:Z

    return-void
.end method

.method static synthetic access$10(Lcom/lge/media/MediaHTTPConnectionEx;I)V
    .registers 2

    .prologue
    .line 56
    iput p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnectTimeout:I

    return-void
.end method

.method static synthetic access$11(Lcom/lge/media/MediaHTTPConnectionEx;I)V
    .registers 2

    .prologue
    .line 57
    iput p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mReadTimeout:I

    return-void
.end method

.method static synthetic access$12(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/lang/StringBuilder;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lge/media/MediaHTTPConnectionEx;)J
    .registers 3

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    return-wide v0
.end method

.method static synthetic access$14(Lcom/lge/media/MediaHTTPConnectionEx;J)V
    .registers 4

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mContentSize:J

    return-void
.end method

.method static synthetic access$15()Z
    .registers 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/lge/media/MediaHTTPConnectionEx;->mLogEnable:Z

    return v0
.end method

.method static synthetic access$16(Lcom/lge/media/MediaHTTPConnectionEx;)Z
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsAcceptRangeHeader:Z

    return v0
.end method

.method static synthetic access$17(Lcom/lge/media/MediaHTTPConnectionEx;)Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsRangeRequestSupported:Z

    return v0
.end method

.method static synthetic access$18(Lcom/lge/media/MediaHTTPConnectionEx;)Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsConnctionOK:Z

    return v0
.end method

.method static synthetic access$19(Lcom/lge/media/MediaHTTPConnectionEx;)Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    return v0
.end method

.method static synthetic access$2(Lcom/lge/media/MediaHTTPConnectionEx;Z)V
    .registers 2

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsDisconnectAtPause:Z

    return-void
.end method

.method static synthetic access$20(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/net/URL;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$21(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/lge/media/MediaHTTPConnectionEx;)J
    .registers 3

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$23(Lcom/lge/media/MediaHTTPConnectionEx;)J
    .registers 3

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    return-wide v0
.end method

.method static synthetic access$24(Ljava/net/URL;)Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/media/MediaHTTPConnectionEx;->isLocalHost(Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$25(Lcom/lge/media/MediaHTTPConnectionEx;)Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mNetworkException:Z

    return v0
.end method

.method static synthetic access$3(Lcom/lge/media/MediaHTTPConnectionEx;Z)V
    .registers 2

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpDlnaPlayback:Z

    return-void
.end method

.method static synthetic access$4(Lcom/lge/media/MediaHTTPConnectionEx;J)V
    .registers 4

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mTimeSeekValue:J

    return-void
.end method

.method static synthetic access$5(Lcom/lge/media/MediaHTTPConnectionEx;)J
    .registers 3

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mTimeSeekValue:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeader:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lge/media/MediaHTTPConnectionEx;)Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mServerSupportRangeRequest:Z

    return v0
.end method

.method static synthetic access$8(Lcom/lge/media/MediaHTTPConnectionEx;)J
    .registers 3

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRespEndPos:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/lge/media/MediaHTTPConnectionEx;)I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mResCode:I

    return v0
.end method

.method private parseByteRangeHeader(Ljava/lang/String;)Z
    .registers 3
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 905
    const/4 v0, 0x1

    return v0
.end method

.method private parseContentFeaturesHeader(Ljava/lang/String;)Z
    .registers 14
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xa

    const/16 v10, 0xb

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 867
    if-nez p1, :cond_a

    .line 900
    :cond_9
    :goto_9
    return v5

    .line 870
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "dlna.org_op"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 871
    .local v4, "string_position":I
    if-eq v4, v9, :cond_9

    .line 874
    const/16 v7, 0x3d

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 875
    .local v0, "equal_position":I
    if-eq v0, v9, :cond_9

    .line 878
    const/16 v7, 0x3b

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 879
    .local v3, "seco_position":I
    if-eq v3, v9, :cond_9

    .line 882
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, "op_value":Ljava/lang/String;
    const-string v7, "MediaHTTPConnectionEx"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[parseContentFeaturesHeader] op_value:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :try_start_48
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 887
    .local v1, "opValue":I
    if-eq v1, v6, :cond_52

    if-eq v1, v10, :cond_52

    if-ne v1, v11, :cond_9

    .line 888
    :cond_52
    iget-boolean v7, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpByteRangeSeek:Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_54} :catch_62

    if-nez v7, :cond_5c

    .line 889
    if-eq v1, v6, :cond_5a

    if-ne v1, v10, :cond_9

    :cond_5a
    move v5, v6

    .line 890
    goto :goto_9

    .line 893
    :cond_5c
    if-eq v1, v11, :cond_60

    if-ne v1, v10, :cond_9

    :cond_60
    move v5, v6

    .line 894
    goto :goto_9

    .line 900
    .end local v1    # "opValue":I
    :catch_62
    move-exception v6

    goto :goto_9
.end method

.method private parseContentLengthHeader()J
    .registers 6

    .prologue
    .line 909
    const-wide/16 v2, -0x1

    .line 910
    .local v2, "total":J
    iget-object v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_14

    .line 911
    iget-object v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Length"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 912
    .local v0, "contentLength":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 914
    :try_start_10
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_13} :catch_15

    move-result-wide v2

    .line 920
    .end local v0    # "contentLength":Ljava/lang/String;
    :cond_14
    :goto_14
    return-wide v2

    .line 916
    .restart local v0    # "contentLength":Ljava/lang/String;
    :catch_15
    move-exception v1

    const-wide/16 v2, -0x1

    goto :goto_14
.end method

.method private parseTimeSeekRangeHeader(Ljava/lang/String;)Z
    .registers 38
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 572
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] header:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 574
    if-nez p1, :cond_43

    .line 575
    const/16 v31, 0x0

    .line 863
    :goto_42
    return v31

    .line 577
    :cond_43
    const/16 v31, 0x3d

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 578
    .local v9, "equal_position":I
    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v9, v0, :cond_56

    .line 579
    const/16 v31, 0x0

    goto :goto_42

    .line 581
    :cond_56
    const-string v31, "npt"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    .line 582
    .local v25, "npt_position":I
    const/16 v31, -0x1

    move/from16 v0, v25

    move/from16 v1, v31

    if-ne v0, v1, :cond_6b

    .line 583
    const/16 v31, 0x0

    goto :goto_42

    .line 585
    :cond_6b
    const/16 v31, 0x2f

    add-int/lit8 v32, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v28

    .line 586
    .local v28, "slash_position":I
    const/16 v31, -0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_84

    .line 587
    const/16 v31, 0x0

    goto :goto_42

    .line 591
    :cond_84
    add-int/lit8 v31, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 593
    .local v26, "npt_range_resp_spec":Ljava/lang/String;
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] npt_range_resp_spec:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/16 v31, 0x2d

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    .line 596
    .local v21, "minus_position":I
    const/16 v31, -0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-eq v0, v1, :cond_7a5

    .line 598
    const/16 v31, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 599
    .local v13, "first_npt_pos":Ljava/lang/String;
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] first_npt_pos:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/16 v31, 0x3a

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 601
    .local v7, "colon_position":I
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, " [parseTimeSeekRangeHeader] colon_position:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v7, v0, :cond_45f

    .line 606
    const/16 v31, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 608
    .local v11, "first_npt_hh_pos":Ljava/lang/String;
    :try_start_10c
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10f
    .catch Ljava/lang/NumberFormatException; {:try_start_10c .. :try_end_10f} :catch_3b4

    move-result v15

    .line 614
    .local v15, "hourTime":I
    const/16 v31, 0x3a

    add-int/lit8 v32, v7, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 615
    .local v8, "colon_position1":I
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v8, v0, :cond_435

    .line 616
    add-int/lit8 v31, v7, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 618
    .local v12, "first_npt_mm_pos":Ljava/lang/String;
    :try_start_12e
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_131
    .catch Ljava/lang/NumberFormatException; {:try_start_12e .. :try_end_131} :catch_3df

    move-result v22

    .line 623
    .local v22, "mmTime":I
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] mmTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    add-int/lit8 v31, v8, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 627
    .local v14, "first_npt_sec_pos":Ljava/lang/String;
    :try_start_156
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_159
    .catch Ljava/lang/NumberFormatException; {:try_start_156 .. :try_end_159} :catch_40a

    move-result v27

    .line 632
    .local v27, "secTime":F
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] secTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    mul-int/lit16 v0, v15, 0xe10

    move/from16 v31, v0

    mul-int/lit8 v32, v22, 0x3c

    add-int v31, v31, v32

    const v32, 0xf4240

    mul-int v31, v31, v32

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    const v31, 0x49742400    # 1000000.0f

    mul-float v31, v31, v27

    move/from16 v0, v31

    float-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 634
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] startTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .end local v8    # "colon_position1":I
    .end local v11    # "first_npt_hh_pos":Ljava/lang/String;
    .end local v12    # "first_npt_mm_pos":Ljava/lang/String;
    .end local v14    # "first_npt_sec_pos":Ljava/lang/String;
    .end local v15    # "hourTime":I
    .end local v22    # "mmTime":I
    .end local v27    # "secTime":F
    :goto_1b4
    add-int/lit8 v31, v21, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 653
    .local v19, "last_npt_pos":Ljava/lang/String;
    const/16 v31, 0x3a

    add-int/lit8 v32, v21, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 654
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v7, v0, :cond_569

    .line 658
    add-int/lit8 v31, v21, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 660
    .local v17, "last_npt_hh_pos":Ljava/lang/String;
    :try_start_1dc
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1df
    .catch Ljava/lang/NumberFormatException; {:try_start_1dc .. :try_end_1df} :catch_4be

    move-result v15

    .line 665
    .restart local v15    # "hourTime":I
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] hourTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/16 v31, 0x3a

    add-int/lit8 v32, v7, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 667
    .restart local v8    # "colon_position1":I
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v8, v0, :cond_53f

    .line 668
    add-int/lit8 v31, v7, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 670
    .local v18, "last_npt_mm_pos":Ljava/lang/String;
    :try_start_214
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_217
    .catch Ljava/lang/NumberFormatException; {:try_start_214 .. :try_end_217} :catch_4e9

    move-result v22

    .line 675
    .restart local v22    # "mmTime":I
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] mmTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    add-int/lit8 v31, v8, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 679
    .local v20, "last_npt_sec_pos":Ljava/lang/String;
    :try_start_23a
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_23d
    .catch Ljava/lang/NumberFormatException; {:try_start_23a .. :try_end_23d} :catch_514

    move-result v27

    .line 684
    .restart local v27    # "secTime":F
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] secTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    mul-int/lit16 v0, v15, 0xe10

    move/from16 v31, v0

    mul-int/lit8 v32, v22, 0x3c

    add-int v31, v31, v32

    const v32, 0xf4240

    mul-int v31, v31, v32

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    const v31, 0x49742400    # 1000000.0f

    mul-float v31, v31, v27

    move/from16 v0, v31

    float-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    .line 686
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] endTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .end local v8    # "colon_position1":I
    .end local v15    # "hourTime":I
    .end local v17    # "last_npt_hh_pos":Ljava/lang/String;
    .end local v18    # "last_npt_mm_pos":Ljava/lang/String;
    .end local v20    # "last_npt_sec_pos":Ljava/lang/String;
    .end local v22    # "mmTime":I
    .end local v27    # "secTime":F
    :goto_298
    const/16 v31, 0x20

    add-int/lit8 v32, v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v29

    .line 705
    .local v29, "space_position":I
    const/16 v24, 0x0

    .line 706
    .local v24, "npt_instant_resp_spec":Ljava/lang/String;
    const/16 v31, -0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_5b5

    .line 707
    add-int/lit8 v31, v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 710
    :goto_2ba
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] npt_instant_resp_spec:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/16 v31, 0x2a

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_5c3

    .line 713
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    .line 775
    :goto_2ec
    const-string v31, "bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 776
    .local v6, "bytes_position":I
    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v6, v0, :cond_7a9

    .line 777
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] startTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] endTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] totalTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] startByte:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] endByte:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] totalByte:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/16 v31, 0x1

    goto/16 :goto_42

    .line 610
    .end local v6    # "bytes_position":I
    .end local v19    # "last_npt_pos":Ljava/lang/String;
    .end local v24    # "npt_instant_resp_spec":Ljava/lang/String;
    .end local v29    # "space_position":I
    .restart local v11    # "first_npt_hh_pos":Ljava/lang/String;
    :catch_3b4
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 611
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 620
    .restart local v8    # "colon_position1":I
    .restart local v12    # "first_npt_mm_pos":Ljava/lang/String;
    .restart local v15    # "hourTime":I
    :catch_3df
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 621
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 629
    .restart local v14    # "first_npt_sec_pos":Ljava/lang/String;
    .restart local v22    # "mmTime":I
    :catch_40a
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 630
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 636
    .end local v12    # "first_npt_mm_pos":Ljava/lang/String;
    .end local v14    # "first_npt_sec_pos":Ljava/lang/String;
    .end local v22    # "mmTime":I
    :cond_435
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 637
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 643
    .end local v8    # "colon_position1":I
    .end local v11    # "first_npt_hh_pos":Ljava/lang/String;
    .end local v15    # "hourTime":I
    :cond_45f
    :try_start_45f
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_462
    .catch Ljava/lang/NumberFormatException; {:try_start_45f .. :try_end_462} :catch_493

    move-result v30

    .line 648
    .local v30, "time":F
    const v31, 0x49742400    # 1000000.0f

    mul-float v31, v31, v30

    move/from16 v0, v31

    float-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 649
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] startTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b4

    .line 645
    .end local v30    # "time":F
    :catch_493
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 646
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 662
    .restart local v17    # "last_npt_hh_pos":Ljava/lang/String;
    .restart local v19    # "last_npt_pos":Ljava/lang/String;
    :catch_4be
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 663
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 672
    .restart local v8    # "colon_position1":I
    .restart local v15    # "hourTime":I
    .restart local v18    # "last_npt_mm_pos":Ljava/lang/String;
    :catch_4e9
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 673
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 681
    .restart local v20    # "last_npt_sec_pos":Ljava/lang/String;
    .restart local v22    # "mmTime":I
    :catch_514
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 682
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 688
    .end local v18    # "last_npt_mm_pos":Ljava/lang/String;
    .end local v20    # "last_npt_sec_pos":Ljava/lang/String;
    .end local v22    # "mmTime":I
    :cond_53f
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 689
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 692
    .end local v8    # "colon_position1":I
    .end local v15    # "hourTime":I
    .end local v17    # "last_npt_hh_pos":Ljava/lang/String;
    :cond_569
    const/high16 v30, -0x40800000    # -1.0f

    .line 694
    .restart local v30    # "time":F
    :try_start_56b
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_56e
    .catch Ljava/lang/NumberFormatException; {:try_start_56b .. :try_end_56e} :catch_5ab

    move-result v30

    .line 698
    :goto_56f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-ltz v31, :cond_58b

    .line 699
    const v31, 0x49742400    # 1000000.0f

    mul-float v31, v31, v30

    move/from16 v0, v31

    float-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    .line 700
    :cond_58b
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] endTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_298

    .line 696
    :catch_5ab
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    goto :goto_56f

    .line 709
    .end local v30    # "time":F
    .restart local v24    # "npt_instant_resp_spec":Ljava/lang/String;
    .restart local v29    # "space_position":I
    :cond_5b5
    add-int/lit8 v31, v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_2ba

    .line 715
    :cond_5c3
    const/16 v31, 0x3a

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 716
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v7, v0, :cond_746

    .line 720
    const/16 v31, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 723
    .local v23, "npt_hh_pos":Ljava/lang/String;
    :try_start_5dd
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5e0
    .catch Ljava/lang/NumberFormatException; {:try_start_5dd .. :try_end_5e0} :catch_69b

    move-result v15

    .line 728
    .restart local v15    # "hourTime":I
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] hourTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/16 v31, 0x3a

    add-int/lit8 v32, v7, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 730
    .restart local v8    # "colon_position1":I
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v8, v0, :cond_71c

    .line 731
    add-int/lit8 v31, v7, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 733
    .restart local v18    # "last_npt_mm_pos":Ljava/lang/String;
    :try_start_615
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_618
    .catch Ljava/lang/NumberFormatException; {:try_start_615 .. :try_end_618} :catch_6c6

    move-result v22

    .line 738
    .restart local v22    # "mmTime":I
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] mmTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    add-int/lit8 v31, v8, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 742
    .restart local v20    # "last_npt_sec_pos":Ljava/lang/String;
    :try_start_63b
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_63e
    .catch Ljava/lang/NumberFormatException; {:try_start_63b .. :try_end_63e} :catch_6f1

    move-result v27

    .line 747
    .restart local v27    # "secTime":F
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] secTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    mul-int/lit16 v0, v15, 0xe10

    move/from16 v31, v0

    mul-int/lit8 v32, v22, 0x3c

    add-int v31, v31, v32

    const v32, 0xf4240

    mul-int v31, v31, v32

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    const v31, 0x49742400    # 1000000.0f

    mul-float v31, v31, v27

    move/from16 v0, v31

    float-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    .line 749
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] endTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ec

    .line 725
    .end local v8    # "colon_position1":I
    .end local v15    # "hourTime":I
    .end local v18    # "last_npt_mm_pos":Ljava/lang/String;
    .end local v20    # "last_npt_sec_pos":Ljava/lang/String;
    .end local v22    # "mmTime":I
    .end local v27    # "secTime":F
    :catch_69b
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 726
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 735
    .restart local v8    # "colon_position1":I
    .restart local v15    # "hourTime":I
    .restart local v18    # "last_npt_mm_pos":Ljava/lang/String;
    :catch_6c6
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 736
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 744
    .restart local v20    # "last_npt_sec_pos":Ljava/lang/String;
    .restart local v22    # "mmTime":I
    :catch_6f1
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 745
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 752
    .end local v18    # "last_npt_mm_pos":Ljava/lang/String;
    .end local v20    # "last_npt_sec_pos":Ljava/lang/String;
    .end local v22    # "mmTime":I
    :cond_71c
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 753
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 760
    .end local v8    # "colon_position1":I
    .end local v15    # "hourTime":I
    .end local v23    # "npt_hh_pos":Ljava/lang/String;
    :cond_746
    :try_start_746
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_749
    .catch Ljava/lang/NumberFormatException; {:try_start_746 .. :try_end_749} :catch_77a

    move-result v30

    .line 765
    .restart local v30    # "time":F
    const v31, 0x49742400    # 1000000.0f

    mul-float v31, v31, v30

    move/from16 v0, v31

    float-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    .line 766
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] endTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ec

    .line 762
    .end local v30    # "time":F
    :catch_77a
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 763
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 771
    .end local v7    # "colon_position":I
    .end local v13    # "first_npt_pos":Ljava/lang/String;
    .end local v19    # "last_npt_pos":Ljava/lang/String;
    .end local v24    # "npt_instant_resp_spec":Ljava/lang/String;
    .end local v29    # "space_position":I
    :cond_7a5
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 786
    .restart local v6    # "bytes_position":I
    .restart local v7    # "colon_position":I
    .restart local v13    # "first_npt_pos":Ljava/lang/String;
    .restart local v19    # "last_npt_pos":Ljava/lang/String;
    .restart local v24    # "npt_instant_resp_spec":Ljava/lang/String;
    .restart local v29    # "space_position":I
    :cond_7a9
    const/16 v31, 0x3d

    add-int/lit8 v32, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 787
    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v9, v0, :cond_7c1

    .line 788
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 790
    :cond_7c1
    const/16 v31, 0x2f

    add-int/lit8 v32, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v28

    .line 791
    const/16 v31, -0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_7db

    .line 792
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 796
    :cond_7db
    add-int/lit8 v31, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 797
    .local v5, "byte_range_resp_spec":Ljava/lang/String;
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] byte_range_resp_spec:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/16 v31, 0x2d

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    .line 800
    const/16 v31, -0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-eq v0, v1, :cond_8a5

    .line 802
    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 805
    .local v10, "first_byte_pos":Ljava/lang/String;
    :try_start_817
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J
    :try_end_821
    .catch Ljava/lang/NumberFormatException; {:try_start_817 .. :try_end_821} :catch_873

    .line 812
    add-int/lit8 v31, v21, 0x1

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 815
    .local v16, "last_byte_pos":Ljava/lang/String;
    :try_start_829
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J
    :try_end_833
    .catch Ljava/lang/NumberFormatException; {:try_start_829 .. :try_end_833} :catch_88c

    .line 821
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-ltz v31, :cond_85b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-ltz v31, :cond_85b

    .line 822
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v34, v0

    cmp-long v31, v32, v34

    if-lez v31, :cond_8a5

    .line 823
    :cond_85b
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    .line 824
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 807
    .end local v16    # "last_byte_pos":Ljava/lang/String;
    :catch_873
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    .line 808
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 817
    .restart local v16    # "last_byte_pos":Ljava/lang/String;
    :catch_88c
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    .line 818
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 830
    .end local v10    # "first_byte_pos":Ljava/lang/String;
    .end local v16    # "last_byte_pos":Ljava/lang/String;
    :cond_8a5
    add-int/lit8 v31, v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 832
    .local v4, "byte_instant_resp_spec":Ljava/lang/String;
    const/16 v31, 0x2a

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_97f

    .line 833
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    .line 834
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] startTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] endTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] totalTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] startByte:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] endByte:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] totalByte:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/16 v31, 0x1

    goto/16 :goto_42

    .line 843
    :cond_97f
    :try_start_97f
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J
    :try_end_989
    .catch Ljava/lang/NumberFormatException; {:try_start_97f .. :try_end_989} :catch_9d9

    .line 852
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-ltz v31, :cond_9c1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-ltz v31, :cond_9c1

    .line 853
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-ltz v31, :cond_9c1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1

    sub-long v32, v32, v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v34, v0

    cmp-long v31, v32, v34

    if-gez v31, :cond_9f2

    .line 854
    :cond_9c1
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    .line 855
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 845
    :catch_9d9
    move-exception v31

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    .line 846
    const/16 v31, 0x0

    goto/16 :goto_42

    .line 857
    :cond_9f2
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] startTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] endTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] totalTime:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] startByte:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] endByte:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string v31, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "[parseTimeSeekRangeHeader] totalByte:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/16 v31, 0x1

    goto/16 :goto_42
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v0, "MediaHTTPConnectionEx"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0, p1, p2}, Landroid/media/MediaHTTPConnection;->connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()V
    .registers 3

    .prologue
    .line 126
    const-string v0, "MediaHTTPConnectionEx"

    const-string v1, "disconnecting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-super {p0}, Landroid/media/MediaHTTPConnection;->disconnect()V

    .line 128
    const-string v0, "MediaHTTPConnectionEx"

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public getMIMEType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 145
    const-string v0, "MediaHTTPConnectionEx"

    const-string v1, "getMIMEType"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-super {p0}, Landroid/media/MediaHTTPConnection;->getMIMEType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 3

    .prologue
    .line 151
    const-string v0, "MediaHTTPConnectionEx"

    const-string v1, "getUri"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-super {p0}, Landroid/media/MediaHTTPConnection;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, "ret":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "originatedBinderDescName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 107
    if-eqz v0, :cond_21

    .line 108
    iget-object v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mExtendedBinderInternal:Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;

    invoke-virtual {v2}, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 110
    iget-object v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mExtendedBinderInternal:Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 115
    :goto_20
    return v1

    .line 113
    :cond_21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/MediaHTTPConnection;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_20
.end method

.method public readAt(JI)I
    .registers 9
    .param p1, "offset"    # J
    .param p3, "size"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 134
    iget-boolean v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    if-eqz v0, :cond_e

    .line 135
    cmp-long v0, p1, v2

    if-nez v0, :cond_e

    .line 136
    const-wide/16 p1, 0x0

    .line 137
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    .line 140
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/media/MediaHTTPConnection;->readAt(JI)I

    move-result v0

    return v0
.end method

.method protected seekTo(J)V
    .registers 52
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "[seekToEx] offset:"

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "/mCurrentOffset:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/lge/media/MediaHTTPConnectionEx;->teardownConnection()V

    .line 184
    const/16 v29, 0x0

    .line 185
    .local v29, "redirectCount":I
    const/4 v6, 0x0

    .line 187
    .local v6, "authenticateRetry":Z
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;

    move-object/from16 v38, v0

    .line 189
    .local v38, "url":Ljava/net/URL;
    const/16 v33, 0x0

    .line 190
    .local v33, "setRangeLastbytePos":Z
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    .line 193
    invoke-static/range {v38 .. v38}, Lcom/lge/media/MediaHTTPConnectionEx;->isLocalHost(Ljava/net/URL;)Z

    move-result v24

    .line 195
    .local v24, "noProxy":Z
    :cond_42
    :goto_42
    const/16 v40, -0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mResCode:I

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 197
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mNetworkException:Z

    .line 198
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "proxy "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mProxyIP:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " port "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mProxyPort:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mProxyPort:I

    move/from16 v40, v0

    if-lez v40, :cond_321

    .line 200
    new-instance v34, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mProxyIP:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mProxyPort:I

    move/from16 v41, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 201
    .local v34, "socketAddr":Ljava/net/SocketAddress;
    new-instance v27, Ljava/net/Proxy;

    sget-object v40, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 202
    .local v27, "proxy":Ljava/net/Proxy;
    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v40

    check-cast v40, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    .line 203
    const-string v40, "MediaHTTPConnectionEx"

    const-string v41, "connection initialized with proxy"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v27    # "proxy":Ljava/net/Proxy;
    .end local v34    # "socketAddr":Ljava/net/SocketAddress;
    :goto_ca
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnectTimeout:I

    move/from16 v40, v0

    if-ltz v40, :cond_345

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnectTimeout:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 218
    :goto_e1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mReadTimeout:I

    move/from16 v40, v0

    if-ltz v40, :cond_f8

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mReadTimeout:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 223
    :cond_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mAllowCrossDomainRedirect:Z

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v40, v0

    if-eqz v40, :cond_123

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 227
    .local v18, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_11d
    :goto_11d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-nez v40, :cond_352

    .line 251
    .end local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_123
    const-wide/16 v40, 0x0

    cmp-long v40, p1, v40

    if-gtz v40, :cond_131

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    move/from16 v40, v0

    if-eqz v40, :cond_1d1

    .line 252
    :cond_131
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    move/from16 v40, v0

    if-nez v40, :cond_454

    .line 253
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-lez v40, :cond_40e

    if-eqz v33, :cond_40e

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    const-string v41, "Range"

    new-instance v42, Ljava/lang/StringBuilder;

    const-string v43, "bytes="

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "-"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x1

    sub-long v44, v44, v46

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x1

    sub-long v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRespEndPos:J

    .line 259
    :goto_18d
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    .line 260
    sget-boolean v40, Lcom/lge/media/MediaHTTPConnectionEx;->mLogEnable:Z

    if-eqz v40, :cond_1d1

    .line 261
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-lez v40, :cond_434

    .line 262
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "Range: bytes="

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "-"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x1

    sub-long v42, v42, v44

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1d1
    :goto_1d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    const-string v41, "Accept"

    const-string v42, "audio/mp4, video/mp4, video/3gpp2, video/3gpp, audio/amr, audio/aac, audio/aacPlus, audio/mpeg, audio/aiff, audio/flac, */*"

    invoke-virtual/range {v40 .. v42}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v30

    .line 285
    .local v30, "response":I
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mResCode:I

    .line 286
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "[response code] STATUS CODE:"

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v17

    .line 289
    .local v17, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_218
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-nez v40, :cond_4d5

    .line 300
    const/16 v40, 0x1a0

    move/from16 v0, v30

    move/from16 v1, v40

    if-ne v0, v1, :cond_56b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    move/from16 v40, v0

    if-eqz v40, :cond_56b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mServerSupportRangeRequest:Z

    move/from16 v40, v0

    if-eqz v40, :cond_56b

    .line 301
    sget-boolean v40, Lcom/lge/media/MediaHTTPConnectionEx;->mLogEnable:Z

    if-eqz v40, :cond_241

    .line 302
    const-string v40, "MediaHTTPConnectionEx"

    const-string v41, "We requested a content range, but server didn\'t support that. (responded with 416)"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_241
    if-nez v33, :cond_55f

    .line 305
    const/16 v33, 0x1

    .line 311
    :goto_245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v40, v0

    if-eqz v40, :cond_258

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v40, v0

    const-string v41, "Range"

    invoke-interface/range {v40 .. v41}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_258
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z
    :try_end_260
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_260} :catch_262

    goto/16 :goto_42

    .line 541
    .end local v17    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v24    # "noProxy":Z
    .end local v30    # "response":I
    .end local v33    # "setRangeLastbytePos":Z
    .end local v38    # "url":Ljava/net/URL;
    :catch_262
    move-exception v12

    .line 542
    .local v12, "e":Ljava/io/IOException;
    new-instance v26, Ljava/lang/Throwable;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Throwable;-><init>()V

    .line 543
    .local v26, "printException":Ljava/lang/Throwable;
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "MediaHTTPConnectionEx "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 545
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 546
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 547
    const-string v42, "exception toString: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 543
    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v40

    const-string v41, "ConnectException"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_2f8

    .line 550
    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v40

    const-string v41, "SocketException"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_2f8

    .line 551
    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v40

    const-string v41, "SocketTimeoutException"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_2f8

    .line 552
    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v40

    const-string v41, "UnknownHostException"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_300

    .line 553
    :cond_2f8
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mNetworkException:Z

    .line 556
    :cond_300
    const-wide/16 v40, -0x1

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    .line 557
    const/16 v40, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mInputStream:Ljava/io/InputStream;

    .line 558
    const/16 v40, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    .line 559
    const-wide/16 v40, -0x1

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    .line 561
    throw v12

    .line 205
    .end local v12    # "e":Ljava/io/IOException;
    .end local v26    # "printException":Ljava/lang/Throwable;
    .restart local v24    # "noProxy":Z
    .restart local v33    # "setRangeLastbytePos":Z
    .restart local v38    # "url":Ljava/net/URL;
    :cond_321
    if-eqz v24, :cond_337

    .line 206
    :try_start_323
    sget-object v40, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v40

    check-cast v40, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    goto/16 :goto_ca

    .line 208
    :cond_337
    invoke-virtual/range {v38 .. v38}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v40

    check-cast v40, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    goto/16 :goto_ca

    .line 215
    :cond_345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    const/16 v41, 0x7530

    invoke-virtual/range {v40 .. v41}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    goto/16 :goto_e1

    .line 228
    .restart local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_352
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 229
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    const-string v41, "Range"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3af

    .line 230
    const-wide/16 v40, 0x0

    cmp-long v40, p1, v40

    if-nez v40, :cond_38c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    move/from16 v40, v0

    if-nez v40, :cond_38c

    .line 231
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpDlnaPlayback:Z

    move/from16 v40, v0

    if-eqz v40, :cond_39c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpByteRangeSeek:Z

    move/from16 v40, v0

    if-nez v40, :cond_39c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    move/from16 v40, v0

    if-nez v40, :cond_39c

    .line 232
    :cond_38c
    sget-boolean v40, Lcom/lge/media/MediaHTTPConnectionEx;->mLogEnable:Z

    if-eqz v40, :cond_397

    .line 233
    const-string v40, "MediaHTTPConnectionEx"

    const-string v41, "[seekToEx] remove Range: bytes= 0-"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_397
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_11d

    .line 238
    :cond_39c
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    .line 239
    sget-boolean v40, Lcom/lge/media/MediaHTTPConnectionEx;->mLogEnable:Z

    if-eqz v40, :cond_3af

    .line 240
    const-string v40, "MediaHTTPConnectionEx"

    const-string v41, "[seekToEx] include Range: bytes= 0-"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_3af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v42, v0

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-boolean v40, Lcom/lge/media/MediaHTTPConnectionEx;->mLogEnable:Z

    if-eqz v40, :cond_11d

    .line 246
    const-string v41, "MediaHTTPConnectionEx"

    new-instance v42, Ljava/lang/StringBuilder;

    const-string v40, "[seekToEx] HTTP header =>"

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, ":"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11d

    .line 257
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_40e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    const-string v41, "Range"

    new-instance v42, Ljava/lang/StringBuilder;

    const-string v43, "bytes="

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "-"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18d

    .line 264
    :cond_434
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "Range: bytes="

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "-"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d1

    .line 269
    :cond_454
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTimeSeekValue:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-gez v40, :cond_469

    .line 270
    const-string v40, "MediaHTTPConnectionEx"

    const-string v41, "[seekToEx] No mTimeSeekValue"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d1

    .line 273
    :cond_469
    new-instance v11, Ljava/text/DecimalFormat;

    const-string v40, "#.###"

    move-object/from16 v0, v40

    invoke-direct {v11, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 274
    .local v11, "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTimeSeekValue:J

    move-wide/from16 v40, v0

    const-wide/32 v42, 0xf4240

    div-long v40, v40, v42

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v25, v0

    .line 275
    .local v25, "npt":F
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v11, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    const-string v41, "TimeSeekRange.dlna.org"

    new-instance v42, Ljava/lang/StringBuilder;

    const-string v43, "npt="

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "-"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "[seekToEx] TimeSeekRange.dlna.org: npt="

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "-"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d1

    .line 289
    .end local v11    # "df":Ljava/text/DecimalFormat;
    .end local v25    # "npt":F
    .restart local v17    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v30    # "response":I
    :cond_4d5
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 290
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-boolean v40, Lcom/lge/media/MediaHTTPConnectionEx;->mLogEnable:Z

    if-eqz v40, :cond_51b

    .line 291
    const-string v42, "MediaHTTPConnectionEx"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v40, "[response header] "

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v43, ": "

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v43

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_51b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    move-object/from16 v42, v0

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    move-object/from16 v40, v0

    const-string v42, ": "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    move-object/from16 v40, v0

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    move-object/from16 v40, v0

    const-string v42, "\r\n"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_218

    .line 307
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_55f
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mServerSupportRangeRequest:Z

    .line 308
    const/16 v33, 0x0

    goto/16 :goto_245

    .line 316
    :cond_56b
    if-eqz v33, :cond_5cb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    move/from16 v40, v0

    if-nez v40, :cond_5cb

    invoke-direct/range {p0 .. p0}, Lcom/lge/media/MediaHTTPConnectionEx;->parseContentLengthHeader()J

    move-result-wide v40

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-lez v40, :cond_5cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v40, v0

    if-eqz v40, :cond_5cb

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v40, v0

    const-string v41, "Range"

    new-instance v42, Ljava/lang/StringBuilder;

    const-string v43, "bytes="

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "-"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-direct/range {p0 .. p0}, Lcom/lge/media/MediaHTTPConnectionEx;->parseContentLengthHeader()J

    move-result-wide v44

    const-wide/16 v46, 0x1

    sub-long v44, v44, v46

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v40 .. v42}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-direct/range {p0 .. p0}, Lcom/lge/media/MediaHTTPConnectionEx;->parseContentLengthHeader()J

    move-result-wide v40

    const-wide/16 v42, 0x1

    sub-long v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRespEndPos:J

    goto/16 :goto_42

    .line 322
    :cond_5cb
    const/16 v40, 0x191

    move/from16 v0, v30

    move/from16 v1, v40

    if-ne v0, v1, :cond_652

    if-nez v6, :cond_652

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v40, v0

    if-eqz v40, :cond_652

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    const-string v41, "WWW-Authenticate"

    invoke-virtual/range {v40 .. v41}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, "authenticate":Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v39

    .line 325
    .local v39, "userInfo":Ljava/lang/String;
    if-eqz v5, :cond_652

    if-eqz v39, :cond_652

    .line 326
    const-string v40, " "

    const-string v41, ""

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 327
    const/16 v40, 0x0

    const/16 v41, 0x5

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 328
    .local v7, "basicAuth":Ljava/lang/String;
    if-eqz v7, :cond_615

    const-string v40, "Basic"

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_621

    :cond_615
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v40

    const-string v41, ",basic"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_652

    .line 329
    :cond_621
    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 330
    .local v8, "bytes":[B
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-static {v8, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13

    .line 331
    .local v13, "encoded":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "Basic "

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 332
    .local v16, "headerValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v40, v0

    const-string v41, "Authorization"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const/4 v6, 0x1

    .line 334
    goto/16 :goto_42

    .line 340
    .end local v5    # "authenticate":Ljava/lang/String;
    .end local v7    # "basicAuth":Ljava/lang/String;
    .end local v8    # "bytes":[B
    .end local v13    # "encoded":Ljava/lang/String;
    .end local v16    # "headerValue":Ljava/lang/String;
    .end local v39    # "userInfo":Ljava/lang/String;
    :cond_652
    const/16 v40, 0x12c

    move/from16 v0, v30

    move/from16 v1, v40

    if-eq v0, v1, :cond_760

    .line 341
    const/16 v40, 0x12d

    move/from16 v0, v30

    move/from16 v1, v40

    if-eq v0, v1, :cond_760

    .line 342
    const/16 v40, 0x12e

    move/from16 v0, v30

    move/from16 v1, v40

    if-eq v0, v1, :cond_760

    .line 343
    const/16 v40, 0x12f

    move/from16 v0, v30

    move/from16 v1, v40

    if-eq v0, v1, :cond_760

    .line 344
    const/16 v40, 0x133

    move/from16 v0, v30

    move/from16 v1, v40

    if-eq v0, v1, :cond_760

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeader:Ljava/lang/String;

    .line 346
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "[ResponseMessage]:"

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeader:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mAllowCrossDomainRedirect:Z

    move/from16 v40, v0

    if-eqz v40, :cond_6bc

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;

    .line 393
    :cond_6bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v40, v0

    if-eqz v40, :cond_6d8

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 395
    .restart local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_6d2
    :goto_6d2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-nez v40, :cond_854

    .line 420
    .end local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_6d8
    const/16 v40, 0xce

    move/from16 v0, v30

    move/from16 v1, v40

    if-ne v0, v1, :cond_980

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    const-string v41, "Content-Range"

    invoke-virtual/range {v40 .. v41}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 427
    .local v10, "contentRange":Ljava/lang/String;
    const-wide/16 v40, -0x1

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    .line 428
    if-eqz v10, :cond_976

    .line 429
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    move/from16 v40, v0

    if-eqz v40, :cond_706

    .line 430
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mIsRangeRequestSupported:Z

    .line 436
    :cond_706
    const/16 v40, 0x2f

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    .line 437
    .local v21, "lastSlashPos":I
    if-ltz v21, :cond_73c

    .line 438
    add-int/lit8 v40, v21, 0x1

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_717
    .catch Ljava/io/IOException; {:try_start_323 .. :try_end_717} :catch_262

    move-result-object v36

    .line 440
    .local v36, "total":Ljava/lang/String;
    :try_start_718
    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    .line 441
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "[206] mTotalSize"

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73c
    .catch Ljava/lang/NumberFormatException; {:try_start_718 .. :try_end_73c} :catch_90e
    .catch Ljava/io/IOException; {:try_start_718 .. :try_end_73c} :catch_262

    .line 454
    .end local v21    # "lastSlashPos":I
    .end local v36    # "total":Ljava/lang/String;
    :cond_73c
    :goto_73c
    const/16 v40, 0x1

    :try_start_73e
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mIsConnctionOK:Z

    .line 485
    .end local v10    # "contentRange":Ljava/lang/String;
    :cond_744
    :goto_744
    const-wide/16 v40, 0x0

    cmp-long v40, p1, v40

    if-lez v40, :cond_a32

    const/16 v40, 0xce

    move/from16 v0, v30

    move/from16 v1, v40

    if-eq v0, v1, :cond_a32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsRangeRequestSupported:Z

    move/from16 v40, v0

    if-nez v40, :cond_a32

    .line 488
    new-instance v40, Ljava/net/ProtocolException;

    invoke-direct/range {v40 .. v40}, Ljava/net/ProtocolException;-><init>()V

    throw v40

    .line 352
    :cond_760
    add-int/lit8 v29, v29, 0x1

    const/16 v40, 0x14

    move/from16 v0, v29

    move/from16 v1, v40

    if-le v0, v1, :cond_783

    .line 353
    new-instance v40, Ljava/net/NoRouteToHostException;

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "Too many redirects: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 356
    :cond_783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v23

    .line 357
    .local v23, "method":Ljava/lang/String;
    const/16 v40, 0x133

    move/from16 v0, v30

    move/from16 v1, v40

    if-ne v0, v1, :cond_7b5

    const-string v40, "GET"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_7b5

    const-string v40, "HEAD"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_7b5

    .line 361
    new-instance v40, Ljava/net/NoRouteToHostException;

    const-string v41, "Invalid redirect"

    invoke-direct/range {v40 .. v41}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 363
    :cond_7b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    const-string v41, "Location"

    invoke-virtual/range {v40 .. v41}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 364
    .local v22, "location":Ljava/lang/String;
    if-nez v22, :cond_7cb

    .line 365
    new-instance v40, Ljava/net/NoRouteToHostException;

    const-string v41, "Invalid redirect"

    invoke-direct/range {v40 .. v41}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 367
    :cond_7cb
    new-instance v38, Ljava/net/URL;

    .end local v38    # "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 368
    .restart local v38    # "url":Ljava/net/URL;
    invoke-virtual/range {v38 .. v38}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v40

    const-string v41, "https"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_7fc

    invoke-virtual/range {v38 .. v38}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v40

    const-string v41, "http"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_7fc

    .line 369
    new-instance v40, Ljava/net/NoRouteToHostException;

    const-string v41, "Unsupported protocol redirect"

    invoke-direct/range {v40 .. v41}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 371
    :cond_7fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v38 .. v38}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 372
    .local v32, "sameProtocol":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mAllowCrossProtocolRedirect:Z

    move/from16 v40, v0

    if-nez v40, :cond_820

    if-nez v32, :cond_820

    .line 373
    new-instance v40, Ljava/net/NoRouteToHostException;

    const-string v41, "Cross-protocol redirects are disallowed"

    invoke-direct/range {v40 .. v41}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 375
    :cond_820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v38 .. v38}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    .line 376
    .local v31, "sameHost":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mAllowCrossDomainRedirect:Z

    move/from16 v40, v0

    if-nez v40, :cond_844

    if-nez v31, :cond_844

    .line 377
    new-instance v40, Ljava/net/NoRouteToHostException;

    const-string v41, "Cross-domain redirects are disallowed"

    invoke-direct/range {v40 .. v41}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 380
    :cond_844
    const/16 v40, 0x133

    move/from16 v0, v30

    move/from16 v1, v40

    if-eq v0, v1, :cond_42

    .line 382
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;

    goto/16 :goto_42

    .line 396
    .end local v22    # "location":Ljava/lang/String;
    .end local v23    # "method":Ljava/lang/String;
    .end local v31    # "sameHost":Z
    .end local v32    # "sameProtocol":Z
    .restart local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_854
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 397
    .restart local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    const-string v41, "Range"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_6d2

    .line 398
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 399
    .local v28, "rangeRequestLastPos":Ljava/lang/String;
    if-eqz v28, :cond_8a2

    const/16 v40, 0x2d

    move-object/from16 v0, v28

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v40

    if-ltz v40, :cond_8a2

    .line 400
    const/16 v40, 0x2d

    move-object/from16 v0, v28

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 401
    .local v19, "lastHyphenPos":I
    add-int/lit8 v40, v19, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 402
    .local v20, "lastPos":Ljava/lang/String;
    if-eqz v20, :cond_8a2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I
    :try_end_895
    .catch Ljava/io/IOException; {:try_start_73e .. :try_end_895} :catch_262

    move-result v40

    if-eqz v40, :cond_8a2

    .line 404
    :try_start_898
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRespEndPos:J
    :try_end_8a2
    .catch Ljava/lang/NumberFormatException; {:try_start_898 .. :try_end_8a2} :catch_8a7
    .catch Ljava/io/IOException; {:try_start_898 .. :try_end_8a2} :catch_262

    .line 415
    .end local v19    # "lastHyphenPos":I
    .end local v20    # "lastPos":Ljava/lang/String;
    :cond_8a2
    :goto_8a2
    :try_start_8a2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_6d2

    .line 405
    .restart local v19    # "lastHyphenPos":I
    .restart local v20    # "lastPos":Ljava/lang/String;
    :catch_8a7
    move-exception v12

    .line 406
    .local v12, "e":Ljava/lang/NumberFormatException;
    new-instance v26, Ljava/lang/Throwable;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Throwable;-><init>()V

    .line 407
    .restart local v26    # "printException":Ljava/lang/Throwable;
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "MediaHTTPConnectionEx "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 409
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 410
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 411
    const-string v42, "exception toString: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 407
    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a2

    .line 442
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v19    # "lastHyphenPos":I
    .end local v20    # "lastPos":Ljava/lang/String;
    .end local v26    # "printException":Ljava/lang/Throwable;
    .end local v28    # "rangeRequestLastPos":Ljava/lang/String;
    .restart local v10    # "contentRange":Ljava/lang/String;
    .restart local v21    # "lastSlashPos":I
    .restart local v36    # "total":Ljava/lang/String;
    :catch_90e
    move-exception v12

    .line 443
    .restart local v12    # "e":Ljava/lang/NumberFormatException;
    new-instance v26, Ljava/lang/Throwable;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Throwable;-><init>()V

    .line 444
    .restart local v26    # "printException":Ljava/lang/Throwable;
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "MediaHTTPConnectionEx "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 446
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 447
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 448
    const-string v42, "exception toString: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 444
    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_73c

    .line 452
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .end local v21    # "lastSlashPos":I
    .end local v26    # "printException":Ljava/lang/Throwable;
    .end local v36    # "total":Ljava/lang/String;
    :cond_976
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mIsRangeRequestSupported:Z

    goto/16 :goto_73c

    .line 455
    .end local v10    # "contentRange":Ljava/lang/String;
    :cond_980
    const/16 v40, 0xc8

    move/from16 v0, v30

    move/from16 v1, v40

    if-eq v0, v1, :cond_98e

    .line 456
    new-instance v40, Ljava/io/IOException;

    invoke-direct/range {v40 .. v40}, Ljava/io/IOException;-><init>()V

    throw v40

    .line 458
    :cond_98e
    invoke-direct/range {p0 .. p0}, Lcom/lge/media/MediaHTTPConnectionEx;->parseContentLengthHeader()J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    .line 459
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "[200 OK] mTotalSize: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    move/from16 v40, v0

    if-eqz v40, :cond_9d2

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    const-string v41, "Content-Range"

    invoke-virtual/range {v40 .. v41}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 462
    .restart local v10    # "contentRange":Ljava/lang/String;
    if-eqz v10, :cond_744

    .line 463
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mIsRangeRequestSupported:Z

    goto/16 :goto_744

    .line 466
    .end local v10    # "contentRange":Ljava/lang/String;
    :cond_9d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    const-string v41, "Accept-Ranges"

    invoke-virtual/range {v40 .. v41}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 467
    .local v4, "acceptRange":Ljava/lang/String;
    if-eqz v4, :cond_9fa

    .line 468
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mIsAcceptRangeHeader:Z

    .line 469
    const-string v40, "bytes"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_a16

    .line 470
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mIsRangeRequestSupported:Z

    .line 478
    :cond_9fa
    :goto_9fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    const-string v41, "contentFeatures.dlna.org"

    invoke-virtual/range {v40 .. v41}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 479
    .local v9, "contentFeatures":Ljava/lang/String;
    if-eqz v9, :cond_744

    .line 480
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/lge/media/MediaHTTPConnectionEx;->parseContentFeaturesHeader(Ljava/lang/String;)Z

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mIsRangeRequestSupported:Z

    goto/16 :goto_744

    .line 471
    .end local v9    # "contentFeatures":Ljava/lang/String;
    :cond_a16
    const-string v40, "none"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_a29

    .line 472
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mIsRangeRequestSupported:Z

    goto :goto_9fa

    .line 474
    :cond_a29
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mIsRangeRequestSupported:Z

    goto :goto_9fa

    .line 492
    .end local v4    # "acceptRange":Ljava/lang/String;
    :cond_a32
    const/16 v40, 0xc8

    move/from16 v0, v30

    move/from16 v1, v40

    if-ne v0, v1, :cond_a73

    .line 493
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mIsConnctionOK:Z

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    const-string v41, "Transfer-Encoding"

    invoke-virtual/range {v40 .. v41}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 496
    .local v37, "transferEncoding":Ljava/lang/String;
    if-eqz v37, :cond_a73

    const-string v40, "chunked"

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_a73

    .line 497
    const-string v40, "MediaHTTPConnectionEx"

    const-string v41, "Server Response with 200 Transfer-Encoding: chunked field in response header"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mServerSupportRangeRequest:Z

    .line 499
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mIsRangeRequestSupported:Z

    .line 503
    .end local v37    # "transferEncoding":Ljava/lang/String;
    :cond_a73
    new-instance v40, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mInputStream:Ljava/io/InputStream;

    .line 505
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    move/from16 v40, v0

    if-nez v40, :cond_a97

    .line 506
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    .line 563
    :cond_a96
    :goto_a96
    return-void

    .line 508
    :cond_a97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v40, v0

    const-string v41, "TimeSeekRange.dlna.org"

    invoke-virtual/range {v40 .. v41}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 516
    .local v35, "timeSeekHeader":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/lge/media/MediaHTTPConnectionEx;->parseTimeSeekRangeHeader(Ljava/lang/String;)Z

    .line 523
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-ltz v40, :cond_b1a

    .line 524
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    .line 525
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "[seektoEx] startByte:"

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :goto_adc
    invoke-direct/range {p0 .. p0}, Lcom/lge/media/MediaHTTPConnectionEx;->parseContentLengthHeader()J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    .line 531
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-ltz v40, :cond_b3b

    .line 532
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    .line 533
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "[seektoEx] totalByte:"

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a96

    .line 527
    :cond_b1a
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    .line 528
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "[seektoEx] this.mCurrentOffset:"

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_adc

    .line 535
    :cond_b3b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-ltz v40, :cond_a96

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-lez v40, :cond_a96

    .line 536
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v42, v0

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    .line 537
    const-string v40, "MediaHTTPConnectionEx"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "[seektoEx] this.mTotalSize:"

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b81
    .catch Ljava/io/IOException; {:try_start_8a2 .. :try_end_b81} :catch_262

    goto/16 :goto_a96
.end method

.method protected teardownConnection()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 157
    iget-object v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_20

    .line 158
    iput-object v4, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mInputStream:Ljava/io/InputStream;

    .line 159
    const-string v2, "MediaHTTPConnectionEx"

    const-string v3, "this.mConnection.disconnect();"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :try_start_e
    iget-object v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_13} :catch_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_2c

    .line 167
    :goto_13
    const-string v2, "MediaHTTPConnectionEx"

    const-string v3, "this.mConnection.disconnected;"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-object v4, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    .line 170
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    .line 172
    :cond_20
    return-void

    .line 162
    :catch_21
    move-exception v1

    .line 163
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    const-string v2, "MediaHTTPConnectionEx"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 164
    .end local v1    # "rethrown":Ljava/lang/RuntimeException;
    :catch_2c
    move-exception v0

    .line 165
    .local v0, "ignored":Ljava/lang/Exception;
    const-string v2, "MediaHTTPConnectionEx"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method
