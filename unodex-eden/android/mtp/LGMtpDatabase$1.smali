.class Landroid/mtp/LGMtpDatabase$1;
.super Landroid/content/BroadcastReceiver;
.source "LGMtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/LGMtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/LGMtpDatabase;


# direct methods
.method constructor <init>(Landroid/mtp/LGMtpDatabase;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/mtp/LGMtpDatabase$1;->this$0:Landroid/mtp/LGMtpDatabase;

    .line 170
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 175
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase$1;->this$0:Landroid/mtp/LGMtpDatabase;

    const-string v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/mtp/LGMtpDatabase;->access$0(Landroid/mtp/LGMtpDatabase;I)V

    .line 176
    const-string v2, "level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 177
    .local v1, "newLevel":I
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase$1;->this$0:Landroid/mtp/LGMtpDatabase;

    # getter for: Landroid/mtp/LGMtpDatabase;->mBatteryLevel:I
    invoke-static {v2}, Landroid/mtp/LGMtpDatabase;->access$1(Landroid/mtp/LGMtpDatabase;)I

    move-result v2

    if-eq v1, v2, :cond_3e

    .line 178
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase$1;->this$0:Landroid/mtp/LGMtpDatabase;

    invoke-static {v2, v1}, Landroid/mtp/LGMtpDatabase;->access$2(Landroid/mtp/LGMtpDatabase;I)V

    .line 179
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase$1;->this$0:Landroid/mtp/LGMtpDatabase;

    # getter for: Landroid/mtp/LGMtpDatabase;->mServer:Landroid/mtp/LGMtpServer;
    invoke-static {v2}, Landroid/mtp/LGMtpDatabase;->access$3(Landroid/mtp/LGMtpDatabase;)Landroid/mtp/LGMtpServer;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 181
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase$1;->this$0:Landroid/mtp/LGMtpDatabase;

    # getter for: Landroid/mtp/LGMtpDatabase;->mServer:Landroid/mtp/LGMtpServer;
    invoke-static {v2}, Landroid/mtp/LGMtpDatabase;->access$3(Landroid/mtp/LGMtpDatabase;)Landroid/mtp/LGMtpServer;

    move-result-object v2

    .line 182
    const/16 v3, 0x5001

    .line 181
    invoke-virtual {v2, v3}, Landroid/mtp/LGMtpServer;->sendDevicePropertyChanged(I)V

    .line 186
    .end local v1    # "newLevel":I
    :cond_3e
    return-void
.end method
