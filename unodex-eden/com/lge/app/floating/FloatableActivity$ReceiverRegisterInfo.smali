.class Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
.super Ljava/lang/Object;
.source "FloatableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/FloatableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverRegisterInfo"
.end annotation


# instance fields
.field public broadcastPermission:Ljava/lang/String;

.field public filter:Landroid/content/IntentFilter;

.field public intent:Landroid/content/Intent;

.field public isRegistered:Z

.field public receiver:Landroid/content/BroadcastReceiver;

.field public scheduler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->isRegistered:Z

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;)V
    .registers 2

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;-><init>()V

    return-void
.end method
