.class public Lcom/lge/mirrorlink/commonapi/CertificationManager;
.super Ljava/lang/Object;
.source "CertificationManager.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/ICertificationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/commonapi/CertificationManager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_Cert"


# instance fields
.field private final mBinder:Lcom/mirrorlink/android/commonapi/ICertificationManager$Stub;

.field private mListener:Lcom/mirrorlink/android/commonapi/ICertificationListener;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/commonapi/CertificationManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CertificationManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/ICertificationListener;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/mirrorlink/android/commonapi/ICertificationListener;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/lge/mirrorlink/commonapi/CertificationManager$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/CertificationManager$1;-><init>(Lcom/lge/mirrorlink/commonapi/CertificationManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CertificationManager;->mBinder:Lcom/mirrorlink/android/commonapi/ICertificationManager$Stub;

    .line 24
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/CertificationManager;->mPackageName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/lge/mirrorlink/commonapi/CertificationManager;->mListener:Lcom/mirrorlink/android/commonapi/ICertificationListener;

    .line 22
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CertificationManager;->mBinder:Lcom/mirrorlink/android/commonapi/ICertificationManager$Stub;

    return-object v0
.end method

.method public getApplicationCertificationInformation(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "entity"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationCertificationStatus()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationCertifyingEntities()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListener()Lcom/mirrorlink/android/commonapi/ICertificationListener;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CertificationManager;->mListener:Lcom/mirrorlink/android/commonapi/ICertificationListener;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CertificationManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public unregister()V
    .registers 1

    .prologue
    .line 158
    return-void
.end method
