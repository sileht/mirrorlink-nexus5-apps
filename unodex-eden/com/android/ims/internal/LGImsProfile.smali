.class public Lcom/android/ims/internal/LGImsProfile;
.super Ljava/lang/Object;
.source "LGImsProfile.java"


# static fields
.field private static final FEATURE_LG_IMS:Ljava/lang/String; = "com.lge.server.ims"

.field private static final TAG:Ljava/lang/String; = "LGImsProfile"

.field private static sInitialized:Z

.field private static sLGImsStackSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/android/ims/internal/LGImsProfile;->sInitialized:Z

    .line 37
    sput-boolean v0, Lcom/android/ims/internal/LGImsProfile;->sLGImsStackSupported:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-class v2, Lcom/android/ims/internal/LGImsProfile;

    monitor-enter v2

    :try_start_3
    sget-boolean v1, Lcom/android/ims/internal/LGImsProfile;->sInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-eqz v1, :cond_9

    .line 62
    :cond_7
    :goto_7
    monitor-exit v2

    return-void

    .line 47
    :cond_9
    if-eqz p0, :cond_7

    .line 51
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 53
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_19

    .line 54
    const-string v1, "com.lge.server.ims"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/ims/internal/LGImsProfile;->sLGImsStackSupported:Z

    .line 57
    :cond_19
    invoke-static {}, Lcom/android/ims/internal/LGImsProfile;->isLGImsStackSupported()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 58
    const-string v1, "LG-IMS :: Stack is supported"

    invoke-static {v1}, Lcom/android/ims/internal/LGImsProfile;->log(Ljava/lang/String;)V

    .line 61
    :cond_24
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/ims/internal/LGImsProfile;->sInitialized:Z
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_28

    goto :goto_7

    .line 43
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized isInitialized()Z
    .registers 2

    .prologue
    .line 70
    const-class v0, Lcom/android/ims/internal/LGImsProfile;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/ims/internal/LGImsProfile;->sInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isLGImsStackSupported()Z
    .registers 2

    .prologue
    .line 79
    const-class v0, Lcom/android/ims/internal/LGImsProfile;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/ims/internal/LGImsProfile;->sLGImsStackSupported:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "LGImsProfile"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method
