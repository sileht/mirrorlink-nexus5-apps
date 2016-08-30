.class public final Lcom/lge/almond/DrmApkManager$DrmApkInfo;
.super Ljava/lang/Object;
.source "DrmApkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/almond/DrmApkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmApkInfo"
.end annotation


# static fields
.field public static final APKLIC_STATUS_INVALID:I = 0x1

.field public static final APKLIC_STATUS_INVALID_PRELOAD:I = 0x2

.field public static final APKLIC_STATUS_VALID:I


# instance fields
.field private licStatus:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/almond/DrmApkManager$DrmApkInfo;->licStatus:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/almond/DrmApkManager$DrmApkInfo;->url:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private setDexInfo(ILjava/lang/String;)V
    .registers 3
    .param p1, "licStatus"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 88
    iput p1, p0, Lcom/lge/almond/DrmApkManager$DrmApkInfo;->licStatus:I

    .line 89
    iput-object p2, p0, Lcom/lge/almond/DrmApkManager$DrmApkInfo;->url:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public getLicenseStatus()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/lge/almond/DrmApkManager$DrmApkInfo;->licStatus:I

    return v0
.end method

.method public getLicenseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/almond/DrmApkManager$DrmApkInfo;->url:Ljava/lang/String;

    return-object v0
.end method
