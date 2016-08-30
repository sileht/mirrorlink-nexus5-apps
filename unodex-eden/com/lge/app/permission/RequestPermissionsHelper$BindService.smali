.class Lcom/lge/app/permission/RequestPermissionsHelper$BindService;
.super Ljava/lang/Object;
.source "RequestPermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/permission/RequestPermissionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BindService"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPermissions:[Ljava/lang/String;

.field private mRequestPermissionActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/lge/app/permission/RequestPermissionsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mUiProvider:Lcom/lge/app/permission/GuideUiProvider;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "uiProvider"    # Lcom/lge/app/permission/GuideUiProvider;

    .prologue
    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput-object p1, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->mContext:Landroid/content/Context;

    .line 633
    iput-object p2, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->mPermissions:[Ljava/lang/String;

    .line 635
    invoke-interface {p3}, Lcom/lge/app/permission/GuideUiProvider;->getRequestPermissionsActivity()Ljava/lang/Class;

    move-result-object v0

    .line 634
    iput-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->mRequestPermissionActivity:Ljava/lang/Class;

    .line 636
    iput-object p3, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->mUiProvider:Lcom/lge/app/permission/GuideUiProvider;

    .line 637
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;Lcom/lge/app/permission/RequestPermissionsHelper$BindService;)V
    .registers 5

    .prologue
    .line 630
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/app/permission/RequestPermissionsHelper$BindService;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/app/permission/RequestPermissionsHelper$BindService;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/app/permission/RequestPermissionsHelper$BindService;)Ljava/lang/Class;
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->mRequestPermissionActivity:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/app/permission/RequestPermissionsHelper$BindService;)Lcom/lge/app/permission/GuideUiProvider;
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->mUiProvider:Lcom/lge/app/permission/GuideUiProvider;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/app/permission/RequestPermissionsHelper$BindService;)Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->onBind()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private onBind()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 646
    new-instance v0, Lcom/lge/app/permission/RequestPermissionsHelper$BindService$1;

    invoke-direct {v0, p0}, Lcom/lge/app/permission/RequestPermissionsHelper$BindService$1;-><init>(Lcom/lge/app/permission/RequestPermissionsHelper$BindService;)V

    return-object v0
.end method
