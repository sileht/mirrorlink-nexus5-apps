.class Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;
.super Ljava/lang/Object;
.source "AspSessionProtoOpcode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/session/AspSessionProtoOpcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendReqProto"
.end annotation


# instance fields
.field mReqType:I

.field mSession:Lcom/lge/wfds/session/AspSession;

.field final synthetic this$0:Lcom/lge/wfds/session/AspSessionProtoOpcode;


# direct methods
.method public constructor <init>(Lcom/lge/wfds/session/AspSessionProtoOpcode;ILcom/lge/wfds/session/AspSession;)V
    .registers 5
    .param p2, "reqType"    # I
    .param p3, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;->this$0:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p2, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;->mReqType:I

    .line 111
    new-instance v0, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v0, p3}, Lcom/lge/wfds/session/AspSession;-><init>(Lcom/lge/wfds/session/AspSession;)V

    iput-object v0, p0, Lcom/lge/wfds/session/AspSessionProtoOpcode$SendReqProto;->mSession:Lcom/lge/wfds/session/AspSession;

    .line 112
    return-void
.end method
