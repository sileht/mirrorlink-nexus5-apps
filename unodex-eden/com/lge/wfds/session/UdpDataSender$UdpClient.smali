.class Lcom/lge/wfds/session/UdpDataSender$UdpClient;
.super Landroid/os/AsyncTask;
.source "UdpDataSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/session/UdpDataSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UdpClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[B",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/session/UdpDataSender;


# direct methods
.method private constructor <init>(Lcom/lge/wfds/session/UdpDataSender;)V
    .registers 2

    .prologue
    .line 209
    iput-object p1, p0, Lcom/lge/wfds/session/UdpDataSender$UdpClient;->this$0:Lcom/lge/wfds/session/UdpDataSender;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/wfds/session/UdpDataSender;Lcom/lge/wfds/session/UdpDataSender$UdpClient;)V
    .registers 3

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/lge/wfds/session/UdpDataSender$UdpClient;-><init>(Lcom/lge/wfds/session/UdpDataSender;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/lge/wfds/session/UdpDataSender$UdpClient;->doInBackground([[B)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[B)Ljava/lang/Void;
    .registers 5
    .param p1, "msg"    # [[B

    .prologue
    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_6

    .line 215
    const/4 v1, 0x0

    return-object v1

    .line 213
    :cond_6
    iget-object v1, p0, Lcom/lge/wfds/session/UdpDataSender$UdpClient;->this$0:Lcom/lge/wfds/session/UdpDataSender;

    aget-object v2, p1, v0

    # invokes: Lcom/lge/wfds/session/UdpDataSender;->sendDataPacket([B)V
    invoke-static {v1, v2}, Lcom/lge/wfds/session/UdpDataSender;->access$0(Lcom/lge/wfds/session/UdpDataSender;[B)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
