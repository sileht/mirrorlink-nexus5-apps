.class public Lcom/lge/upnp/uda/service/Result;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field public static final E_UPNP_ALREADY_LOADED:I = 0x4

.field public static final E_UPNP_ALREADY_STARTED:I = 0x1

.field public static final E_UPNP_DEVINFO_NOT_LOADED:I = -0x4

.field public static final E_UPNP_FAILURE:I = -0x1

.field public static final E_UPNP_HD_RUNNING:I = 0x3

.field public static final E_UPNP_INPROGRESS:I = 0x2

.field public static final E_UPNP_INVALID_PORT:I = -0x6

.field public static final E_UPNP_INVALID_SERVICE:I = -0x5

.field public static final E_UPNP_INVALID_STATE:I = -0x7

.field public static final E_UPNP_SUBSCRIBED_ALREADY:I = 0x5

.field public static final E_UPNP_SUBSCRIBER_NOT_FOUND:I = -0x3

.field public static final E_UPNP_SUCCESS:I = 0x0

.field public static final E_UPNP_XML_ERROR:I = -0x2


# instance fields
.field private mResCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/upnp/uda/service/Result;->mResCode:I

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "resCode"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/lge/upnp/uda/service/Result;->mResCode:I

    .line 54
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/lge/upnp/uda/service/Result;->mResCode:I

    return v0
.end method

.method public setResultCode(I)V
    .registers 2
    .param p1, "resCode"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lge/upnp/uda/service/Result;->mResCode:I

    .line 72
    return-void
.end method
