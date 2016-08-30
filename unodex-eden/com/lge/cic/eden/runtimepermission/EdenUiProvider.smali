.class public Lcom/lge/cic/eden/runtimepermission/EdenUiProvider;
.super Lcom/lge/app/permission/DefaultUiProvider;
.source "EdenUiProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/lge/app/permission/DefaultUiProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisabledFeatures(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 26
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 28
    const-string v0, "Gallery Memories"

    .line 34
    :goto_6
    return-object v0

    .line 29
    :cond_7
    instance-of v0, p1, Landroid/app/Service;

    if-eqz v0, :cond_e

    .line 31
    const-string v0, "Gallery Memories"

    goto :goto_6

    .line 34
    :cond_e
    const-string v0, "Gallery Memories"

    goto :goto_6
.end method

.method public getReasonForRequestingPermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    const v4, 0x7f070007

    .line 13
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_c

    .line 15
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    :goto_b
    return-object v0

    .line 16
    :cond_c
    instance-of v0, p1, Landroid/app/Service;

    if-eqz v0, :cond_15

    .line 18
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 20
    :cond_15
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const-string v3, "CheckPermission"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    .line 21
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method
