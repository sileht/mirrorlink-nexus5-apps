.class public final Lcom/lge/android/atservice/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LGATCMDService"

.field public static mDebug:Z

.field public static mInfo:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lcom/lge/android/atservice/Debug;->mDebug:Z

    .line 14
    sput-boolean v0, Lcom/lge/android/atservice/Debug;->mInfo:Z

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final Log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-boolean v0, Lcom/lge/android/atservice/Debug;->mDebug:Z

    if-eqz v0, :cond_a

    .line 18
    const-string/jumbo v0, "LGATCMDService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_a
    return-void
.end method

.method public static final LogE(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string/jumbo v0, "LGATCMDService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public static final LogI(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-boolean v0, Lcom/lge/android/atservice/Debug;->mInfo:Z

    if-eqz v0, :cond_a

    .line 24
    const-string/jumbo v0, "LGATCMDService"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_a
    return-void
.end method
