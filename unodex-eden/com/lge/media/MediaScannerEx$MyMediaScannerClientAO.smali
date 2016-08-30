.class public Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;
.super Ljava/lang/Object;
.source "MediaScannerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaScannerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyMediaScannerClientAO"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 242
    :try_start_0
    invoke-static {}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$1$4c9d0020proceed(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Ljava/lang/String;JJZZLorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaScanner$FileEntry;
    .registers 13
    .param p0, "this"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3, p4}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p5, p6}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p7}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p8}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p9, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScanner$FileEntry;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$3$bfdfea5bproceed(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p0, "this"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$4$e7ebe86dproceed(Landroid/media/MediaScanner$MyMediaScannerClient;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/ContentValues;
    .registers 4
    .param p0, "this"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 334
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$5$c2d21bb8proceed(Landroid/media/MediaScanner$MyMediaScannerClient;Landroid/media/MediaScanner$FileEntry;ZZZZZLorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 11
    .param p0, "this"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 454
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p5}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p6}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p7, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$6$9cc7b67cproceed(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 5
    .param p0, "this"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 511
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$com_lge_media_MediaScannerEx$LGE_PRIVATE_LOG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/lge/media/MediaScannerEx;->LGE_PRIVATE_LOG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$com_lge_media_MediaScannerEx$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$com_lge_media_MediaScannerEx$VOICERECORDING_DIR()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx;->VOICERECORDING_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$com_lge_media_MediaScannerEx$LGE_PRIVATE_LOG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/lge/media/MediaScannerEx;->LGE_PRIVATE_LOG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$com_lge_media_MediaScannerEx$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/media/MediaScannerEx;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$com_lge_media_MediaScannerEx$VOICERECORDING_DIR(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/media/MediaScannerEx;->VOICERECORDING_DIR:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mHifiSampleRate(Landroid/media/MediaScanner$MyMediaScannerClient;)I
    .registers 2

    invoke-static {p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mHifiSampleRate(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mIsHifi(Landroid/media/MediaScanner$MyMediaScannerClient;)Z
    .registers 2

    invoke-static {p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mIsHifi(Landroid/media/MediaScanner$MyMediaScannerClient;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mOuter(Landroid/media/MediaScanner$MyMediaScannerClient;)Landroid/media/MediaScanner;
    .registers 2

    invoke-static {p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mOuter(Landroid/media/MediaScanner$MyMediaScannerClient;)Landroid/media/MediaScanner;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mProtectedType(Landroid/media/MediaScanner$MyMediaScannerClient;)I
    .registers 2

    invoke-static {p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mProtectedType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mVideoDateTaken(Landroid/media/MediaScanner$MyMediaScannerClient;)J
    .registers 3

    invoke-static {p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mVideoDateTaken(Landroid/media/MediaScanner$MyMediaScannerClient;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mlatitude(Landroid/media/MediaScanner$MyMediaScannerClient;)F
    .registers 2

    invoke-static {p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mlatitude(Landroid/media/MediaScanner$MyMediaScannerClient;)F

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mlongitude(Landroid/media/MediaScanner$MyMediaScannerClient;)F
    .registers 2

    invoke-static {p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mlongitude(Landroid/media/MediaScanner$MyMediaScannerClient;)F

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mparseLatLonSuccess(Landroid/media/MediaScanner$MyMediaScannerClient;)Z
    .registers 2

    invoke-static {p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mparseLatLonSuccess(Landroid/media/MediaScanner$MyMediaScannerClient;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mHifiSampleRate(Landroid/media/MediaScanner$MyMediaScannerClient;)V
    .registers 1

    .prologue
    .line 254
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mIsHifi(Landroid/media/MediaScanner$MyMediaScannerClient;)V
    .registers 1

    .prologue
    .line 252
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mOuter(Landroid/media/MediaScanner$MyMediaScannerClient;)V
    .registers 1

    .prologue
    .line 243
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mProtectedType(Landroid/media/MediaScanner$MyMediaScannerClient;)V
    .registers 1

    .prologue
    .line 245
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mVideoDateTaken(Landroid/media/MediaScanner$MyMediaScannerClient;)V
    .registers 1

    .prologue
    .line 253
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mlatitude(Landroid/media/MediaScanner$MyMediaScannerClient;)V
    .registers 1

    .prologue
    .line 249
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mlongitude(Landroid/media/MediaScanner$MyMediaScannerClient;)V
    .registers 1

    .prologue
    .line 250
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mparseLatLonSuccess(Landroid/media/MediaScanner$MyMediaScannerClient;)V
    .registers 1

    .prologue
    .line 248
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mHifiSampleRate(Landroid/media/MediaScanner$MyMediaScannerClient;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$set$mHifiSampleRate(Landroid/media/MediaScanner$MyMediaScannerClient;I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mIsHifi(Landroid/media/MediaScanner$MyMediaScannerClient;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$set$mIsHifi(Landroid/media/MediaScanner$MyMediaScannerClient;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mOuter(Landroid/media/MediaScanner$MyMediaScannerClient;Landroid/media/MediaScanner;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$set$mOuter(Landroid/media/MediaScanner$MyMediaScannerClient;Landroid/media/MediaScanner;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mProtectedType(Landroid/media/MediaScanner$MyMediaScannerClient;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$set$mProtectedType(Landroid/media/MediaScanner$MyMediaScannerClient;I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mVideoDateTaken(Landroid/media/MediaScanner$MyMediaScannerClient;J)V
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$set$mVideoDateTaken(Landroid/media/MediaScanner$MyMediaScannerClient;J)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mlatitude(Landroid/media/MediaScanner$MyMediaScannerClient;F)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$set$mlatitude(Landroid/media/MediaScanner$MyMediaScannerClient;F)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mlongitude(Landroid/media/MediaScanner$MyMediaScannerClient;F)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$set$mlongitude(Landroid/media/MediaScanner$MyMediaScannerClient;F)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mparseLatLonSuccess(Landroid/media/MediaScanner$MyMediaScannerClient;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$set$mparseLatLonSuccess(Landroid/media/MediaScanner$MyMediaScannerClient;Z)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$convertRationalLatLonToFloat(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Z)Z
    .registers 10
    .param p0, "ajc$this_"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .param p1, "rationalString"    # Ljava/lang/String;
    .param p2, "isLat"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 571
    const/4 v1, 0x0

    .line 572
    .local v1, "ref":I
    const/4 v2, 0x0

    .line 573
    .local v2, "result":F
    const/4 v0, 0x0

    .line 575
    .local v0, "length":I
    if-nez p1, :cond_8

    .line 603
    :cond_7
    :goto_7
    return v3

    .line 579
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 581
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_62

    .line 582
    const/4 v1, 0x1

    .line 590
    :goto_15
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 591
    const-string v3, "MediaScannerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaScanner] convertRational LatLonToFloat float = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    if-eqz p2, :cond_6c

    .line 594
    const-string v3, "MediaScannerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaScanner] convertRational LatLonToFloat isLat = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    int-to-float v3, v1

    mul-float/2addr v3, v2

    invoke-static {p0, v3}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mlatitude(Landroid/media/MediaScanner$MyMediaScannerClient;F)V

    .line 601
    :goto_4c
    const-string v3, "MediaScannerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaScanner] convertRational LatLonToFloat succeed, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 603
    goto :goto_7

    .line 583
    :cond_62
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_7

    .line 584
    const/4 v1, -0x1

    .line 585
    goto :goto_15

    .line 597
    :cond_6c
    const-string v3, "MediaScannerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaScanner] convertRational LatLonToFloat isLon = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    int-to-float v3, v1

    mul-float/2addr v3, v2

    invoke-static {p0, v3}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mlongitude(Landroid/media/MediaScanner$MyMediaScannerClient;F)V

    goto :goto_4c
.end method

.method public static ajc$interMethod$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$parseDateTaken(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;)J
    .registers 15
    .param p0, "ajc$this_"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    .line 609
    const-wide/16 v0, 0x0

    .line 610
    .local v0, "convertDate":J
    const/4 v3, 0x0

    .line 612
    .local v3, "dateStr":Ljava/lang/String;
    if-nez p1, :cond_10

    .line 613
    const-string v10, "MediaScannerEx"

    const-string v11, "[MediaScanner] parseDateTaken() value is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :goto_f
    return-wide v8

    .line 617
    :cond_10
    const/16 v10, 0x2e

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 618
    .local v5, "lastDot":I
    if-lez v5, :cond_1c

    .line 619
    invoke-virtual {p1, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 622
    :cond_1c
    const-string v10, "T"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 623
    .local v7, "splitDate":[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x2

    if-lt v10, v11, :cond_3c

    .line 624
    new-instance v10, Ljava/lang/StringBuilder;

    aget-object v11, v7, v12

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 626
    :cond_3c
    if-eqz v3, :cond_7a

    .line 627
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyyMMddHHmmss"

    invoke-direct {v6, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 629
    .local v6, "sdFormat":Ljava/text/SimpleDateFormat;
    :try_start_45
    const-string v10, "UTC"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 630
    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 631
    .local v2, "date":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_55
    .catch Ljava/text/ParseException; {:try_start_45 .. :try_end_55} :catch_7c

    move-result-wide v0

    .line 636
    .end local v2    # "date":Ljava/util/Date;
    :goto_56
    const-string v10, "MediaScannerEx"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[MediaScanner] parseDateTaken() input value = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", convertDate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    cmp-long v8, v0, v8

    if-gtz v8, :cond_7a

    .line 638
    const-wide/16 v0, 0x0

    .end local v6    # "sdFormat":Ljava/text/SimpleDateFormat;
    :cond_7a
    move-wide v8, v0

    .line 641
    goto :goto_f

    .line 632
    .restart local v6    # "sdFormat":Ljava/text/SimpleDateFormat;
    :catch_7c
    move-exception v4

    .line 633
    .local v4, "e":Ljava/text/ParseException;
    const-string v10, "MediaScannerEx"

    const-string v11, "[MediaScanner] parseDateTaken():"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56
.end method

.method public static ajc$interMethod$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$splitLatLon(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p0, "ajc$this_"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .param p1, "rationalString"    # Ljava/lang/String;
    .param p2, "isLat"    # Z

    .prologue
    const/4 v2, 0x0

    .line 539
    const/4 v0, 0x0

    .line 541
    .local v0, "length":I
    if-nez p1, :cond_6

    move-object v1, v2

    .line 566
    :goto_5
    return-object v1

    .line 545
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 546
    const/4 v1, 0x0

    .line 547
    .local v1, "result":Ljava/lang/String;
    const-string v3, "MediaScannerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[MediaScanner] convertRational LatLonToString rationalString = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/16 v3, 0x12

    if-lt v0, v3, :cond_25

    move-object v1, v2

    .line 550
    goto :goto_5

    .line 553
    :cond_25
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_3b

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_3b

    move-object v1, v2

    .line 556
    goto :goto_5

    .line 559
    :cond_3b
    if-eqz p2, :cond_45

    .line 560
    const/4 v2, 0x0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 561
    goto :goto_5

    .line 563
    :cond_45
    div-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$convertRationalLatLonToFloat(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "ajc$this_"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .param p1, "rationalString"    # Ljava/lang/String;
    .param p2, "isLat"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$interMethodDispatch2$com_lge_media_MediaScannerEx$convertRationalLatLonToFloat(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$parseDateTaken(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;)J
    .registers 4
    .param p0, "ajc$this_"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$interMethodDispatch2$com_lge_media_MediaScannerEx$parseDateTaken(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$splitLatLon(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p0, "ajc$this_"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .param p1, "rationalString"    # Ljava/lang/String;
    .param p2, "isLat"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$interMethodDispatch2$com_lge_media_MediaScannerEx$splitLatLon(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;

    invoke-direct {v0}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;-><init>()V

    sput-object v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;

    return-void
.end method

.method public static aspectOf()Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_media_MediaScannerEx$MyMediaScannerClientAO"

    sget-object v2, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$2$89461579(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "obj"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,name,value"
        value = "(this(obj) && (args(name, value) && execution(public void MediaScanner.MyMediaScannerClient.handleStringTag(String, String))))"
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 287
    const-string v2, "location"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 288
    invoke-static {p1, p3, v0}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interMethodDispatch1$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$splitLatLon(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interMethodDispatch1$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$convertRationalLatLonToFloat(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 289
    invoke-static {p1, p3, v1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interMethodDispatch1$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$splitLatLon(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interMethodDispatch1$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$convertRationalLatLonToFloat(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 290
    invoke-static {p1, v0}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mparseLatLonSuccess(Landroid/media/MediaScanner$MyMediaScannerClient;Z)V

    .line 308
    :cond_21
    :goto_21
    return-void

    .line 294
    :cond_22
    const-string v2, "ishifi"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 295
    invoke-virtual {p1, p3, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$privMethod$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$parseSubstring(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_34

    :goto_30
    invoke-static {p1, v0}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mIsHifi(Landroid/media/MediaScanner$MyMediaScannerClient;Z)V

    goto :goto_21

    :cond_34
    move v0, v1

    goto :goto_30

    .line 298
    :cond_36
    const-string v0, "hiFiRate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 299
    invoke-virtual {p1, p3, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$privMethod$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$parseSubstring(Ljava/lang/String;II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mHifiSampleRate(Landroid/media/MediaScanner$MyMediaScannerClient;I)V

    goto :goto_21

    .line 302
    :cond_46
    const-string v0, "datetaken"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 303
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_6e

    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_6e

    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_6e

    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_21

    .line 304
    :cond_6e
    invoke-static {p1, p3}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interMethodDispatch1$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$parseDateTaken(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mVideoDateTaken(Landroid/media/MediaScanner$MyMediaScannerClient;J)V

    goto :goto_21
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$1$4c9d0020(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Ljava/lang/String;JJZZLorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaScanner$FileEntry;
    .registers 15
    .param p1, "obj"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "lastModified"    # J
    .param p6, "fileSize"    # J
    .param p8, "isDirectory"    # Z
    .param p9, "noMedia"    # Z
    .param p10, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,path,mimeType,lastModified,fileSize,isDirectory,noMedia,ajc$aroundClosure"
        value = "(this(obj) && (args(path, mimeType, lastModified, fileSize, isDirectory, noMedia) && execution(public MediaScanner.FileEntry MediaScanner.MyMediaScannerClient.beginFile(String, String, long, long, boolean, boolean))))"
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 261
    invoke-static {p1, v1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mProtectedType(Landroid/media/MediaScanner$MyMediaScannerClient;I)V

    .line 264
    invoke-static {p1, v1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mparseLatLonSuccess(Landroid/media/MediaScanner$MyMediaScannerClient;Z)V

    .line 265
    invoke-static {p1, v2}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mlatitude(Landroid/media/MediaScanner$MyMediaScannerClient;F)V

    .line 266
    invoke-static {p1, v2}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mlongitude(Landroid/media/MediaScanner$MyMediaScannerClient;F)V

    .line 268
    invoke-static {p1, v1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mIsHifi(Landroid/media/MediaScanner$MyMediaScannerClient;Z)V

    .line 269
    invoke-static {p1, v1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mHifiSampleRate(Landroid/media/MediaScanner$MyMediaScannerClient;I)V

    .line 270
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mVideoDateTaken(Landroid/media/MediaScanner$MyMediaScannerClient;J)V

    .line 271
    invoke-static/range {p1 .. p10}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$1$4c9d0020proceed(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Ljava/lang/String;JJZZLorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v0

    .line 274
    .local v0, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v0, :cond_43

    invoke-static {v0}, Landroid/media/MediaScanner$FileEntry;->ajc$get$mLastModifiedChanged(Landroid/media/MediaScanner$FileEntry;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 275
    invoke-static {}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$com_lge_media_MediaScannerEx$LGE_PRIVATE_LOG()Z

    move-result v1

    if-eqz v1, :cond_43

    if-nez p8, :cond_43

    if-nez p9, :cond_43

    .line 276
    const-string v1, "MediaScannerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MediaScanner] beginFile() path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_43
    return-object v0
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$3$bfdfea5b(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .param p1, "obj"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,mimeType,ajc$aroundClosure"
        value = "(this(obj) && (args(mimeType) && execution(public void MediaScanner.MyMediaScannerClient.setMimeType(String))))"
    .end annotation

    .prologue
    .line 314
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v2, :cond_33

    .line 315
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mMimeType(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    .line 317
    .local v1, "fileType":I
    const/16 v2, 0x515

    if-lt v1, v2, :cond_14

    const/16 v2, 0x51a

    if-le v1, v2, :cond_18

    .line 318
    :cond_14
    invoke-static {p1, p2, p3}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$3$bfdfea5bproceed(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 330
    .end local v1    # "fileType":I
    :goto_17
    return-void

    .line 320
    .restart local v1    # "fileType":I
    :cond_18
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mPath(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    .line 321
    .local v0, "drmType":I
    const/16 v2, 0x501

    if-eq v0, v2, :cond_28

    const/16 v2, 0x1800

    if-ne v0, v2, :cond_2b

    .line 322
    :cond_28
    invoke-static {p1, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$set$mMimeType(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;)V

    .line 324
    :cond_2b
    invoke-static {p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$set$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;I)V

    goto :goto_17

    .line 328
    .end local v0    # "drmType":I
    .end local v1    # "fileType":I
    :cond_33
    invoke-static {p1, p2, p3}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$3$bfdfea5bproceed(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_17
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$4$e7ebe86d(Landroid/media/MediaScanner$MyMediaScannerClient;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/ContentValues;
    .registers 13
    .param p1, "obj"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && execution(private ContentValues MediaScanner.MyMediaScannerClient.toValues()))"
    .end annotation

    .prologue
    .line 335
    invoke-static {p1, p2}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$4$e7ebe86dproceed(Landroid/media/MediaScanner$MyMediaScannerClient;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/ContentValues;

    move-result-object v4

    .line 338
    .local v4, "map":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    if-eqz v6, :cond_30

    .line 339
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mIsDrm(Landroid/media/MediaScanner$MyMediaScannerClient;)Z

    move-result v6

    if-nez v6, :cond_17

    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mProtectedType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_17f

    .line 340
    :cond_17
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mProtectedType(Landroid/media/MediaScanner$MyMediaScannerClient;I)V

    .line 349
    :cond_1b
    :goto_1b
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mProtectedType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_30

    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    invoke-static {v6}, Landroid/media/MediaFileEx;->isDMBFileType(I)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 350
    const/4 v6, 0x2

    invoke-static {p1, v6}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mProtectedType(Landroid/media/MediaScanner$MyMediaScannerClient;I)V

    .line 355
    :cond_30
    const-string v6, "protected_type"

    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mProtectedType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string v6, "latitude"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 358
    const-string v6, "longitude"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 359
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    invoke-static {v6}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 361
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mparseLatLonSuccess(Landroid/media/MediaScanner$MyMediaScannerClient;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 362
    const-string v6, "latitude"

    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mlatitude(Landroid/media/MediaScanner$MyMediaScannerClient;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 363
    const-string v6, "longitude"

    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mlongitude(Landroid/media/MediaScanner$MyMediaScannerClient;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 369
    :cond_71
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    const/16 v7, 0x16

    if-eq v6, v7, :cond_91

    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    const/16 v7, 0x15

    if-eq v6, v7, :cond_91

    .line 370
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    const/16 v7, 0x17

    if-eq v6, v7, :cond_91

    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    const/16 v7, 0x18

    if-ne v6, v7, :cond_a4

    .line 371
    :cond_91
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mNoMedia(Landroid/media/MediaScanner$MyMediaScannerClient;)Z

    move-result v6

    if-nez v6, :cond_a4

    .line 372
    const-string v6, "video_datetaken"

    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mVideoDateTaken(Landroid/media/MediaScanner$MyMediaScannerClient;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 377
    :cond_a4
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mIsHifi(Landroid/media/MediaScanner$MyMediaScannerClient;)Z

    move-result v6

    if-eqz v6, :cond_20a

    .line 379
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mHifiSampleRate(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    const v7, 0xac44

    if-ne v6, v7, :cond_1a1

    .line 380
    const-string v6, "is_hifi"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    :cond_bd
    :goto_bd
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mPath(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x91

    if-ne v6, v7, :cond_216

    .line 400
    const-string v6, "is_lock"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    :goto_d3
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_CAMERA_BURSTSHOT:Z

    if-eqz v6, :cond_149

    .line 408
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    invoke-static {v6}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v6

    if-nez v6, :cond_eb

    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    invoke-static {v6}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v6

    if-eqz v6, :cond_149

    .line 409
    :cond_eb
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mPath(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "burst_value":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 411
    .local v3, "lastSlash":I
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    if-ltz v3, :cond_149

    .line 413
    const-string v6, "_Burst"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_222

    .line 414
    const-string v6, "_Burst"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 415
    .local v0, "burst_check":I
    const-string v6, ".jpg"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_129

    const/16 v6, 0x8

    if-eq v0, v6, :cond_139

    const/16 v6, 0x9

    if-eq v0, v6, :cond_139

    .line 416
    :cond_129
    const-string v6, ".jpg.dm"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_144

    const/16 v6, 0xc

    if-eq v0, v6, :cond_139

    const/16 v6, 0xd

    if-ne v0, v6, :cond_144

    .line 417
    :cond_139
    const/4 v6, 0x0

    const-string v7, "_Burst"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 427
    .end local v0    # "burst_check":I
    :cond_144
    :goto_144
    const-string v6, "burst_id"

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .end local v1    # "burst_value":Ljava/lang/String;
    .end local v3    # "lastSlash":I
    :cond_149
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v6, :cond_17e

    .line 435
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mMimeType(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    .line 436
    .local v2, "fileType":I
    const/16 v6, 0x515

    if-ne v2, v6, :cond_17e

    .line 437
    const/16 v6, 0xc

    invoke-static {v6}, Lcom/lge/lgdrm/DrmManager;->isSupportedAgent(I)Z

    move-result v6

    if-eqz v6, :cond_17e

    .line 438
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mPath(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_17e

    .line 439
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mPath(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->getFileTypeFromDrm(Ljava/lang/String;)Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    move-result-object v5

    .line 440
    .local v5, "mediaFileType":Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    if-eqz v5, :cond_17e

    .line 442
    const-string v6, "mime_type"

    iget-object v7, v5, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .end local v2    # "fileType":I
    .end local v5    # "mediaFileType":Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    :cond_17e
    return-object v4

    .line 342
    :cond_17f
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mPath(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v5

    .line 343
    .local v5, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v5, :cond_1b

    .line 344
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mOuter(Landroid/media/MediaScanner$MyMediaScannerClient;)Landroid/media/MediaScanner;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaScanner;->ajc$privMethod$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$isDrmEnabled()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget v6, v5, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 345
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mProtectedType(Landroid/media/MediaScanner$MyMediaScannerClient;I)V

    goto/16 :goto_1b

    .line 381
    .end local v5    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_1a1
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mHifiSampleRate(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    const v7, 0xbb80

    if-ne v6, v7, :cond_1b6

    .line 382
    const-string v6, "is_hifi"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_bd

    .line 383
    :cond_1b6
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mHifiSampleRate(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    const v7, 0x15888

    if-ne v6, v7, :cond_1cb

    .line 384
    const-string v6, "is_hifi"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_bd

    .line 385
    :cond_1cb
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mHifiSampleRate(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    const v7, 0x17700

    if-ne v6, v7, :cond_1e0

    .line 386
    const-string v6, "is_hifi"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_bd

    .line 387
    :cond_1e0
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mHifiSampleRate(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    const v7, 0x2b110

    if-ne v6, v7, :cond_1f5

    .line 388
    const-string v6, "is_hifi"

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_bd

    .line 389
    :cond_1f5
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mHifiSampleRate(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v6

    const v7, 0x2ee00

    if-ne v6, v7, :cond_bd

    .line 390
    const-string v6, "is_hifi"

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_bd

    .line 394
    :cond_20a
    const-string v6, "is_hifi"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_bd

    .line 403
    :cond_216
    const-string v6, "is_lock"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_d3

    .line 420
    .restart local v1    # "burst_value":Ljava/lang/String;
    .restart local v3    # "lastSlash":I
    :cond_222
    const-string v6, "_Continuous"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_144

    .line 421
    const-string v6, "_Continuous"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 422
    .restart local v0    # "burst_check":I
    const-string v6, ".jpg"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24a

    const/16 v6, 0xd

    if-eq v0, v6, :cond_25a

    const/16 v6, 0xe

    if-eq v0, v6, :cond_25a

    .line 423
    :cond_24a
    const-string v6, ".jpg.dm"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_144

    const/16 v6, 0x11

    if-eq v0, v6, :cond_25a

    const/16 v6, 0x12

    if-ne v0, v6, :cond_144

    .line 424
    :cond_25a
    const/4 v6, 0x0

    const-string v7, "_Continuous"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_144
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$5$c2d21bb8(Landroid/media/MediaScanner$MyMediaScannerClient;Landroid/media/MediaScanner$FileEntry;ZZZZZLorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 20
    .param p1, "obj"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .param p2, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p3, "ringtones"    # Z
    .param p4, "notifications"    # Z
    .param p5, "alarms"    # Z
    .param p6, "music"    # Z
    .param p7, "podcasts"    # Z
    .param p8, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,entry,ringtones,notifications,alarms,music,podcasts,ajc$aroundClosure"
        value = "(this(obj) && (args(entry, ringtones, notifications, alarms, music, podcasts) && execution(private Uri MediaScanner.MyMediaScannerClient.endFile(..))))"
    .end annotation

    .prologue
    .line 456
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v0, :cond_1a

    .line 457
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mMimeType(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v6

    .line 458
    .local v6, "fileType":I
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mFileType(Landroid/media/MediaScanner$MyMediaScannerClient;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 459
    const/16 v0, 0x515

    if-lt v6, v0, :cond_1a

    .line 467
    .end local v6    # "fileType":I
    :cond_1a
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mPath(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 468
    .local v7, "lowpath":Ljava/lang/String;
    const-string v0, "/my_sounds/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d2

    .line 469
    const-string v0, "3GP"

    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mPath(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mPath(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 470
    const-string v0, "AMR"

    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mPath(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mPath(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 468
    :cond_6c
    const/4 v10, 0x1

    .line 472
    .local v10, "voicerecording":Z
    :goto_6d
    if-eqz v10, :cond_71

    .line 473
    const/16 p6, 0x0

    .line 476
    :cond_71
    const/4 v2, 0x0

    .line 478
    .local v2, "result":Landroid/net/Uri;
    invoke-static/range {p1 .. p8}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$5$c2d21bb8proceed(Landroid/media/MediaScanner$MyMediaScannerClient;Landroid/media/MediaScanner$FileEntry;ZZZZZLorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v2

    .line 479
    if-eqz v2, :cond_d1

    .line 480
    const/4 v9, 0x0

    .line 481
    .local v9, "needToupdate":Z
    const/4 v8, 0x0

    .line 482
    .local v8, "mediaType":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 483
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mPath(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ba

    .line 484
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mMimeType(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v6

    .line 486
    .restart local v6    # "fileType":I
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mOuter(Landroid/media/MediaScanner$MyMediaScannerClient;)Landroid/media/MediaScanner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScanner;->ajc$privMethod$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$isDrmEnabled()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-static {v6}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 487
    invoke-static {p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$get$mPath(Landroid/media/MediaScanner$MyMediaScannerClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->ajc$privMethod$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v6

    .line 488
    const/4 v9, 0x1

    .line 491
    :cond_aa
    invoke-static {v6}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 492
    const/4 v8, 0x2

    .line 500
    :cond_b1
    :goto_b1
    const-string v0, "media_type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    .end local v6    # "fileType":I
    :cond_ba
    if-eqz v9, :cond_d1

    .line 503
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mOuter(Landroid/media/MediaScanner$MyMediaScannerClient;)Landroid/media/MediaScanner;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaScanner;->ajc$get$mMediaProvider(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v0

    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mOuter(Landroid/media/MediaScanner$MyMediaScannerClient;)Landroid/media/MediaScanner;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaScanner;->ajc$get$mPackageName(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 506
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v8    # "mediaType":I
    .end local v9    # "needToupdate":Z
    :cond_d1
    return-object v2

    .line 468
    .end local v2    # "result":Landroid/net/Uri;
    .end local v10    # "voicerecording":Z
    :cond_d2
    const/4 v10, 0x0

    goto :goto_6d

    .line 493
    .restart local v2    # "result":Landroid/net/Uri;
    .restart local v3    # "values":Landroid/content/ContentValues;
    .restart local v6    # "fileType":I
    .restart local v8    # "mediaType":I
    .restart local v9    # "needToupdate":Z
    .restart local v10    # "voicerecording":Z
    :cond_d4
    invoke-static {v6}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 494
    const/4 v8, 0x3

    .line 495
    goto :goto_b1

    :cond_dc
    invoke-static {v6}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 496
    const/4 v8, 0x1

    .line 497
    goto :goto_b1

    :cond_e4
    invoke-static {v6}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 498
    const/4 v8, 0x4

    goto :goto_b1
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$6$9cc7b67c(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 8
    .param p1, "obj"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,path,ajc$aroundClosure"
        value = "(this(obj) && (args(path) && execution(private int MediaScanner.MyMediaScannerClient.getFileTypeFromDrm(String))))"
    .end annotation

    .prologue
    .line 512
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mOuter(Landroid/media/MediaScanner$MyMediaScannerClient;)Landroid/media/MediaScanner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaScanner;->ajc$privMethod$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$isDrmEnabled()Z

    move-result v2

    if-nez v2, :cond_c

    .line 513
    const/4 v1, 0x0

    .line 531
    :cond_b
    :goto_b
    return v1

    .line 516
    :cond_c
    const/4 v1, 0x0

    .line 519
    .local v1, "resultFileType":I
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v2, :cond_2a

    .line 520
    invoke-static {p2}, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->getFileTypeFromDrm(Ljava/lang/String;)Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    move-result-object v0

    .line 521
    .local v0, "mediaFileType":Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    if-eqz v0, :cond_1a

    .line 522
    iget v1, v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;->fileType:I

    goto :goto_b

    .line 524
    :cond_1a
    const-string v2, "drm.service.enabled"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 530
    .end local v0    # "mediaFileType":Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    :cond_2a
    invoke-static {p1, p2, p3}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$around$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$6$9cc7b67cproceed(Landroid/media/MediaScanner$MyMediaScannerClient;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v1

    .line 531
    goto :goto_b
.end method
