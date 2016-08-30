.class public abstract Lcom/lge/upnp/uda/service/IAllowedValueRange;
.super Ljava/lang/Object;
.source "IAllowedValueRange.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMaxValue()Ljava/lang/String;
.end method

.method public abstract getMinValue()Ljava/lang/String;
.end method

.method public abstract getStepValue()Ljava/lang/String;
.end method
