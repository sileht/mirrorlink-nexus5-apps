.class Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$3;
.super Landroid/database/ContentObserver;
.source "AssistedDialPhoneStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;


# direct methods
.method constructor <init>(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;Landroid/os/Handler;)V
    .registers 3
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$3;->this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    .line 88
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 91
    if-nez p2, :cond_3

    .line 104
    :cond_2
    :goto_2
    return-void

    .line 95
    :cond_3
    const-string v0, "AssistedDial"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mRefSettingsObserver : onChange selfChange="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v0, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    const-string v0, "AssistedDial"

    const-string v1, "Reference Country Setting changed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$3;->this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry(Z)Lcom/lge/telephony/LGReferenceCountry;

    .line 103
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$3;->this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    # invokes: Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->notifyChangeForReload()V
    invoke-static {v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->access$2(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;)V

    goto :goto_2
.end method
