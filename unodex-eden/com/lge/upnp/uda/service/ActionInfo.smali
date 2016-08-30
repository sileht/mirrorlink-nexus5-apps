.class public Lcom/lge/upnp/uda/service/ActionInfo;
.super Lcom/lge/upnp/uda/service/IActionInfo;
.source "ActionInfo.java"


# instance fields
.field private mArgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/upnp/uda/service/IArgument;",
            ">;"
        }
    .end annotation
.end field

.field private mUsrHdrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/upnp/uda/http/IHttpHeader;",
            ">;"
        }
    .end annotation
.end field

.field private m_ActionName:Ljava/lang/String;

.field private m_Arglist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/upnp/uda/service/IArgument;",
            ">;"
        }
    .end annotation
.end field

.field private m_ObjId:J

.field private m_Qos:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/IActionInfo;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Arglist:Ljava/util/ArrayList;

    .line 29
    iput-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    .line 31
    iput-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    .line 39
    iput-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Arglist:Ljava/util/ArrayList;

    .line 40
    iput-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    .line 41
    iput-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    .line 42
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "objId"    # J

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/IActionInfo;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Arglist:Ljava/util/ArrayList;

    .line 29
    iput-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    .line 31
    iput-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    .line 49
    iput-wide p1, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    .line 50
    iput-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Arglist:Ljava/util/ArrayList;

    .line 51
    iput-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    .line 52
    iput-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    .line 53
    return-void
.end method


# virtual methods
.method public addActnInfoArgument(Lcom/lge/upnp/uda/service/Argument;)V
    .registers 6
    .param p1, "arg"    # Lcom/lge/upnp/uda/service/Argument;

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    .line 64
    iget-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Arglist:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Arglist:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    .line 68
    :cond_1a
    iget-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Arglist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lge/upnp/uda/service/Argument;->getArgumentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_28
    return-void

    .line 71
    :cond_29
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    invoke-virtual {p1}, Lcom/lge/upnp/uda/service/Argument;->createNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/lge/upnp/uda/service/JNIActionInfo;->AddActnInfoArgument(JJ)V

    goto :goto_28
.end method

.method public addActnInfoArgument(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "argName"    # Ljava/lang/String;
    .param p2, "argValue"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Lcom/lge/upnp/uda/service/Argument;

    invoke-direct {v0, p1, p2}, Lcom/lge/upnp/uda/service/Argument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v0, "arg":Lcom/lge/upnp/uda/service/Argument;
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2e

    .line 88
    iget-object v1, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Arglist:Ljava/util/ArrayList;

    if-nez v1, :cond_1f

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Arglist:Ljava/util/ArrayList;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    .line 92
    :cond_1f
    iget-object v1, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Arglist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/lge/upnp/uda/service/Argument;->getArgumentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_2d
    return-void

    .line 95
    :cond_2e
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    invoke-virtual {v0}, Lcom/lge/upnp/uda/service/Argument;->createNativeInstance()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/lge/upnp/uda/service/JNIActionInfo;->AddActnInfoArgument(JJ)V

    goto :goto_2d
.end method

.method public addUserHttpHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "hdrName"    # Ljava/lang/String;
    .param p2, "hdrValue"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 309
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    invoke-static {v2, v3, p1, p2}, Lcom/lge/upnp/uda/service/JNIActionInfo;->AddUserHttpHeader(JLjava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_d
    :goto_d
    return-void

    .line 311
    :cond_e
    iget-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    if-nez v2, :cond_19

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    .line 315
    :cond_19
    const/4 v0, 0x0

    .line 316
    .local v0, "found":Z
    iget-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_33

    .line 323
    :goto_26
    if-nez v0, :cond_d

    .line 324
    new-instance v1, Lcom/lge/upnp/uda/http/HttpHeader;

    invoke-direct {v1, p1, p2}, Lcom/lge/upnp/uda/http/HttpHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .local v1, "hdr":Lcom/lge/upnp/uda/http/HttpHeader;
    iget-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 316
    .end local v1    # "hdr":Lcom/lge/upnp/uda/http/HttpHeader;
    :cond_33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/upnp/uda/http/IHttpHeader;

    .line 317
    .local v1, "hdr":Lcom/lge/upnp/uda/http/IHttpHeader;
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/lge/upnp/uda/http/IHttpHeader;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 318
    const/4 v0, 0x1

    .line 319
    invoke-virtual {v1, p2}, Lcom/lge/upnp/uda/http/IHttpHeader;->setValue(Ljava/lang/String;)V

    goto :goto_26
.end method

.method public createNativeInstance()J
    .registers 13

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/lge/upnp/uda/service/ActionInfo;->getArgumentList()Ljava/util/ArrayList;

    move-result-object v7

    .line 336
    .local v7, "arglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/upnp/uda/service/IArgument;>;"
    const/4 v1, 0x0

    .line 337
    .local v1, "objidArglist":[J
    if-eqz v7, :cond_18

    .line 338
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [J

    .line 339
    const/4 v8, 0x0

    .line 340
    .local v8, "idx":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_41

    .line 348
    .end local v8    # "idx":I
    :cond_18
    const-wide/16 v2, 0x0

    .line 352
    .local v2, "serviceid":J
    const/4 v5, 0x0

    .line 353
    .local v5, "arrTmpHttp":[Lcom/lge/upnp/uda/http/IHttpHeader;
    iget-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 354
    iget-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Lcom/lge/upnp/uda/http/IHttpHeader;

    .line 355
    iget-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 357
    :cond_34
    invoke-virtual {p0}, Lcom/lge/upnp/uda/service/ActionInfo;->getActionName()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-virtual {p0}, Lcom/lge/upnp/uda/service/ActionInfo;->getQos()I

    move-result v4

    .line 357
    invoke-static/range {v0 .. v5}, Lcom/lge/upnp/uda/service/JNIActionInfo;->CreateNativeInstance(Ljava/lang/String;[JJI[Lcom/lge/upnp/uda/http/IHttpHeader;)J

    move-result-wide v10

    return-wide v10

    .line 340
    .end local v2    # "serviceid":J
    .end local v5    # "arrTmpHttp":[Lcom/lge/upnp/uda/http/IHttpHeader;
    .restart local v8    # "idx":I
    :cond_41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/upnp/uda/service/IArgument;

    .line 341
    .local v6, "arg":Lcom/lge/upnp/uda/service/IArgument;
    check-cast v6, Lcom/lge/upnp/uda/service/Argument;

    .end local v6    # "arg":Lcom/lge/upnp/uda/service/IArgument;
    invoke-virtual {v6}, Lcom/lge/upnp/uda/service/Argument;->createNativeInstance()J

    move-result-wide v10

    aput-wide v10, v1, v8

    .line 342
    add-int/lit8 v8, v8, 0x1

    goto :goto_12
.end method

.method public getActionName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 121
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIActionInfo;->GetActionName(J)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ActionName:Ljava/lang/String;

    goto :goto_e
.end method

.method public getArgument(Ljava/lang/String;)Lcom/lge/upnp/uda/service/IArgument;
    .registers 8
    .param p1, "argName"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "arg":Lcom/lge/upnp/uda/service/IArgument;
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    if-nez v1, :cond_10

    .line 194
    invoke-virtual {p0}, Lcom/lge/upnp/uda/service/ActionInfo;->getArgumentList()Ljava/util/ArrayList;

    .line 196
    :cond_10
    iget-object v1, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1c

    .line 197
    iget-object v1, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "arg":Lcom/lge/upnp/uda/service/IArgument;
    check-cast v0, Lcom/lge/upnp/uda/service/IArgument;

    .line 199
    .restart local v0    # "arg":Lcom/lge/upnp/uda/service/IArgument;
    :cond_1c
    return-object v0
.end method

.method public getArgumentList()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/upnp/uda/service/IArgument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    monitor-enter p0

    .line 135
    :try_start_1
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Arglist:Ljava/util/ArrayList;

    if-nez v2, :cond_25

    .line 136
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    invoke-static {v2, v3}, Lcom/lge/upnp/uda/service/JNIActionInfo;->GetArgumentList(J)[Lcom/lge/upnp/uda/service/IArgument;

    move-result-object v0

    .line 137
    .local v0, "argArr":[Lcom/lge/upnp/uda/service/IArgument;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Arglist:Ljava/util/ArrayList;

    .line 138
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    .line 139
    array-length v3, v0

    const/4 v2, 0x0

    :goto_23
    if-lt v2, v3, :cond_29

    .line 134
    .end local v0    # "argArr":[Lcom/lge/upnp/uda/service/IArgument;
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_3c

    .line 145
    iget-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Arglist:Ljava/util/ArrayList;

    return-object v2

    .line 139
    .restart local v0    # "argArr":[Lcom/lge/upnp/uda/service/IArgument;
    :cond_29
    :try_start_29
    aget-object v1, v0, v2

    .line 140
    .local v1, "iuPnPArgument":Lcom/lge/upnp/uda/service/IArgument;
    iget-object v4, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Arglist:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v4, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/lge/upnp/uda/service/IArgument;->getArgumentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 134
    .end local v0    # "argArr":[Lcom/lge/upnp/uda/service/IArgument;
    .end local v1    # "iuPnPArgument":Lcom/lge/upnp/uda/service/IArgument;
    :catchall_3c
    move-exception v2

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_29 .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public getArgumentMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/upnp/uda/service/IArgument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    if-nez v0, :cond_7

    .line 157
    invoke-virtual {p0}, Lcom/lge/upnp/uda/service/ActionInfo;->getArgumentList()Ljava/util/ArrayList;

    .line 159
    :cond_7
    iget-object v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getArgumentValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "argName"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, "argVal":Ljava/lang/String;
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    if-nez v2, :cond_10

    .line 173
    invoke-virtual {p0}, Lcom/lge/upnp/uda/service/ActionInfo;->getArgumentList()Ljava/util/ArrayList;

    .line 175
    :cond_10
    iget-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    if-eqz v2, :cond_22

    .line 176
    iget-object v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mArgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/upnp/uda/service/IArgument;

    .line 177
    .local v0, "arg":Lcom/lge/upnp/uda/service/IArgument;
    if-eqz v0, :cond_22

    .line 178
    invoke-virtual {v0}, Lcom/lge/upnp/uda/service/IArgument;->getArgumentValue()Ljava/lang/String;

    move-result-object v1

    .line 181
    .end local v0    # "arg":Lcom/lge/upnp/uda/service/IArgument;
    :cond_22
    return-object v1
.end method

.method public getHeaderList()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/upnp/uda/http/IHttpHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-wide v4, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_20

    .line 240
    monitor-enter p0

    .line 241
    :try_start_9
    iget-object v3, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    if-nez v3, :cond_1f

    .line 242
    const/4 v2, 0x0

    .line 243
    .local v2, "tmpHdrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/upnp/uda/http/IHttpHeader;>;"
    iget-wide v4, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    invoke-static {v4, v5}, Lcom/lge/upnp/uda/service/JNIActionInfo;->GetHeaderList(J)[Lcom/lge/upnp/uda/http/IHttpHeader;

    move-result-object v0

    .line 244
    .local v0, "arrHdrList":[Lcom/lge/upnp/uda/http/IHttpHeader;
    if-eqz v0, :cond_1f

    .line 245
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "tmpHdrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/upnp/uda/http/IHttpHeader;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .restart local v2    # "tmpHdrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/upnp/uda/http/IHttpHeader;>;"
    array-length v4, v0

    const/4 v3, 0x0

    :goto_1d
    if-lt v3, v4, :cond_23

    .line 240
    .end local v0    # "arrHdrList":[Lcom/lge/upnp/uda/http/IHttpHeader;
    .end local v2    # "tmpHdrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/upnp/uda/http/IHttpHeader;>;"
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_2b

    .line 253
    :cond_20
    iget-object v3, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    return-object v3

    .line 246
    .restart local v0    # "arrHdrList":[Lcom/lge/upnp/uda/http/IHttpHeader;
    .restart local v2    # "tmpHdrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/upnp/uda/http/IHttpHeader;>;"
    :cond_23
    :try_start_23
    aget-object v1, v0, v3

    .line 247
    .local v1, "hdr":Lcom/lge/upnp/uda/http/IHttpHeader;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 240
    .end local v0    # "arrHdrList":[Lcom/lge/upnp/uda/http/IHttpHeader;
    .end local v1    # "hdr":Lcom/lge/upnp/uda/http/IHttpHeader;
    .end local v2    # "tmpHdrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/upnp/uda/http/IHttpHeader;>;"
    :catchall_2b
    move-exception v3

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method public getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "hdrName"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_f

    .line 287
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    invoke-static {v2, v3, p1}, Lcom/lge/upnp/uda/service/JNIActionInfo;->GetHeaderValue(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    :goto_e
    return-object v1

    .line 289
    :cond_f
    iget-object v1, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    .line 290
    iget-object v1, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_21

    .line 297
    :cond_1f
    const/4 v1, 0x0

    goto :goto_e

    .line 290
    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/upnp/uda/http/IHttpHeader;

    .line 291
    .local v0, "usrHdr":Lcom/lge/upnp/uda/http/IHttpHeader;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/lge/upnp/uda/http/IHttpHeader;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 292
    invoke-virtual {v0}, Lcom/lge/upnp/uda/http/IHttpHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public getQos()I
    .registers 5

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 223
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIActionInfo;->GetQos(J)I

    move-result v0

    .line 226
    :goto_e
    return v0

    :cond_f
    iget v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Qos:I

    goto :goto_e
.end method

.method public setActionName(Ljava/lang/String;)V
    .registers 6
    .param p1, "actName"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 107
    iput-object p1, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ActionName:Ljava/lang/String;

    .line 111
    :goto_a
    return-void

    .line 109
    :cond_b
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/service/JNIActionInfo;->SetActionName(JLjava/lang/String;)V

    goto :goto_a
.end method

.method public setQos(I)V
    .registers 6
    .param p1, "qos"    # I

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 210
    iput p1, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_Qos:I

    .line 214
    :goto_a
    return-void

    .line 212
    :cond_b
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/service/JNIActionInfo;->SetQos(JI)V

    goto :goto_a
.end method

.method public setUserHeaderList(Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/upnp/uda/http/IHttpHeader;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "usrHdrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/upnp/uda/http/IHttpHeader;>;"
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1b

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "arrhdrList":[Lcom/lge/upnp/uda/http/IHttpHeader;
    if-eqz p1, :cond_14

    .line 269
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/lge/upnp/uda/http/IHttpHeader;

    .line 270
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 272
    :cond_14
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/ActionInfo;->m_ObjId:J

    invoke-static {v2, v3, v0}, Lcom/lge/upnp/uda/service/JNIActionInfo;->SetUserHeaderList(J[Lcom/lge/upnp/uda/http/IHttpHeader;)Z

    move-result v1

    .line 275
    .end local v0    # "arrhdrList":[Lcom/lge/upnp/uda/http/IHttpHeader;
    :goto_1a
    return v1

    .line 274
    :cond_1b
    iput-object p1, p0, Lcom/lge/upnp/uda/service/ActionInfo;->mUsrHdrList:Ljava/util/ArrayList;

    .line 275
    const/4 v1, 0x1

    goto :goto_1a
.end method
