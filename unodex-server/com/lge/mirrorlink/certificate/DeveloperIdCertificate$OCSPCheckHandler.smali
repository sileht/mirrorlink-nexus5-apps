.class Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;
.super Landroid/os/Handler;
.source "DeveloperIdCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OCSPCheckHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;->this$0:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    .line 69
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 81
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 73
    return-void

    .line 77
    :pswitch_9
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;->this$0:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    invoke-static {v0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->-wrap0(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;)Z

    goto :goto_5

    .line 75
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
