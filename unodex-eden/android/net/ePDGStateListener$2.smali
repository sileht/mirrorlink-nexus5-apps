.class Landroid/net/ePDGStateListener$2;
.super Landroid/os/Handler;
.source "ePDGStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ePDGStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ePDGStateListener;


# direct methods
.method constructor <init>(Landroid/net/ePDGStateListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/net/ePDGStateListener$2;->this$0:Landroid/net/ePDGStateListener;

    .line 128
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_40

    .line 154
    :goto_5
    return-void

    .line 132
    :sswitch_6
    iget-object v1, p0, Landroid/net/ePDGStateListener$2;->this$0:Landroid/net/ePDGStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {v1, v0}, Landroid/net/ePDGStateListener;->onPDPStateChanged([I)V

    goto :goto_5

    .line 135
    :sswitch_10
    iget-object v1, p0, Landroid/net/ePDGStateListener$2;->this$0:Landroid/net/ePDGStateListener;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {v1, v0}, Landroid/net/ePDGStateListener;->onWiFiStatusChanged(Z)V

    goto :goto_5

    :cond_1b
    const/4 v0, 0x0

    goto :goto_17

    .line 138
    :sswitch_1d
    iget-object v0, p0, Landroid/net/ePDGStateListener$2;->this$0:Landroid/net/ePDGStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/ePDGStateListener;->onErrorStatusChanged(I)V

    goto :goto_5

    .line 142
    :sswitch_25
    iget-object v1, p0, Landroid/net/ePDGStateListener$2;->this$0:Landroid/net/ePDGStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/ePDGStateListener;->onConnectionParamStatus([Ljava/lang/String;)V

    goto :goto_5

    .line 146
    :sswitch_2f
    iget-object v0, p0, Landroid/net/ePDGStateListener$2;->this$0:Landroid/net/ePDGStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/ePDGStateListener;->onCBSErrorStatusChanged(I)V

    goto :goto_5

    .line 151
    :sswitch_37
    iget-object v0, p0, Landroid/net/ePDGStateListener$2;->this$0:Landroid/net/ePDGStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/ePDGStateListener;->onePDGBlockStatusChanged(I)V

    goto :goto_5

    .line 130
    nop

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_6
        0x4 -> :sswitch_10
        0x8 -> :sswitch_1d
        0x10 -> :sswitch_25
        0x20 -> :sswitch_2f
        0x40 -> :sswitch_37
    .end sparse-switch
.end method
