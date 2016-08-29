.class public Lcom/lge/mirrorlink/commonapi/ContextManager;
.super Ljava/lang/Object;
.source "ContextManager.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IContextManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/commonapi/ContextManager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_CAPI"


# instance fields
.field private listener:Lcom/mirrorlink/android/commonapi/IContextListener;

.field private final mBinder:Lcom/mirrorlink/android/commonapi/IContextManager$Stub;

.field private packageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/commonapi/ContextManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/ContextManager;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IContextListener;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/mirrorlink/android/commonapi/IContextListener;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/lge/mirrorlink/commonapi/ContextManager$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/ContextManager$1;-><init>(Lcom/lge/mirrorlink/commonapi/ContextManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/ContextManager;->mBinder:Lcom/mirrorlink/android/commonapi/IContextManager$Stub;

    .line 28
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/ContextManager;->packageName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/lge/mirrorlink/commonapi/ContextManager;->listener:Lcom/mirrorlink/android/commonapi/IContextListener;

    .line 26
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/ContextManager;->mBinder:Lcom/mirrorlink/android/commonapi/IContextManager$Stub;

    return-object v0
.end method

.method public getListener()Lcom/mirrorlink/android/commonapi/IContextListener;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/ContextManager;->listener:Lcom/mirrorlink/android/commonapi/IContextListener;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/ContextManager;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setAudioContextInformation(Z[IZ)V
    .registers 4
    .param p1, "audioContent"    # Z
    .param p2, "audioCategories"    # [I
    .param p3, "handleBlocking"    # Z

    .prologue
    .line 131
    return-void
.end method

.method public setFramebufferContextInformation(Ljava/util/List;Z)V
    .registers 3
    .param p2, "handleBlocking"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    return-void
.end method

.method public unregister()V
    .registers 1

    .prologue
    .line 135
    return-void
.end method
