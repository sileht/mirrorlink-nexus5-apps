.class public Lcom/lge/mirrorlink/MirrorLinkEnabler;
.super Ljava/lang/Object;
.source "MirrorLinkEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mMlsBinder:Landroid/os/IBinder;

.field private final mMlsConn:Landroid/content/ServiceConnection;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "MirrorLinkEnabler"

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mMlsBinder:Landroid/os/IBinder;

    .line 22
    new-instance v0, Lcom/lge/mirrorlink/MirrorLinkEnabler$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/MirrorLinkEnabler$1;-><init>(Lcom/lge/mirrorlink/MirrorLinkEnabler;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mMlsConn:Landroid/content/ServiceConnection;

    .line 44
    iput-object p1, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mSwitch:Landroid/widget/Switch;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/lge/mirrorlink/MirrorLinkEnabler;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/lge/mirrorlink/MirrorLinkEnabler;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/mirrorlink/MirrorLinkEnabler;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/lge/mirrorlink/MirrorLinkEnabler;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mMlsBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/mirrorlink/MirrorLinkEnabler;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/lge/mirrorlink/MirrorLinkEnabler;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mMlsBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/mirrorlink/MirrorLinkEnabler;)Landroid/widget/Switch;
    .registers 2
    .param p0, "x0"    # Lcom/lge/mirrorlink/MirrorLinkEnabler;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 88
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MirrorLinkEnabler - onCheckedChanged() isChecked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz p2, :cond_27

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mirrorlink.android.app.LAUNCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "intent_start":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 96
    .end local v0    # "intent_start":Landroid/content/Intent;
    :goto_26
    return-void

    .line 93
    :cond_27
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mirrorlink.android.app.TERMINATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "intent_stop":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_26
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mMlsBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_11

    .line 62
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mMlsConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    :cond_11
    return-void
.end method

.method public resume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mirrorlink.android.service.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "intent2":Landroid/content/Intent;
    const-string v1, "com.lge.mirrorlink"

    const-string v2, "com.lge.mirrorlink.commonapi.CommonAPIService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mMlsConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 54
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 56
    :cond_1e
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;Z)V
    .registers 5
    .param p1, "switch_"    # Landroid/widget/Switch;
    .param p2, "wireless_state"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_5

    .line 84
    :goto_4
    return-void

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->TAG:Ljava/lang/String;

    const-string v1, "MirrorLinkEnabler - setSwitch() - isConnected "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    iput-object p1, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mSwitch:Landroid/widget/Switch;

    .line 73
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/lge/mirrorlink/MirrorLinkEnabler$2;

    invoke-direct {v1, p0}, Lcom/lge/mirrorlink/MirrorLinkEnabler$2;-><init>(Lcom/lge/mirrorlink/MirrorLinkEnabler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method
