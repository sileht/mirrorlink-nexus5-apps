.class public Lcom/lge/upnp/uda/service/StateVarInfo;
.super Lcom/lge/upnp/uda/service/IStateVarInfo;
.source "StateVarInfo.java"


# instance fields
.field private m_objId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/IStateVarInfo;-><init>()V

    .line 25
    invoke-static {}, Lcom/lge/upnp/uda/service/JNIStateVarInfo;->CreateNativeMethod()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/upnp/uda/service/StateVarInfo;->m_objId:J

    .line 26
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "ObjId"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/IStateVarInfo;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/lge/upnp/uda/service/StateVarInfo;->m_objId:J

    .line 35
    return-void
.end method


# virtual methods
.method public GetObjectId()J
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/StateVarInfo;->m_objId:J

    return-wide v0
.end method

.method public getAllowedValueList()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/StateVarInfo;->m_objId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIStateVarInfo;->GetAllowedValueList(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedValueRange()Lcom/lge/upnp/uda/service/IAllowedValueRange;
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/StateVarInfo;->m_objId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIStateVarInfo;->GetAllowedValueRange(J)Lcom/lge/upnp/uda/service/IAllowedValueRange;

    move-result-object v0

    return-object v0
.end method

.method public getDataType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/StateVarInfo;->m_objId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIStateVarInfo;->GetDataType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/StateVarInfo;->m_objId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIStateVarInfo;->GetDefaultValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSendEvents()Z
    .registers 3

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/StateVarInfo;->m_objId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIStateVarInfo;->GetSendEvents(J)Z

    move-result v0

    return v0
.end method

.method public getStateVariableName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/StateVarInfo;->m_objId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIStateVarInfo;->GetStateVariableName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariableValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/StateVarInfo;->m_objId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIStateVarInfo;->GetStateVariableValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setStateVariableName(Ljava/lang/String;)V
    .registers 4
    .param p1, "strVarName"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/StateVarInfo;->m_objId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/service/JNIStateVarInfo;->SetStateVariableName(JLjava/lang/String;)V

    .line 125
    return-void
.end method

.method public setStateVariableValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "strVarValue"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/StateVarInfo;->m_objId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/service/JNIStateVarInfo;->SetStateVariableValue(JLjava/lang/String;)V

    .line 134
    return-void
.end method
