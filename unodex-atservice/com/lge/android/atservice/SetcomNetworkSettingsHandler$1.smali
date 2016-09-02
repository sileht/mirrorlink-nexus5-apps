.class Lcom/lge/android/atservice/SetcomNetworkSettingsHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SetcomNetworkSettingsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler$1;->this$0:Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 423
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler$1;->this$0:Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;

    iget-object v2, v2, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_32

    .line 426
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler$1;->this$0:Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;

    iget-object v2, v2, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 428
    .local v1, "mNfcState":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_21

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 429
    :cond_21
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler$1;->this$0:Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;

    invoke-static {v2}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->-get0(Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 430
    :try_start_28
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler$1;->this$0:Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;

    invoke-static {v2}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->-get0(Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_33

    monitor-exit v3

    .line 422
    .end local v1    # "mNfcState":I
    :cond_32
    return-void

    .line 429
    .restart local v1    # "mNfcState":I
    :catchall_33
    move-exception v2

    monitor-exit v3

    throw v2
.end method
