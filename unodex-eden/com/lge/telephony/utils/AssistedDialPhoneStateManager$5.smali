.class Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$5;
.super Landroid/telephony/PhoneStateListener;
.source "AssistedDialPhoneStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;


# direct methods
.method constructor <init>(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$5;->this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    .line 149
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$5;->this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->applyServiceState(Landroid/telephony/ServiceState;)V

    .line 152
    return-void
.end method
