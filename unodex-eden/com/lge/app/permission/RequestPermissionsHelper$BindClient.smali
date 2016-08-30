.class Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;
.super Ljava/lang/Object;
.source "RequestPermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/permission/RequestPermissionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BindClient"
.end annotation


# instance fields
.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private mIntent:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "conn"    # Landroid/content/ServiceConnection;
    .param p4, "flags"    # I

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p1, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mContext:Landroid/content/Context;

    .line 540
    iput-object p2, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mIntent:Landroid/content/Intent;

    .line 541
    iput-object p3, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mConn:Landroid/content/ServiceConnection;

    .line 542
    iput p4, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mFlags:I

    .line 543
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILcom/lge/app/permission/RequestPermissionsHelper$BindClient;)V
    .registers 6

    .prologue
    .line 537
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)Landroid/content/Intent;
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)Landroid/content/ServiceConnection;
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)I
    .registers 2

    .prologue
    .line 535
    iget v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mFlags:I

    return v0
.end method

.method static synthetic access$5(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)Z
    .registers 2

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->bind()Z

    move-result v0

    return v0
.end method

.method private bind()Z
    .registers 5

    .prologue
    .line 546
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mIntent:Landroid/content/Intent;

    new-instance v2, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;

    invoke-direct {v2, p0}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;-><init>(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)V

    .line 620
    iget v3, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mFlags:I

    .line 546
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method
