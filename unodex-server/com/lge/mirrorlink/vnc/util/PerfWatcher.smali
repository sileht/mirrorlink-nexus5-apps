.class public Lcom/lge/mirrorlink/vnc/util/PerfWatcher;
.super Ljava/lang/Object;
.source "PerfWatcher.java"


# static fields
.field private static final LOGGING_INTERVAL:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "MirrorLink_VNC"

.field static lastLoggingTime:J

.field static mCountBeforeWrite:I

.field static mCountCapture:I

.field static mCountContext:I

.field static mCountConvertRGB:I

.field static mCountDetectChanged:I

.field static mCountEncode:I

.field static mCountProbe1:I

.field static mCountProbe2:I

.field static mCountRequest:I

.field static mCountRotate:I

.field static mCountTotal:I

.field static mCountWrite:I

.field static mCurrentFrameRate:I

.field static mCurrentTransferRate:I

.field static mSizeWrite:I

.field static watchBeforeWrite:Lcom/lge/mirrorlink/vnc/util/StopWatch;

.field static watchCapture:Lcom/lge/mirrorlink/vnc/util/StopWatch;

.field static watchContext:Lcom/lge/mirrorlink/vnc/util/StopWatch;

.field static watchConvertRGB:Lcom/lge/mirrorlink/vnc/util/StopWatch;

.field static watchDetectChanged:Lcom/lge/mirrorlink/vnc/util/StopWatch;

.field static watchEncode:Lcom/lge/mirrorlink/vnc/util/StopWatch;

.field static watchProbe1:Lcom/lge/mirrorlink/vnc/util/StopWatch;

.field static watchProbe2:Lcom/lge/mirrorlink/vnc/util/StopWatch;

.field static watchRequest:Lcom/lge/mirrorlink/vnc/util/StopWatch;

.field static watchRotate:Lcom/lge/mirrorlink/vnc/util/StopWatch;

.field static watchTotal:Lcom/lge/mirrorlink/vnc/util/StopWatch;

.field static watchWrite:Lcom/lge/mirrorlink/vnc/util/StopWatch;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 10
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCurrentFrameRate:I

    .line 11
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCurrentTransferRate:I

    .line 13
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountProbe1:I

    .line 14
    new-instance v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchProbe1:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    .line 15
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountProbe2:I

    .line 16
    new-instance v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchProbe2:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    .line 18
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountCapture:I

    .line 19
    new-instance v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchCapture:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    .line 20
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountConvertRGB:I

    .line 21
    new-instance v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchConvertRGB:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    .line 22
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountRotate:I

    .line 23
    new-instance v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchRotate:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    .line 24
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountEncode:I

    .line 25
    new-instance v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchEncode:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    .line 26
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountContext:I

    .line 27
    new-instance v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchContext:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    .line 28
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountDetectChanged:I

    .line 29
    new-instance v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchDetectChanged:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    .line 30
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountWrite:I

    .line 31
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mSizeWrite:I

    .line 32
    new-instance v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchWrite:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    .line 33
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountBeforeWrite:I

    .line 34
    new-instance v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchBeforeWrite:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    .line 35
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountTotal:I

    .line 36
    new-instance v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchTotal:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    .line 37
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountRequest:I

    .line 38
    new-instance v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchRequest:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->lastLoggingTime:J

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 0

    .prologue
    .line 44
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->resetAllWatch()V

    .line 42
    return-void
.end method

.method public static resetAllWatch()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 49
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountProbe1:I

    .line 50
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchProbe1:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->reset()V

    .line 51
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountProbe2:I

    .line 52
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchProbe2:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->reset()V

    .line 53
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountCapture:I

    .line 54
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchCapture:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->reset()V

    .line 55
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountConvertRGB:I

    .line 56
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchConvertRGB:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->reset()V

    .line 57
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountRotate:I

    .line 58
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchRotate:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->reset()V

    .line 59
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountEncode:I

    .line 60
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchEncode:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->reset()V

    .line 61
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountContext:I

    .line 62
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchContext:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->reset()V

    .line 63
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountDetectChanged:I

    .line 64
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchDetectChanged:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->reset()V

    .line 65
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountWrite:I

    .line 66
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mSizeWrite:I

    .line 67
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchWrite:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->reset()V

    .line 68
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountTotal:I

    .line 69
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchTotal:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->reset()V

    .line 70
    sput v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountRequest:I

    .line 71
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchRequest:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->reset()V

    .line 47
    return-void
.end method

.method public static start()V
    .registers 1

    .prologue
    .line 198
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchTotal:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->resume()V

    .line 196
    return-void
.end method

.method public static startBeforeWrite()V
    .registers 1

    .prologue
    .line 164
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchBeforeWrite:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->resume()V

    .line 162
    return-void
.end method

.method public static startCapture()V
    .registers 1

    .prologue
    .line 98
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchCapture:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->resume()V

    .line 96
    return-void
.end method

.method public static startContext()V
    .registers 1

    .prologue
    .line 153
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchContext:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->resume()V

    .line 151
    return-void
.end method

.method public static startConvertingRGB()V
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchConvertRGB:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->resume()V

    .line 107
    return-void
.end method

.method public static startDetectChanged()V
    .registers 1

    .prologue
    .line 131
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchDetectChanged:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->resume()V

    .line 129
    return-void
.end method

.method public static startEncode()V
    .registers 1

    .prologue
    .line 142
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchEncode:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->resume()V

    .line 140
    return-void
.end method

.method public static startProbe1()V
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchProbe1:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->resume()V

    .line 74
    return-void
.end method

.method public static startProbe2()V
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchProbe2:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->resume()V

    .line 85
    return-void
.end method

.method public static startRequest()V
    .registers 1

    .prologue
    .line 187
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchRequest:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->resume()V

    .line 185
    return-void
.end method

.method public static startRotate()V
    .registers 1

    .prologue
    .line 120
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchRotate:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->resume()V

    .line 118
    return-void
.end method

.method public static startWrite()V
    .registers 1

    .prologue
    .line 175
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchWrite:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->resume()V

    .line 173
    return-void
.end method

.method public static stop()V
    .registers 8

    .prologue
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 203
    sget-object v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchTotal:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->stop()V

    .line 204
    sget v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountTotal:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountTotal:I

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->lastLoggingTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_52

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 208
    .local v0, "now":J
    sget v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountTotal:I

    int-to-double v2, v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v2, v4

    sget-wide v4, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->lastLoggingTime:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    sput v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCurrentFrameRate:I

    .line 209
    sget v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mSizeWrite:I

    int-to-double v2, v2

    const-wide v4, 0x40f3880000000000L    # 80000.0

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    div-double/2addr v2, v6

    sget-object v4, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchWrite:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getElapsedMS()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    sput v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCurrentTransferRate:I

    .line 210
    sget-wide v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->lastLoggingTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->writeLog(J)V

    .line 211
    sput-wide v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->lastLoggingTime:J

    .line 212
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->resetAllWatch()V

    .line 201
    :cond_52
    return-void
.end method

.method public static stopBeforeWrite()V
    .registers 1

    .prologue
    .line 169
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchBeforeWrite:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->stop()V

    .line 170
    sget v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountBeforeWrite:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountBeforeWrite:I

    .line 167
    return-void
.end method

.method public static stopCapture()V
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchCapture:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->stop()V

    .line 104
    sget v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountCapture:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountCapture:I

    .line 101
    return-void
.end method

.method public static stopContext()V
    .registers 1

    .prologue
    .line 158
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchContext:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->stop()V

    .line 159
    sget v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountContext:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountContext:I

    .line 156
    return-void
.end method

.method public static stopConvertingRGB()V
    .registers 1

    .prologue
    .line 114
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchConvertRGB:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->stop()V

    .line 115
    sget v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountConvertRGB:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountConvertRGB:I

    .line 112
    return-void
.end method

.method public static stopDetectChanged()V
    .registers 1

    .prologue
    .line 136
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchDetectChanged:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->stop()V

    .line 137
    sget v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountDetectChanged:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountDetectChanged:I

    .line 134
    return-void
.end method

.method public static stopEncode()V
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchEncode:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->stop()V

    .line 148
    sget v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountEncode:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountEncode:I

    .line 145
    return-void
.end method

.method public static stopProbe1()V
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchProbe1:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->stop()V

    .line 82
    sget v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountProbe1:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountProbe1:I

    .line 79
    return-void
.end method

.method public static stopProbe2()V
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchProbe2:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->stop()V

    .line 93
    sget v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountProbe2:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountProbe2:I

    .line 90
    return-void
.end method

.method public static stopRequest()V
    .registers 1

    .prologue
    .line 192
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchRequest:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->stop()V

    .line 193
    sget v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountRequest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountRequest:I

    .line 190
    return-void
.end method

.method public static stopRotate()V
    .registers 1

    .prologue
    .line 125
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchRotate:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->stop()V

    .line 126
    sget v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountRotate:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountRotate:I

    .line 123
    return-void
.end method

.method public static stopWrite(I)V
    .registers 2
    .param p0, "size"    # I

    .prologue
    .line 180
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchWrite:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->stop()V

    .line 181
    sget v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountWrite:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountWrite:I

    .line 182
    sget v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mSizeWrite:I

    add-int/2addr v0, p0

    sput v0, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mSizeWrite:I

    .line 178
    return-void
.end method

.method public static writeLog(J)V
    .registers 6
    .param p0, "elapsedtime"    # J

    .prologue
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountTotal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " avg frame rate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCurrentFrameRate:I

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCurrentFrameRate:I

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "msg":Ljava/lang/String;
    sget v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountProbe1:I

    if-lez v1, :cond_77

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n probe1 cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountProbe1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " avg  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchProbe1:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    sget v3, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountProbe1:I

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getResultTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_77
    sget v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountProbe2:I

    if-lez v1, :cond_af

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n probe2 cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountProbe2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " avg  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchProbe2:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    sget v3, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountProbe2:I

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getResultTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_af
    sget v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountTotal:I

    if-lez v1, :cond_28b

    .line 226
    sget v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountRequest:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_e1

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n request avg  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchRequest:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    sget v3, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountRequest:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getResultTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_e1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n total avg response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchTotal:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    sget v3, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountTotal:I

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getResultTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    sget v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountBeforeWrite:I

    if-lez v1, :cond_133

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n before writing avg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchBeforeWrite:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    sget v3, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountBeforeWrite:I

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getResultTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_133
    sget v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountCapture:I

    if-lez v1, :cond_15e

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n  - capture avg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchCapture:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    sget v3, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountCapture:I

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getResultTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_15e
    sget v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountRotate:I

    if-lez v1, :cond_189

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n  - rotate avg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchRotate:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    sget v3, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountRotate:I

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getResultTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_189
    sget v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountConvertRGB:I

    if-lez v1, :cond_1b4

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n  - convert avg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchConvertRGB:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    sget v3, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountConvertRGB:I

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getResultTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_1b4
    sget v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountEncode:I

    if-lez v1, :cond_1df

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n  - encode avg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchEncode:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    sget v3, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountEncode:I

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getResultTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_1df
    sget v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountContext:I

    if-lez v1, :cond_20a

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n  - context avg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchContext:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    sget v3, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountContext:I

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getResultTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_20a
    sget v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountDetectChanged:I

    if-lez v1, :cond_235

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n     - detect avg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchDetectChanged:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    sget v3, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountDetectChanged:I

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getResultTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_235
    sget v1, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountWrite:I

    if-lez v1, :cond_28b

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n write avg  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->watchWrite:Lcom/lge/mirrorlink/vnc/util/StopWatch;

    sget v3, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCountWrite:I

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getResultTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms (size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mSizeWrite:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCurrentTransferRate:I

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->mCurrentTransferRate:I

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Mbps)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_28b
    const-string/jumbo v1, "MirrorLink_VNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<< Mirror Link VNC Performance Log >>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method
