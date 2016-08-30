.class public Lcom/lge/app/permission/RequestPermissionsActivity;
.super Landroid/app/Activity;
.source "RequestPermissionsActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z = true

.field private static final EXTRA_BINDERS:Ljava/lang/String; = "com.lge.app.permission.binder"

.field private static final EXTRA_FULL_SCREEN_UI:Ljava/lang/String; = "com.lge.app.permission.full_screen"

.field private static final EXTRA_PERMISSIONS:Ljava/lang/String; = "com.lge.app.permission.permissions"

.field private static final EXTRA_PREVIOUS_ACTIVITY_INTENT:Ljava/lang/String; = "com.lge.app.permission.previous_activity_intent"

.field private static final EXTRA_PREVIOUS_BROADCAST_INTENT:Ljava/lang/String; = "com.lge.app.permission.previous_broadcast_intent"

.field private static final EXTRA_PREVIOUS_SERVICE_INTENT:Ljava/lang/String; = "com.lge.app.permission.previous_service_intent"

.field private static final EXTRA_STATUSBAR_COLOR:Ljava/lang/String; = "com.lge.app.permission.statusbar_color"

.field private static final EXTRA_UIPROVIDER:Ljava/lang/String; = "com.lge.app.permission.ui_provider"

.field private static final EXTRA_WIDGET_UPDATE_INTENT:Ljava/lang/String; = "com.lge.app.permission.appwidget_update_intent"

.field private static final KEY_CLIENT_BINDER:Ljava/lang/String; = "com.lge.app.permission.client_binder"

.field private static final KEY_SERVICE_BINDER:Ljava/lang/String; = "com.lge.app.permission.service_binder"

.field private static final PERMISSIONS_REQUEST_ALL_PERMISSIONS:I = 0x1

.field private static final PREFIX:Ljava/lang/String; = "com.lge.app.permission."

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBindClient:Lcom/lge/app/permission/IClient;

.field private mBindService:Lcom/lge/app/permission/IService;

.field private mCanRequestPermission:Z

.field private mIsFullScreenUiRequested:Z

.field private mIsRestarted:Z

.field private mPermissions:[Ljava/lang/String;

.field private mPreviousActivityIntent:Landroid/content/Intent;

.field private mPreviousBroadcastIntent:Landroid/content/Intent;

.field private mPreviousServiceIntent:Landroid/content/Intent;

.field private mRemainingPermissions:[Ljava/lang/String;

.field private mUiProvider:Lcom/lge/app/permission/GuideUiProvider;

.field private mWidgetUpdateIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-class v0, Lcom/lge/app/permission/RequestPermissionsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/lge/app/permission/RequestPermissionsActivity;->$assertionsDisabled:Z

    .line 69
    const-class v0, Lcom/lge/app/permission/RequestPermissionsActivity;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 69
    sput-object v0, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    .line 88
    return-void

    .line 67
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    iput-boolean v1, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mIsRestarted:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mCanRequestPermission:Z

    .line 101
    iput-boolean v1, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mIsFullScreenUiRequested:Z

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/lge/app/permission/RequestPermissionsActivity;)V
    .registers 1

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->requestPermissions()V

    return-void
.end method

.method private finishWithNoAni()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 667
    invoke-virtual {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->finish()V

    .line 668
    invoke-virtual {p0, v0, v0}, Lcom/lge/app/permission/RequestPermissionsActivity;->overridePendingTransition(II)V

    .line 669
    return-void
.end method

.method static getIntentForAppWidget(Landroid/content/Context;[Ljava/lang/String;Landroid/content/Intent;Lcom/lge/app/permission/GuideUiProvider;)Landroid/content/Intent;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "updateIntent"    # Landroid/content/Intent;
    .param p3, "uiProvider"    # Lcom/lge/app/permission/GuideUiProvider;

    .prologue
    .line 200
    invoke-static {p0, p1, p3}, Lcom/lge/app/permission/RequestPermissionsActivity;->makeIntent(Landroid/content/Context;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)Landroid/content/Intent;

    move-result-object v0

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.app.permission.appwidget_update_intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 207
    sget-object v1, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preparing intent for appwidget: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-object v0
.end method

.method private getRequiredPermissions()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method private handleAllPermissionsGranted()V
    .registers 7

    .prologue
    .line 387
    sget-boolean v4, Lcom/lge/app/permission/RequestPermissionsActivity;->$assertionsDisabled:Z

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 389
    :cond_12
    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    if-eqz v4, :cond_35

    .line 390
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 391
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 392
    .local v1, "flags":I
    const/high16 v4, 0x10000

    or-int/2addr v1, v4

    .line 393
    const/high16 v4, 0x2000000

    or-int/2addr v1, v4

    .line 394
    const v4, -0x10000001

    and-int/2addr v1, v4

    .line 395
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0, v2}, Lcom/lge/app/permission/RequestPermissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 415
    .end local v1    # "flags":I
    .end local v2    # "i":Landroid/content/Intent;
    :cond_31
    :goto_31
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->finishWithNoAni()V

    .line 416
    return-void

    .line 397
    :cond_35
    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPreviousServiceIntent:Landroid/content/Intent;

    if-eqz v4, :cond_3f

    .line 398
    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPreviousServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/lge/app/permission/RequestPermissionsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_31

    .line 399
    :cond_3f
    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPreviousBroadcastIntent:Landroid/content/Intent;

    if-eqz v4, :cond_51

    .line 402
    invoke-virtual {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 401
    invoke-static {v4}, Lcom/lge/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/lge/content/LocalBroadcastManager;

    move-result-object v3

    .line 403
    .local v3, "lbm":Lcom/lge/content/LocalBroadcastManager;
    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPreviousBroadcastIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/lge/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_31

    .line 404
    .end local v3    # "lbm":Lcom/lge/content/LocalBroadcastManager;
    :cond_51
    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mWidgetUpdateIntent:Landroid/content/Intent;

    if-eqz v4, :cond_62

    .line 405
    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mWidgetUpdateIntent:Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/lge/app/permission/RequestPermissionsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 406
    sget-object v4, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    const-string v5, "update widget broadcast"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 407
    :cond_62
    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mBindClient:Lcom/lge/app/permission/IClient;

    if-eqz v4, :cond_31

    .line 409
    :try_start_66
    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mBindClient:Lcom/lge/app/permission/IClient;

    invoke-interface {v4}, Lcom/lge/app/permission/IClient;->connected()V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6b} :catch_6c

    goto :goto_31

    .line 410
    :catch_6c
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_31
.end method

.method private handleSomePermissionsNotGranted()V
    .registers 4

    .prologue
    .line 420
    sget-boolean v0, Lcom/lge/app/permission/RequestPermissionsActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 422
    :cond_12
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->needFullScreenUi()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 423
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->setupFullScreenUi()V

    .line 458
    :goto_1b
    return-void

    .line 425
    :cond_1c
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->makeTransparent()V

    .line 427
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    .line 426
    invoke-static {p0, v0}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasForceDeniedPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    .line 427
    if-nez v0, :cond_33

    .line 428
    iget-boolean v0, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mCanRequestPermission:Z

    if-eqz v0, :cond_2f

    .line 432
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->requestPermissions()V

    goto :goto_1b

    .line 439
    :cond_2f
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->finishWithNoAni()V

    goto :goto_1b

    .line 448
    :cond_33
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mRemainingPermissions:[Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mUiProvider:Lcom/lge/app/permission/GuideUiProvider;

    .line 449
    new-instance v2, Lcom/lge/app/permission/RequestPermissionsActivity$1;

    invoke-direct {v2, p0}, Lcom/lge/app/permission/RequestPermissionsActivity$1;-><init>(Lcom/lge/app/permission/RequestPermissionsActivity;)V

    .line 447
    invoke-static {p0, v0, v1, v2}, Lcom/lge/app/permission/RequestPermissionsActivity;->showPopup(Landroid/app/Activity;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1b
.end method

.method private isAllGranted([Ljava/lang/String;[I)Z
    .registers 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResult"    # [I

    .prologue
    .line 461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_6

    .line 467
    const/4 v1, 0x1

    :goto_5
    return v1

    .line 462
    :cond_6
    aget v1, p2, v0

    if-eqz v1, :cond_14

    .line 463
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/lge/app/permission/RequestPermissionsActivity;->isPermissionRequired(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 464
    const/4 v1, 0x0

    goto :goto_5

    .line 461
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isPermissionRequired(Ljava/lang/String;)Z
    .registers 3
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getRequiredPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static makeIntent(Landroid/content/Context;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)Landroid/content/Intent;
    .registers 5
    .param p0, "callingContext"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "uiProvider"    # Lcom/lge/app/permission/GuideUiProvider;

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    .line 107
    invoke-interface {p2}, Lcom/lge/app/permission/GuideUiProvider;->getRequestPermissionsActivity()Ljava/lang/Class;

    move-result-object v1

    .line 106
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.app.permission.ui_provider"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 109
    const-string v1, "com.lge.app.permission.permissions"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_26

    .line 113
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    :cond_26
    return-object v0
.end method

.method private makeTransparent()V
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 616
    invoke-virtual {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 618
    return-void
.end method

.method private needFullScreenUi()Z
    .registers 2

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mIsFullScreenUiRequested:Z

    return v0
.end method

.method private requestPermissions()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 481
    iget-boolean v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mIsRestarted:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mCanRequestPermission:Z

    if-nez v2, :cond_11

    .line 483
    :cond_9
    sget-object v2, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    .line 484
    const-string v3, "requestPermissions() ignored during permission request process."

    .line 483
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_10
    return-void

    .line 490
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v1, "unsatisfiedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getRequiredPermissions()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_1c
    if-lt v2, v5, :cond_2c

    .line 498
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_54

    .line 499
    new-instance v2, Ljava/lang/RuntimeException;

    .line 500
    const-string v3, "Request permission activity was called even though all permissions are satisfied."

    .line 499
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 491
    :cond_2c
    aget-object v0, v4, v2

    .line 492
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/app/permission/RequestPermissionsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_51

    .line 493
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v6, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "permission "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 495
    const-string v8, " unsatisfied. adding."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 494
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 503
    .end local v0    # "permission":Ljava/lang/String;
    :cond_54
    sget-object v2, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    const-string v4, "real request permission"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 505
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 506
    const/4 v4, 0x1

    .line 504
    invoke-virtual {p0, v2, v4}, Lcom/lge/app/permission/RequestPermissionsActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 509
    iput-boolean v3, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mCanRequestPermission:Z

    goto :goto_10
.end method

.method private setupFullScreenUi()V
    .registers 22

    .prologue
    .line 526
    sget v17, Lcom/lge/internal/R$layout;->activity_no_permission:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/app/permission/RequestPermissionsActivity;->setContentView(I)V

    .line 529
    sget v17, Lcom/lge/internal/R$id;->activity_no_permission_title:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/app/permission/RequestPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 531
    .local v16, "titleView":Landroid/widget/TextView;
    const-string v17, "No permissions."

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    sget v17, Lcom/lge/internal/R$id;->activity_no_permission_message:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/app/permission/RequestPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 536
    .local v9, "messageView":Landroid/widget/TextView;
    sget v17, Lcom/lge/internal/R$id;->activity_no_permission_button:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/app/permission/RequestPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 538
    .local v4, "b":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    move-object/from16 v17, v0

    .line 537
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasForceDeniedPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v17

    .line 538
    if-nez v17, :cond_100

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/permission/RequestPermissionsActivity;->mUiProvider:Lcom/lge/app/permission/GuideUiProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/lge/app/permission/GuideUiProvider;->getAppName(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 541
    .local v3, "appName":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/permission/RequestPermissionsActivity;->mUiProvider:Lcom/lge/app/permission/GuideUiProvider;

    move-object/from16 v17, v0

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    .line 541
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/lge/app/permission/GuideUiProvider;->getReasonForRequestingPermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 545
    .local v11, "reason":Ljava/lang/CharSequence;
    sget v17, Lcom/lge/internal/R$string;->reason_for_permission:I

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 546
    aput-object v3, v18, v19

    const/16 v19, 0x1

    aput-object v11, v18, v19

    .line 544
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/lge/app/permission/RequestPermissionsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 547
    .local v8, "message":Ljava/lang/CharSequence;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    sget v17, Lcom/lge/internal/R$string;->allow_access:I

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    .line 550
    new-instance v17, Lcom/lge/app/permission/RequestPermissionsActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/app/permission/RequestPermissionsActivity$2;-><init>(Lcom/lge/app/permission/RequestPermissionsActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    .end local v8    # "message":Ljava/lang/CharSequence;
    .end local v11    # "reason":Ljava/lang/CharSequence;
    :goto_a2
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    new-instance v18, Landroid/graphics/drawable/ColorDrawable;

    const/16 v19, -0x1

    invoke-direct/range {v18 .. v19}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 598
    .local v7, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 599
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 602
    const v18, 0x10100

    .line 601
    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->addFlags(I)V

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "com.lge.app.permission.statusbar_color"

    const/high16 v19, -0x1000000

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 606
    .local v13, "statusBarColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 610
    sget-boolean v17, Lcom/lge/app/permission/RequestPermissionsActivity;->$assertionsDisabled:Z

    if-nez v17, :cond_1d6

    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->isFloating()Z

    move-result v17

    if-eqz v17, :cond_1d6

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 556
    .end local v3    # "appName":Ljava/lang/CharSequence;
    .end local v7    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "statusBarColor":I
    :cond_100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/permission/RequestPermissionsActivity;->mUiProvider:Lcom/lge/app/permission/GuideUiProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/lge/app/permission/GuideUiProvider;->getAppName(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 557
    .restart local v3    # "appName":Ljava/lang/CharSequence;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .local v12, "sb":Ljava/lang/StringBuilder;
    sget v17, Lcom/lge/internal/R$string;->allow_app_to:I

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 559
    aput-object v3, v18, v19

    .line 558
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/lge/app/permission/RequestPermissionsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 561
    .local v6, "groupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/permission/RequestPermissionsActivity;->mRemainingPermissions:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_14c
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_1aa

    .line 571
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_156
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1be

    .line 576
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    sget v17, Lcom/lge/internal/R$id;->activity_no_permission_sub_message:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/app/permission/RequestPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 582
    .local v15, "subMessageView":Landroid/widget/TextView;
    sget v17, Lcom/lge/internal/R$string;->instructions_to_go_permission_settings:I

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 583
    aput-object v3, v18, v19

    .line 581
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/lge/app/permission/RequestPermissionsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 584
    .local v14, "subMessage":Ljava/lang/CharSequence;
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    sget v17, Lcom/lge/internal/R$string;->go_to_settings:I

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    .line 587
    new-instance v17, Lcom/lge/app/permission/RequestPermissionsActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/app/permission/RequestPermissionsActivity$3;-><init>(Lcom/lge/app/permission/RequestPermissionsActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a2

    .line 561
    .end local v14    # "subMessage":Ljava/lang/CharSequence;
    .end local v15    # "subMessageView":Landroid/widget/TextView;
    :cond_1aa
    aget-object v10, v19, v18

    .line 564
    .local v10, "p":Ljava/lang/String;
    :try_start_1ac
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/lge/app/permission/RequestPermissionsHelper;->getPermissionGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 563
    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ac .. :try_end_1b9} :catch_1d7

    .line 561
    :goto_1b9
    add-int/lit8 v17, v18, 0x1

    move/from16 v18, v17

    goto :goto_14c

    .line 571
    .end local v10    # "p":Ljava/lang/String;
    :cond_1be
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 572
    .local v5, "g":Ljava/lang/String;
    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string v18, "- "

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_156

    .line 611
    .end local v5    # "g":Ljava/lang/String;
    .end local v6    # "groupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v13    # "statusBarColor":I
    :cond_1d6
    return-void

    .end local v7    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "statusBarColor":I
    .restart local v6    # "groupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "p":Ljava/lang/String;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :catch_1d7
    move-exception v17

    goto :goto_1b9
.end method

.method static showPopup(Landroid/app/Activity;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 16
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "uiProvider"    # Lcom/lge/app/permission/GuideUiProvider;
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v10, 0x0

    .line 623
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 624
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-interface {p2, p0, p1}, Lcom/lge/app/permission/GuideUiProvider;->getAppName(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 625
    .local v0, "appName":Ljava/lang/CharSequence;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 626
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v8, "Cannot:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 628
    .local v4, "groupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v11, p1

    move v9, v10

    :goto_1b
    if-lt v9, v11, :cond_68

    .line 632
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_21
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_77

    .line 639
    sget v8, Lcom/lge/internal/R$string;->instructions_to_go_permission_settings:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 640
    aput-object v0, v9, v10

    .line 638
    invoke-virtual {p0, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 641
    .local v5, "message2":Ljava/lang/CharSequence;
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 645
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 646
    sget v9, Lcom/lge/internal/R$string;->cancel:I

    .line 647
    new-instance v10, Lcom/lge/app/permission/RequestPermissionsActivity$4;

    invoke-direct {v10}, Lcom/lge/app/permission/RequestPermissionsActivity$4;-><init>()V

    .line 646
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 652
    sget v9, Lcom/lge/internal/R$string;->go_to_settings:I

    .line 653
    new-instance v10, Lcom/lge/app/permission/RequestPermissionsActivity$5;

    invoke-direct {v10, p0}, Lcom/lge/app/permission/RequestPermissionsActivity$5;-><init>(Landroid/app/Activity;)V

    .line 652
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 659
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 660
    .local v2, "dialog":Landroid/app/AlertDialog;
    if-eqz p3, :cond_64

    .line 661
    invoke-virtual {v2, p3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 663
    :cond_64
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 664
    return-void

    .line 628
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .end local v5    # "message2":Ljava/lang/CharSequence;
    :cond_68
    aget-object v6, p1, v9

    .line 630
    .local v6, "p":Ljava/lang/String;
    invoke-static {p0, v6}, Lcom/lge/app/permission/RequestPermissionsHelper;->getPermissionGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 629
    check-cast v8, Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 628
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_1b

    .line 632
    .end local v6    # "p":Ljava/lang/String;
    :cond_77
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 633
    .local v3, "g":Ljava/lang/String;
    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const-string v9, "- "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21
.end method

.method static startForActivity(Landroid/app/Activity;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)V
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "uiProvider"    # Lcom/lge/app/permission/GuideUiProvider;

    .prologue
    .line 132
    invoke-static {p0, p1, p2}, Lcom/lge/app/permission/RequestPermissionsActivity;->makeIntent(Landroid/content/Context;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)Landroid/content/Intent;

    move-result-object v1

    .line 135
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.lge.app.permission.previous_activity_intent"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 138
    const/high16 v3, 0x2000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v2

    .line 144
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/16 v3, 0x23

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getStatusBarColor()I

    move-result v4

    .line 144
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 146
    .local v0, "color":I
    const-string v3, "com.lge.app.permission.statusbar_color"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    sget-object v3, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Launching from activity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 150
    const-string v5, " with intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v3, "com.lge.app.permission.full_screen"

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    invoke-static {p0, v1}, Lcom/lge/app/permission/RequestPermissionsActivity;->startWithoutAni(Landroid/content/Context;Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 159
    return-void
.end method

.method static startForBindService(Landroid/content/Context;Landroid/content/ComponentName;[Ljava/lang/String;Lcom/lge/app/permission/IClient$Stub;Landroid/os/IBinder;)V
    .registers 11
    .param p0, "callingContext"    # Landroid/content/Context;
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "client"    # Lcom/lge/app/permission/IClient$Stub;
    .param p4, "service"    # Landroid/os/IBinder;

    .prologue
    .line 224
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 226
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.lge.app.permission.client_binder"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 228
    const-string v2, "com.lge.app.permission.service_binder"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 229
    const-string v2, "com.lge.app.permission.binder"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 230
    const-string v2, "com.lge.app.permission.permissions"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_34

    .line 232
    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 234
    const/high16 v2, 0x8000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    :cond_34
    sget-object v2, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Launching for bind service: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    new-instance v4, Landroid/content/ComponentName;

    .line 240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 239
    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 240
    const-string v4, " with intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 241
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 238
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {p0, v1}, Lcom/lge/app/permission/RequestPermissionsActivity;->startWithoutAni(Landroid/content/Context;Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method static startForReceiver(Landroid/content/Context;[Ljava/lang/String;Landroid/content/Intent;Lcom/lge/app/permission/GuideUiProvider;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "broadcastIntent"    # Landroid/content/Intent;
    .param p3, "uiProvider"    # Lcom/lge/app/permission/GuideUiProvider;

    .prologue
    .line 183
    invoke-static {p0, p1, p3}, Lcom/lge/app/permission/RequestPermissionsActivity;->makeIntent(Landroid/content/Context;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)Landroid/content/Intent;

    move-result-object v0

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.app.permission.previous_broadcast_intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    sget-object v1, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launching from broadcast receiver: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 192
    const-string v3, " with intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {p0, v0}, Lcom/lge/app/permission/RequestPermissionsActivity;->startWithoutAni(Landroid/content/Context;Landroid/content/Intent;)V

    .line 195
    return-void
.end method

.method static startForService(Landroid/app/Service;[Ljava/lang/String;Landroid/content/Intent;Lcom/lge/app/permission/GuideUiProvider;)V
    .registers 9
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "serviceIntent"    # Landroid/content/Intent;
    .param p3, "uiProvider"    # Lcom/lge/app/permission/GuideUiProvider;

    .prologue
    .line 164
    invoke-static {p0, p1, p3}, Lcom/lge/app/permission/RequestPermissionsActivity;->makeIntent(Landroid/content/Context;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)Landroid/content/Intent;

    move-result-object v0

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.app.permission.previous_service_intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    sget-object v1, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launching from service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    const-string v3, " with intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p0, v0}, Lcom/lge/app/permission/RequestPermissionsActivity;->startWithoutAni(Landroid/content/Context;Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 178
    return-void
.end method

.method private static startWithoutAni(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p0, "callingContext"    # Landroid/content/Context;
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_d

    .line 123
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "callingContext":Landroid/content/Context;
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 125
    :cond_d
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 251
    if-eqz p1, :cond_144

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mIsRestarted:Z

    .line 252
    invoke-virtual {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 253
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.lge.app.permission.permissions"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    .line 255
    invoke-static {p0, v2}, Lcom/lge/app/permission/RequestPermissionsHelper;->filterOutGrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 254
    iput-object v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mRemainingPermissions:[Ljava/lang/String;

    .line 258
    const-string v2, "com.lge.app.permission.ui_provider"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/lge/app/permission/GuideUiProvider;

    .line 257
    iput-object v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mUiProvider:Lcom/lge/app/permission/GuideUiProvider;

    .line 260
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.lge.app.permission.full_screen"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 259
    iput-boolean v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mIsFullScreenUiRequested:Z

    .line 261
    const-string v2, "com.lge.app.permission.previous_activity_intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_147

    .line 263
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.lge.app.permission.previous_activity_intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 262
    iput-object v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    .line 295
    :cond_48
    :goto_48
    sget-object v2, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCreate. package="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 296
    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-object v2, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mPermissions="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v2, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mUiProvider="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mUiProvider:Lcom/lge/app/permission/GuideUiProvider;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget-object v2, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mPreviousActivityIntent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-object v2, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mPreviousServiceIntent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPreviousServiceIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sget-object v2, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mPreviousBroadcastIntent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPreviousBroadcastIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v2, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mWidgetUpdateIntent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mWidgetUpdateIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object v2, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mBindClient="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mBindClient:Lcom/lge/app/permission/IClient;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v2, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mBindService="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mBindService:Lcom/lge/app/permission/IService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object v2, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mIsFullScreenUiRequested="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mIsFullScreenUiRequested:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_143

    .line 309
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->handleSomePermissionsNotGranted()V

    .line 311
    :cond_143
    return-void

    .line 251
    .end local v1    # "i":Landroid/content/Intent;
    :cond_144
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 264
    .restart local v1    # "i":Landroid/content/Intent;
    :cond_147
    const-string v2, "com.lge.app.permission.previous_service_intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15f

    .line 266
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.lge.app.permission.previous_service_intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 265
    iput-object v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPreviousServiceIntent:Landroid/content/Intent;

    goto/16 :goto_48

    .line 267
    :cond_15f
    const-string v2, "com.lge.app.permission.previous_broadcast_intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 269
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.lge.app.permission.previous_broadcast_intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 268
    iput-object v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPreviousBroadcastIntent:Landroid/content/Intent;

    goto/16 :goto_48

    .line 270
    :cond_177
    const-string v2, "com.lge.app.permission.appwidget_update_intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 272
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.lge.app.permission.appwidget_update_intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 271
    iput-object v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mWidgetUpdateIntent:Landroid/content/Intent;

    goto/16 :goto_48

    .line 273
    :cond_18f
    const-string v2, "com.lge.app.permission.binder"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 275
    invoke-virtual {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 276
    const-string v3, "com.lge.app.permission.binder"

    .line 275
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 276
    const-string v3, "com.lge.app.permission.client_binder"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 275
    invoke-static {v2}, Lcom/lge/app/permission/IClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/app/permission/IClient;

    move-result-object v2

    .line 274
    iput-object v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mBindClient:Lcom/lge/app/permission/IClient;

    .line 278
    invoke-virtual {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 279
    const-string v3, "com.lge.app.permission.binder"

    .line 278
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 279
    const-string v3, "com.lge.app.permission.service_binder"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 278
    invoke-static {v2}, Lcom/lge/app/permission/IService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/app/permission/IService;

    move-result-object v2

    .line 277
    iput-object v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mBindService:Lcom/lge/app/permission/IService;

    .line 287
    :try_start_1c3
    iget-object v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mBindService:Lcom/lge/app/permission/IService;

    invoke-interface {v2}, Lcom/lge/app/permission/IService;->getUiProviderAsBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 288
    const-string v3, "ui_provider"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 287
    check-cast v2, Lcom/lge/app/permission/GuideUiProvider;

    .line 286
    iput-object v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mUiProvider:Lcom/lge/app/permission/GuideUiProvider;
    :try_end_1d3
    .catch Landroid/os/RemoteException; {:try_start_1c3 .. :try_end_1d3} :catch_1d5

    goto/16 :goto_48

    .line 289
    :catch_1d5
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/lge/app/permission/RequestPermissionsActivity;->$assertionsDisabled:Z

    if-nez v2, :cond_48

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 317
    sget-boolean v0, Lcom/lge/app/permission/RequestPermissionsActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 319
    :cond_d
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 323
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 326
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    .line 325
    invoke-static {p0, v0}, Lcom/lge/app/permission/RequestPermissionsHelper;->filterOutGrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 324
    iput-object v0, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mRemainingPermissions:[Ljava/lang/String;

    .line 328
    sget-object v0, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remaining permissions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mRemainingPermissions:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 369
    .line 370
    const-string v3, "com.lge.app.permission.request_history"

    .line 369
    invoke-virtual {p0, v3, v2}, Lcom/lge/app/permission/RequestPermissionsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 371
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 372
    .local v1, "prefs":Landroid/content/SharedPreferences$Editor;
    array-length v3, p2

    :goto_d
    if-lt v2, v3, :cond_1e

    .line 375
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 376
    invoke-direct {p0, p2, p3}, Lcom/lge/app/permission/RequestPermissionsActivity;->isAllGranted([Ljava/lang/String;[I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 377
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->handleAllPermissionsGranted()V

    .line 382
    :goto_1b
    iput-boolean v4, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mCanRequestPermission:Z

    .line 383
    return-void

    .line 372
    :cond_1e
    aget-object v0, p2, v2

    .line 373
    .local v0, "p":Ljava/lang/String;
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 379
    .end local v0    # "p":Ljava/lang/String;
    :cond_26
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->handleSomePermissionsNotGranted()V

    goto :goto_1b
.end method

.method protected onResume()V
    .registers 7

    .prologue
    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 337
    iget-object v3, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    .line 336
    invoke-static {p0, v3}, Lcom/lge/app/permission/RequestPermissionsHelper;->filterOutGrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "newRemainingPermissions":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 339
    .local v2, "oldP":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mRemainingPermissions:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 340
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 341
    .local v0, "newP":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 342
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 343
    iput-object v1, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mRemainingPermissions:[Ljava/lang/String;

    .line 348
    :cond_2b
    sget-object v3, Lcom/lge/app/permission/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onResume. package="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 349
    const-string v5, " intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v3, p0, Lcom/lge/app/permission/RequestPermissionsActivity;->mPermissions:[Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 357
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsActivity;->handleAllPermissionsGranted()V

    .line 359
    :cond_60
    return-void
.end method
