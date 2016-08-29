.class public abstract Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;
.super Ljava/lang/Object;
.source "DevStatMsg.java"


# instance fields
.field private mDelayTime:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelayTime()I
    .registers 2

    .prologue
    .line 13
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;->mDelayTime:I

    return v0
.end method

.method public abstract send()V
.end method

.method public setDelayTime(I)V
    .registers 2
    .param p1, "mSec"    # I

    .prologue
    .line 9
    iput p1, p0, Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;->mDelayTime:I

    .line 8
    return-void
.end method
