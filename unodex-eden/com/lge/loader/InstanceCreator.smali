.class public abstract Lcom/lge/loader/InstanceCreator;
.super Ljava/lang/Object;
.source "InstanceCreator.java"


# instance fields
.field private mDefault:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/loader/InstanceCreator;->getDefaultInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/loader/InstanceCreator;->mDefault:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 30
    invoke-virtual {p0, p1}, Lcom/lge/loader/InstanceCreator;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/loader/InstanceCreator;->mDefault:Ljava/lang/Object;

    .line 32
    :cond_a
    iget-object v0, p0, Lcom/lge/loader/InstanceCreator;->mDefault:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract newInstance(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public setDefaultInstance(Ljava/lang/Object;)V
    .registers 2
    .param p1, "newInstance"    # Ljava/lang/Object;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/loader/InstanceCreator;->mDefault:Ljava/lang/Object;

    .line 41
    return-void
.end method
