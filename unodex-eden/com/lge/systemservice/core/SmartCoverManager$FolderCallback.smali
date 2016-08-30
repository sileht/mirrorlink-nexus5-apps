.class public abstract Lcom/lge/systemservice/core/SmartCoverManager$FolderCallback;
.super Lcom/lge/systemservice/core/ISmartCoverCallback$Stub;
.source "SmartCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/SmartCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FolderCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/lge/systemservice/core/ISmartCoverCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTypeChanged(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 336
    return-void
.end method
