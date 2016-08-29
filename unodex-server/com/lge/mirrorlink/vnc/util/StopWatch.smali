.class public Lcom/lge/mirrorlink/vnc/util/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# static fields
.field private static df:Ljava/text/DecimalFormat;


# instance fields
.field private currentName:Ljava/lang/StringBuffer;

.field private elapsedTime:J

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "@@#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->df:Ljava/text/DecimalFormat;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->currentName:Ljava/lang/StringBuffer;

    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->startTime:J

    .line 12
    return-void
.end method

.method public static getResultTime(D)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # D

    .prologue
    .line 61
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeMessage(Ljava/lang/String;ZZ)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "threadFlag"    # Z
    .param p3, "resetFlag"    # Z

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v0, "threadName":Ljava/lang/StringBuffer;
    if-eqz p2, :cond_19

    .line 49
    const-string/jumbo v1, "ThreadName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    :cond_19
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->currentName:Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    if-eqz p3, :cond_34

    .line 55
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->start()V

    .line 44
    :cond_34
    return-void
.end method

.method public getElapsedMS()J
    .registers 5

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->elapsedTime:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getElapsedNano()D
    .registers 5

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->elapsedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 93
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->stop()V

    .line 95
    :cond_b
    iget-wide v0, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->elapsedTime:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getResultRate()Ljava/lang/String;
    .registers 7

    .prologue
    .line 76
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->df:Ljava/text/DecimalFormat;

    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getElapsedMS()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultRate(I)Ljava/lang/String;
    .registers 8
    .param p1, "cnt"    # I

    .prologue
    .line 81
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->df:Ljava/text/DecimalFormat;

    int-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getElapsedMS()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultTime()Ljava/lang/String;
    .registers 5

    .prologue
    .line 66
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->df:Ljava/text/DecimalFormat;

    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getElapsedMS()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultTime(I)Ljava/lang/String;
    .registers 8
    .param p1, "cnt"    # I

    .prologue
    .line 71
    sget-object v0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->df:Ljava/text/DecimalFormat;

    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getElapsedMS()J

    move-result-wide v2

    long-to-double v2, v2

    int-to-double v4, p1

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->elapsedTime:J

    .line 34
    return-void
.end method

.method public resume()V
    .registers 3

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->startTime:J

    .line 39
    return-void
.end method

.method public set(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->startTime:J

    .line 18
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->startTime:J

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->elapsedTime:J

    .line 23
    return-void
.end method

.method public stop()V
    .registers 7

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->elapsedTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->elapsedTime:J

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->elapsedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 101
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->stop()V

    .line 103
    :cond_b
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->currentName:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "elapsed Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/util/StopWatch;->getElapsedMS()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/util/StopWatch;->currentName:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
