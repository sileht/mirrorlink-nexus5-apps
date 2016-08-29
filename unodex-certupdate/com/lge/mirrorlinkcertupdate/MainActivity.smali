.class public Lcom/lge/mirrorlinkcertupdate/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCrtUpdater:Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

.field private mNcm:Ljava/lang/Boolean;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlinkcertupdate/MainActivity;)Lcom/lge/mirrorlinkcertupdate/CrtUpdater;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity;->mCrtUpdater:Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/lge/mirrorlinkcertupdate/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/lge/mirrorlinkcertupdate/MainActivity;->startMirrorLinkServer()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity;->mCrtUpdater:Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    .line 38
    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity;->mContext:Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity;->mNcm:Ljava/lang/Boolean;

    .line 33
    return-void
.end method

.method private showKeyLeakageDialog()V
    .registers 4

    .prologue
    .line 119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    const-string/jumbo v1, "Car mirroring"

    .line 119
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "Please visit LG service center."

    .line 119
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    const v1, 0x1080027

    .line 119
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/lge/mirrorlinkcertupdate/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/lge/mirrorlinkcertupdate/MainActivity$2;-><init>(Lcom/lge/mirrorlinkcertupdate/MainActivity;)V

    const v2, 0x104000a

    .line 119
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 118
    return-void
.end method

.method private startMirrorLinkServer()V
    .registers 6

    .prologue
    .line 95
    iget-object v2, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity;->mNcm:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 96
    return-void

    .line 98
    :cond_9
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.lge.mirrorlink"

    const-string/jumbo v4, "com.lge.mirrorlink.MirrorLinkSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    :try_start_1c
    invoke-virtual {p0, v1}, Lcom/lge/mirrorlinkcertupdate/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 94
    :goto_1f
    return-void

    .line 102
    :catch_20
    move-exception v0

    .line 103
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "MainActivity"

    const-string/jumbo v3, "ActivityNotFoundException Happens !"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method private verifyPrivateKey()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity;->mCrtUpdater:Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    invoke-virtual {v1}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->verifyPrivateKey()I

    move-result v0

    .line 109
    .local v0, "rt":I
    if-nez v0, :cond_f

    .line 110
    invoke-direct {p0}, Lcom/lge/mirrorlinkcertupdate/MainActivity;->startMirrorLinkServer()V

    .line 111
    invoke-virtual {p0}, Lcom/lge/mirrorlinkcertupdate/MainActivity;->finish()V

    .line 107
    :cond_e
    :goto_e
    return-void

    .line 112
    :cond_f
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 113
    const-string/jumbo v1, "MainActivity"

    const-string/jumbo v2, "Private Key Leakage!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0}, Lcom/lge/mirrorlinkcertupdate/MainActivity;->showKeyLeakageDialog()V

    goto :goto_e
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/lge/mirrorlinkcertupdate/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "ncm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity;->mNcm:Ljava/lang/Boolean;

    .line 46
    invoke-virtual {p0}, Lcom/lge/mirrorlinkcertupdate/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity;->mContext:Landroid/content/Context;

    .line 47
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.appbox.commonservice.update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "svcIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.lge.appbox.client"

    const-string/jumbo v3, "com.lge.appbox.service.AppBoxCommonService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    const-string/jumbo v2, "packagename"

    invoke-virtual {p0}, Lcom/lge/mirrorlinkcertupdate/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "update"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v1}, Lcom/lge/mirrorlinkcertupdate/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 54
    new-instance v2, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    iget-object v3, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity;->mCrtUpdater:Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    .line 56
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/lge/mirrorlinkcertupdate/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/lge/mirrorlinkcertupdate/MainActivity$1;-><init>(Lcom/lge/mirrorlinkcertupdate/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method
