.class Lcom/lge/nfcaddon/NfcAdapterAddon$1;
.super Lcom/lge/nfcaddon/ILGSharingMessageCallback$Stub;
.source "NfcAdapterAddon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/nfcaddon/NfcAdapterAddon;->setLGSharingModeCallback(Landroid/content/Context;Lcom/lge/nfcaddon/NfcAdapterAddon$LGSharingCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/nfcaddon/NfcAdapterAddon;


# direct methods
.method constructor <init>(Lcom/lge/nfcaddon/NfcAdapterAddon;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/nfcaddon/NfcAdapterAddon$1;->this$0:Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 1426
    invoke-direct {p0}, Lcom/lge/nfcaddon/ILGSharingMessageCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createPayload()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/lge/nfcaddon/NfcAdapterAddon$1;->this$0:Lcom/lge/nfcaddon/NfcAdapterAddon;

    # getter for: Lcom/lge/nfcaddon/NfcAdapterAddon;->mSharingCallback:Lcom/lge/nfcaddon/NfcAdapterAddon$LGSharingCallback;
    invoke-static {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->access$0(Lcom/lge/nfcaddon/NfcAdapterAddon;)Lcom/lge/nfcaddon/NfcAdapterAddon$LGSharingCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1430
    iget-object v0, p0, Lcom/lge/nfcaddon/NfcAdapterAddon$1;->this$0:Lcom/lge/nfcaddon/NfcAdapterAddon;

    # getter for: Lcom/lge/nfcaddon/NfcAdapterAddon;->mSharingCallback:Lcom/lge/nfcaddon/NfcAdapterAddon$LGSharingCallback;
    invoke-static {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->access$0(Lcom/lge/nfcaddon/NfcAdapterAddon;)Lcom/lge/nfcaddon/NfcAdapterAddon$LGSharingCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon$LGSharingCallback;->createPayload()[B

    move-result-object v0

    .line 1432
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
