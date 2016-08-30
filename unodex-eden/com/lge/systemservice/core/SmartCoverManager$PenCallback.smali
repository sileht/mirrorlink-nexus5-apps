.class public abstract Lcom/lge/systemservice/core/SmartCoverManager$PenCallback;
.super Lcom/lge/systemservice/core/ISmartCoverCallback$Stub;
.source "SmartCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/SmartCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PenCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/lge/systemservice/core/ISmartCoverCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTypeChanged(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 328
    # getter for: Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Type callback is not supported for pen event"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    return-void
.end method
