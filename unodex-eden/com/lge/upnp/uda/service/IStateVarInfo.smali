.class public abstract Lcom/lge/upnp/uda/service/IStateVarInfo;
.super Ljava/lang/Object;
.source "IStateVarInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAllowedValueList()[Ljava/lang/String;
.end method

.method public abstract getAllowedValueRange()Lcom/lge/upnp/uda/service/IAllowedValueRange;
.end method

.method public abstract getDataType()Ljava/lang/String;
.end method

.method public abstract getDefaultValue()Ljava/lang/String;
.end method

.method public abstract getSendEvents()Z
.end method

.method public abstract getStateVariableName()Ljava/lang/String;
.end method

.method public abstract getStateVariableValue()Ljava/lang/String;
.end method
