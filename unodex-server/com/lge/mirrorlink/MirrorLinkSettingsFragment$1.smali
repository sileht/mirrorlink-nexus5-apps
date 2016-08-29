.class Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$1;
.super Landroid/os/Handler;
.source "MirrorLinkSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 151
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 144
    return-void

    .line 148
    :pswitch_9
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-wrap1(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V

    goto :goto_5

    .line 146
    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch
.end method
