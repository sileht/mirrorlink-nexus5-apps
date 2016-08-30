.class public interface abstract Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;
.super Ljava/lang/Object;
.source "AbstractImageAnalysisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageAnalysisListener"
.end annotation


# virtual methods
.method public abstract onProgress(F)V
.end method

.method public abstract onPublish(Lcom/lge/cic/eden/db/type/MediaInfo;)V
.end method

.method public abstract onWrite(Lcom/lge/cic/eden/db/type/MediaInfo;)V
.end method
