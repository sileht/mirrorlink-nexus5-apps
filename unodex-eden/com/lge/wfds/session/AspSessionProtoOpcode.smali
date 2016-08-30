.class public Lcom/lge/wfds/session/AspSessionProtoOpcode;
.super Ljava/lang/Object;
.source "AspSessionProtoOpcode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;
    }
.end annotation


# static fields
.field public static final ACK:I = 0xfe

.field public static final ADDED_SESSION:I = 0x1

.field public static final ALLOWED_PORT:I = 0x4

.field public static final DEFERRED_SESSION:I = 0x6

.field public static final NACK:I = 0xff

.field public static final REJECTED_SESSION:I = 0x2

.field public static final REMOVE_SESSION:I = 0x3

.field public static final REQUEST_SESSION:I = 0x0

.field public static final UNKNOWN:I = -0x1

.field public static final VERSION:I = 0x5


# instance fields
.field private mPendedSendReqProto:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode;->mPendedSendReqProto:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode;->mRequestedMap:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode;->mPendedSendReqProto:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode;->mRequestedMap:Ljava/util/Map;

    .line 29
    return-void
.end method

.method public static getReqTypeString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 82
    sparse-switch p0, :sswitch_data_22

    .line 101
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 84
    :sswitch_6
    const-string v0, "REQUEST_SESSION"

    goto :goto_5

    .line 86
    :sswitch_9
    const-string v0, "ADDED_SESSION"

    goto :goto_5

    .line 88
    :sswitch_c
    const-string v0, "REJECTED_SESSION"

    goto :goto_5

    .line 90
    :sswitch_f
    const-string v0, "REMOVE_SESSION"

    goto :goto_5

    .line 92
    :sswitch_12
    const-string v0, "ALLOWED_PORT"

    goto :goto_5

    .line 94
    :sswitch_15
    const-string v0, "VERSION"

    goto :goto_5

    .line 96
    :sswitch_18
    const-string v0, "DEFERRED_SESSION"

    goto :goto_5

    .line 98
    :sswitch_1b
    const-string v0, "ACK"

    goto :goto_5

    .line 100
    :sswitch_1e
    const-string v0, "NACK"

    goto :goto_5

    .line 82
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_9
        0x2 -> :sswitch_c
        0x3 -> :sswitch_f
        0x4 -> :sswitch_12
        0x5 -> :sswitch_15
        0x6 -> :sswitch_18
        0xfe -> :sswitch_1b
        0xff -> :sswitch_1e
    .end sparse-switch
.end method


# virtual methods
.method public getPendedSendReqSession()Lcom/lge/wfds/session/AspSession;
    .registers 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode;->mPendedSendReqProto:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 62
    .local v0, "sendReqProto":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;

    iget-object v1, v1, Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;->mSession:Lcom/lge/wfds/session/AspSession;

    .line 66
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getPendedSendReqType()I
    .registers 3

    .prologue
    .line 52
    iget-object v1, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode;->mPendedSendReqProto:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    .local v0, "sendReqProto":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;

    iget v1, v1, Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;->mReqType:I

    .line 57
    :goto_14
    return v1

    :cond_15
    const/4 v1, -0x1

    goto :goto_14
.end method

.method public getRequestedType(I)I
    .registers 5
    .param p1, "seq"    # I

    .prologue
    .line 36
    const/16 v0, 0x32

    .line 37
    .local v0, "req":I
    iget-object v1, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode;->mRequestedMap:Ljava/util/Map;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode;->mRequestedMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 38
    iget-object v1, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode;->mRequestedMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 40
    :cond_22
    return v0
.end method

.method public hasPendedSendRequest()Z
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode;->mPendedSendReqProto:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public putPendedSendRequest(ILcom/lge/wfds/session/AspSession;)V
    .registers 5
    .param p1, "reqType"    # I
    .param p2, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode;->mPendedSendReqProto:Ljava/util/ArrayList;

    new-instance v1, Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;-><init>(Lcom/lge/wfds/session/AspSessionProtoOpcode;ILcom/lge/wfds/session/AspSession;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public removeAllPendedSendReqSession()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode;->mPendedSendReqProto:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    return-void
.end method

.method public removePendedSendReqSession()V
    .registers 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode;->mPendedSendReqProto:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    .local v0, "sendReqProto":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 75
    :cond_12
    return-void
.end method

.method public setRequestedType(II)V
    .registers 6
    .param p1, "seq"    # I
    .param p2, "type"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode;->mRequestedMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
