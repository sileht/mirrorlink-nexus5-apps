.class public Lcom/lge/wifi/impl/mobilehotspot/MHPLog;
.super Ljava/lang/Object;
.source "MHPLog.java"


# static fields
.field public static mIsLoging:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_9
    return-void
.end method

.method private static isLogging()Z
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public static setLogging(Z)V
    .registers 1
    .param p0, "log"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->mIsLoging:Z

    .line 45
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_9
    return-void
.end method
