.class public Lcom/lge/upnp/uda/service/Argument;
.super Lcom/lge/upnp/uda/service/IArgument;
.source "Argument.java"


# instance fields
.field private m_ArgName:Ljava/lang/String;

.field private m_ArgVal:Ljava/lang/String;

.field private m_ObjId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/IArgument;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    .line 29
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "ObjId"    # J

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/IArgument;-><init>()V

    .line 49
    iput-wide p1, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "argName"    # Ljava/lang/String;
    .param p2, "argValue"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/IArgument;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    .line 39
    iput-object p1, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public createNativeInstance()J
    .registers 7

    .prologue
    .line 270
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/upnp/uda/service/Argument;->getRelStateVarInfo()Lcom/lge/upnp/uda/service/IStateVarInfo;

    move-result-object v0

    check-cast v0, Lcom/lge/upnp/uda/service/StateVarInfo;

    invoke-virtual {v0}, Lcom/lge/upnp/uda/service/StateVarInfo;->GetObjectId()J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_1f

    move-result-wide v4

    .line 275
    .local v4, "statevarid":J
    :goto_a
    invoke-virtual {p0}, Lcom/lge/upnp/uda/service/Argument;->getArgumentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/upnp/uda/service/Argument;->getArgumentValue()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {p0}, Lcom/lge/upnp/uda/service/Argument;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/upnp/uda/service/Argument;->getRelatedStateVariable()Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-static/range {v0 .. v5}, Lcom/lge/upnp/uda/service/JNIArgument;->CreateNativeInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 272
    .end local v4    # "statevarid":J
    :catch_1f
    move-exception v0

    const-wide/16 v4, 0x0

    .restart local v4    # "statevarid":J
    goto :goto_a
.end method

.method public getArgumentName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 218
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIArgument;->GetArgumentName(J)Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgName:Ljava/lang/String;

    goto :goto_e
.end method

.method public getArgumentValue()Ljava/lang/String;
    .registers 7

    .prologue
    .line 199
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    .line 200
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    invoke-static {v2, v3}, Lcom/lge/upnp/uda/service/JNIArgument;->GetArgumentValue(J)[B

    move-result-object v1

    .line 201
    .local v1, "arr":[B
    if-eqz v1, :cond_16

    .line 202
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 207
    .end local v1    # "arr":[B
    :goto_15
    return-object v0

    .line 205
    .restart local v1    # "arr":[B
    :cond_16
    const/4 v0, 0x0

    goto :goto_15

    .line 207
    .end local v1    # "arr":[B
    :cond_18
    iget-object v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    goto :goto_15
.end method

.method public getDirection()Ljava/lang/String;
    .registers 5

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 231
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIArgument;->GetDirection(J)Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getRelStateVarInfo()Lcom/lge/upnp/uda/service/IStateVarInfo;
    .registers 5

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 244
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIArgument;->GetRelatedStateVarInfo(J)Lcom/lge/upnp/uda/service/IStateVarInfo;

    move-result-object v0

    .line 246
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getRelatedStateVariable()Ljava/lang/String;
    .registers 5

    .prologue
    .line 256
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 257
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIArgument;->GetRelatedStateVariable(J)Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public setArgument(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "argName"    # Ljava/lang/String;
    .param p2, "argValue"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 60
    iput-object p1, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgName:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    .line 66
    :goto_c
    return-void

    .line 63
    :cond_d
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/service/JNIArgument;->SetArgumentName(JLjava/lang/String;)V

    .line 64
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    invoke-static {v0, v1, p2}, Lcom/lge/upnp/uda/service/JNIArgument;->SetArgumentValue(JLjava/lang/String;)V

    goto :goto_c
.end method

.method public setArgumentName(Ljava/lang/String;)V
    .registers 6
    .param p1, "argName"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 75
    iput-object p1, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgName:Ljava/lang/String;

    .line 79
    :goto_a
    return-void

    .line 77
    :cond_b
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/service/JNIArgument;->SetArgumentName(JLjava/lang/String;)V

    goto :goto_a
.end method

.method public setArgumentValue(Ljava/lang/String;)V
    .registers 6
    .param p1, "argValue"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 88
    iput-object p1, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    .line 92
    :goto_a
    return-void

    .line 90
    :cond_b
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/service/JNIArgument;->SetArgumentValue(JLjava/lang/String;)V

    goto :goto_a
.end method

.method public setBoolean(Z)V
    .registers 6
    .param p1, "argBoolValue"    # Z

    .prologue
    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    .line 125
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 126
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    iget-object v2, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lge/upnp/uda/service/JNIArgument;->SetArgumentValue(JLjava/lang/String;)V

    .line 128
    :cond_15
    return-void
.end method

.method public setByteValue(B)V
    .registers 6
    .param p1, "argByteValue"    # B

    .prologue
    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    .line 137
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 138
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    iget-object v2, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lge/upnp/uda/service/JNIArgument;->SetArgumentValue(JLjava/lang/String;)V

    .line 140
    :cond_15
    return-void
.end method

.method public setCharacter(C)V
    .registers 6
    .param p1, "argChar"    # C

    .prologue
    .line 161
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    .line 162
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 163
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    iget-object v2, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lge/upnp/uda/service/JNIArgument;->SetArgumentValue(JLjava/lang/String;)V

    .line 165
    :cond_15
    return-void
.end method

.method public setDouble(D)V
    .registers 8
    .param p1, "argDoubleVal"    # D

    .prologue
    .line 186
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    .line 187
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 188
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    iget-object v2, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lge/upnp/uda/service/JNIArgument;->SetArgumentValue(JLjava/lang/String;)V

    .line 190
    :cond_15
    return-void
.end method

.method public setFloat(F)V
    .registers 6
    .param p1, "argFloatValue"    # F

    .prologue
    .line 173
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    .line 174
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 175
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    iget-object v2, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lge/upnp/uda/service/JNIArgument;->SetArgumentValue(JLjava/lang/String;)V

    .line 177
    :cond_15
    return-void
.end method

.method public setIntValue(I)V
    .registers 6
    .param p1, "argIntValue"    # I

    .prologue
    .line 112
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    .line 113
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 114
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    iget-object v2, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lge/upnp/uda/service/JNIArgument;->SetArgumentValue(JLjava/lang/String;)V

    .line 116
    :cond_15
    return-void
.end method

.method public setNumber(D)V
    .registers 8
    .param p1, "argNumber"    # D

    .prologue
    .line 149
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    .line 150
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 151
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    iget-object v2, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lge/upnp/uda/service/JNIArgument;->SetArgumentValue(JLjava/lang/String;)V

    .line 153
    :cond_15
    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 6
    .param p1, "argStringValue"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    .line 101
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 102
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/Argument;->m_ObjId:J

    iget-object v2, p0, Lcom/lge/upnp/uda/service/Argument;->m_ArgVal:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lge/upnp/uda/service/JNIArgument;->SetArgumentValue(JLjava/lang/String;)V

    .line 104
    :cond_11
    return-void
.end method
