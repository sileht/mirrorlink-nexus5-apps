.class public Lcom/lge/android/atservice/LGATCMDServiceApplication;
.super Landroid/app/Application;
.source "LGATCMDServiceApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/android/atservice/LGATCMDService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "LGATCMD Service Start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/LGATCMDServiceApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 11
    return-void
.end method
