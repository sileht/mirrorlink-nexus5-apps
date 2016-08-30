.class public interface abstract Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine;
.super Ljava/lang/Object;
.source "IImageAnalysisEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clearDB()V
.end method

.method public abstract create()Z
.end method

.method public abstract destroy()Z
.end method

.method public abstract process(Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            "TT;)TR;"
        }
    .end annotation
.end method

.method public abstract reset()Z
.end method
