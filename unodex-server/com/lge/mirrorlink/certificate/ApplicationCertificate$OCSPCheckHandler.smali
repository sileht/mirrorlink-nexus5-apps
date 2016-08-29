.class Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;
.super Landroid/os/Handler;
.source "ApplicationCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OCSPCheckHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;->this$0:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    .line 82
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 94
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 86
    return-void

    .line 90
    :pswitch_9
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;->this$0:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    invoke-static {v0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->-wrap0(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;)Z

    goto :goto_5

    .line 88
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
