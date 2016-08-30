.class public interface abstract Lcom/lge/cic/eden/policy/IPolicy;
.super Ljava/lang/Object;
.source "IPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/policy/IPolicy$AnalysisCycle;
    }
.end annotation


# virtual methods
.method public abstract getAnalaysisEngines()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract getAnalysisCycle()Lcom/lge/cic/eden/policy/IPolicy$AnalysisCycle;
.end method
