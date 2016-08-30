.class final Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;
.super Lcom/lge/media/IMediaHTTPConnectionEx$Stub;
.source "MediaHTTPConnectionEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaHTTPConnectionEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExtendedBinderInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/media/MediaHTTPConnectionEx;


# direct methods
.method private constructor <init>(Lcom/lge/media/MediaHTTPConnectionEx;)V
    .registers 2

    .prologue
    .line 923
    iput-object p1, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    invoke-direct {p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/media/MediaHTTPConnectionEx;Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;)V
    .registers 3

    .prologue
    .line 923
    invoke-direct {p0, p1}, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;-><init>(Lcom/lge/media/MediaHTTPConnectionEx;)V

    return-void
.end method


# virtual methods
.method public getCurrentOffset()J
    .registers 5

    .prologue
    .line 998
    const-string v0, "MediaHTTPConnectionEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getCurrentOffset] startByte="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J
    invoke-static {v2}, Lcom/lge/media/MediaHTTPConnectionEx;->access$13(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$13(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2d

    .line 1001
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$13(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v0

    .line 1003
    :goto_2c
    return-wide v0

    :cond_2d
    const-wide/16 v0, 0x0

    goto :goto_2c
.end method

.method public getCurrentPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$21(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1083
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$21(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/lang/String;

    move-result-object v0

    .line 1085
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getRangeLastByte()J
    .registers 3

    .prologue
    .line 969
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRespEndPos:J
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$8(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRangeRequestInfo()I
    .registers 7

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1018
    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mLogEnable:Z
    invoke-static {}, Lcom/lge/media/MediaHTTPConnectionEx;->access$15()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1019
    const-string v3, "MediaHTTPConnectionEx"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mIsAcceptRangeHeader: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mIsAcceptRangeHeader:Z
    invoke-static {v5}, Lcom/lge/media/MediaHTTPConnectionEx;->access$16(Lcom/lge/media/MediaHTTPConnectionEx;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsRangeRequestSupported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mIsRangeRequestSupported:Z
    invoke-static {v5}, Lcom/lge/media/MediaHTTPConnectionEx;->access$17(Lcom/lge/media/MediaHTTPConnectionEx;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_33
    iget-object v3, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mIsConnctionOK:Z
    invoke-static {v3}, Lcom/lge/media/MediaHTTPConnectionEx;->access$18(Lcom/lge/media/MediaHTTPConnectionEx;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 1042
    :cond_3b
    :goto_3b
    return v0

    .line 1025
    :cond_3c
    iget-object v3, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mIsAcceptRangeHeader:Z
    invoke-static {v3}, Lcom/lge/media/MediaHTTPConnectionEx;->access$16(Lcom/lge/media/MediaHTTPConnectionEx;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1026
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mIsRangeRequestSupported:Z
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$17(Lcom/lge/media/MediaHTTPConnectionEx;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v1

    .line 1027
    goto :goto_3b

    :cond_4e
    move v0, v2

    .line 1029
    goto :goto_3b

    .line 1032
    :cond_50
    iget-object v3, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z
    invoke-static {v3}, Lcom/lge/media/MediaHTTPConnectionEx;->access$19(Lcom/lge/media/MediaHTTPConnectionEx;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 1033
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mIsRangeRequestSupported:Z
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$17(Lcom/lge/media/MediaHTTPConnectionEx;)Z

    move-result v0

    if-eqz v0, :cond_62

    move v0, v1

    .line 1034
    goto :goto_3b

    :cond_62
    move v0, v2

    .line 1036
    goto :goto_3b

    .line 1039
    :cond_64
    iget-object v1, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mIsConnctionOK:Z
    invoke-static {v1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$18(Lcom/lge/media/MediaHTTPConnectionEx;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1040
    const/4 v0, 0x2

    goto :goto_3b
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mResCode:I
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$9(Lcom/lge/media/MediaHTTPConnectionEx;)I

    move-result v0

    return v0
.end method

.method public getResponseHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 958
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mResHeader:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$6(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaderFields()Ljava/lang/String;
    .registers 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$12(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 990
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$12(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 992
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isLocalNetwork()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1049
    iget-object v5, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;
    invoke-static {v5}, Lcom/lge/media/MediaHTTPConnectionEx;->access$20(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/net/URL;

    move-result-object v2

    .line 1051
    .local v2, "url":Ljava/net/URL;
    if-nez v2, :cond_b

    .line 1077
    :cond_a
    :goto_a
    return v3

    .line 1055
    :cond_b
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 1062
    :try_start_11
    const-string v5, "localhost"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move v3, v4

    .line 1063
    goto :goto_a

    .line 1065
    :cond_1b
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-eqz v5, :cond_27

    move v3, v4

    .line 1066
    goto :goto_a

    .line 1068
    :cond_27
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_33

    move v3, v4

    .line 1069
    goto :goto_a

    .line 1071
    :cond_33
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 1072
    .local v1, "ipaddress":[B
    array-length v5, v1

    const/16 v6, 0x10

    if-ne v5, v6, :cond_a

    .line 1073
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xfc

    if-ne v5, v6, :cond_a

    const/4 v5, 0x1

    aget-byte v5, v1, v5
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_4c} :catch_52

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_a

    move v3, v4

    goto :goto_a

    .end local v1    # "ipaddress":[B
    :catch_52
    move-exception v4

    goto :goto_a
.end method

.method public isNetworkException()Z
    .registers 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mNetworkException:Z
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$25(Lcom/lge/media/MediaHTTPConnectionEx;)Z

    move-result v0

    return v0
.end method

.method public isSupportRangeRequest()Z
    .registers 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mServerSupportRangeRequest:Z
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$7(Lcom/lge/media/MediaHTTPConnectionEx;)Z

    move-result v0

    return v0
.end method

.method public setContentSize(J)V
    .registers 4
    .param p1, "contentSize"    # J

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    invoke-static {v0, p1, p2}, Lcom/lge/media/MediaHTTPConnectionEx;->access$14(Lcom/lge/media/MediaHTTPConnectionEx;J)V

    .line 1010
    return-void
.end method

.method public setDLNAByteRangeSeekMode(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .prologue
    .line 933
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    invoke-static {v0, p1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$1(Lcom/lge/media/MediaHTTPConnectionEx;Z)V

    .line 934
    const-string v0, "MediaHTTPConnectionEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDLNAByteRangeSeekMode mIsHttpByteRangeSeek="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    return-void
.end method

.method public setDLNAPauseMode(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .prologue
    .line 939
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    invoke-static {v0, p1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$2(Lcom/lge/media/MediaHTTPConnectionEx;Z)V

    .line 940
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$3(Lcom/lge/media/MediaHTTPConnectionEx;Z)V

    .line 941
    const-string v0, "MediaHTTPConnectionEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDLNAPauseMode mIsDisconnectAtPause="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    return-void
.end method

.method public setDLNAPlayback(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .prologue
    .line 946
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    invoke-static {v0, p1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$3(Lcom/lge/media/MediaHTTPConnectionEx;Z)V

    .line 947
    const-string v0, "MediaHTTPConnectionEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDLNAPlayback mIsHttpDlnaPlayback="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return-void
.end method

.method public setDLNATimeSeekMode(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .prologue
    .line 927
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    invoke-static {v0, p1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$0(Lcom/lge/media/MediaHTTPConnectionEx;Z)V

    .line 928
    const-string v0, "MediaHTTPConnectionEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDLNATimeSeekMode mIsHttpTimeSeek="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void
.end method

.method public setDLNATimeSeekValue(J)V
    .registers 8
    .param p1, "param"    # J

    .prologue
    .line 952
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    invoke-static {v0, p1, p2}, Lcom/lge/media/MediaHTTPConnectionEx;->access$4(Lcom/lge/media/MediaHTTPConnectionEx;J)V

    .line 953
    const-string v0, "MediaHTTPConnectionEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDLNATimeSeekValue mTimeSeekValue="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mTimeSeekValue:J
    invoke-static {v2}, Lcom/lge/media/MediaHTTPConnectionEx;->access$5(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    return-void
.end method

.method public setTimeout(II)V
    .registers 4
    .param p1, "connectTimeoutms"    # I
    .param p2, "readTimeoutms"    # I

    .prologue
    .line 979
    if-ltz p1, :cond_7

    .line 980
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    invoke-static {v0, p1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$10(Lcom/lge/media/MediaHTTPConnectionEx;I)V

    .line 982
    :cond_7
    if-ltz p2, :cond_e

    .line 983
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    invoke-static {v0, p2}, Lcom/lge/media/MediaHTTPConnectionEx;->access$11(Lcom/lge/media/MediaHTTPConnectionEx;I)V

    .line 985
    :cond_e
    return-void
.end method

.method public verifyEOS()Z
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 1090
    iget-object v1, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J
    invoke-static {v1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$22(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_1e

    iget-object v1, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J
    invoke-static {v1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$23(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J
    invoke-static {v1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$22(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1e

    .line 1095
    :cond_1d
    :goto_1d
    return v0

    .line 1092
    :cond_1e
    iget-object v1, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRespEndPos:J
    invoke-static {v1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$8(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_3b

    iget-object v1, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J
    invoke-static {v1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$23(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRespEndPos:J
    invoke-static {v1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$8(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-nez v1, :cond_1d

    .line 1095
    :cond_3b
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public verifyLocalHost()Z
    .registers 3

    .prologue
    .line 1099
    iget-object v1, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;
    invoke-static {v1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$20(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/net/URL;

    move-result-object v0

    .line 1101
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_a

    .line 1102
    const/4 v1, 0x0

    .line 1105
    :goto_9
    return v1

    :cond_a
    # invokes: Lcom/lge/media/MediaHTTPConnectionEx;->isLocalHost(Ljava/net/URL;)Z
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$24(Ljava/net/URL;)Z

    move-result v1

    goto :goto_9
.end method
