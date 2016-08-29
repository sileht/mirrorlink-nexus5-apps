.class public Lcom/lge/mirrorlink/certificate/DeviceCertImporter;
.super Ljava/lang/Object;
.source "DeviceCertImporter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/DeviceCertImporter;->mContext:Landroid/content/Context;

    .line 11
    iput-object p1, p0, Lcom/lge/mirrorlink/certificate/DeviceCertImporter;->mContext:Landroid/content/Context;

    .line 10
    return-void
.end method


# virtual methods
.method public importCert(Ljava/lang/String;Z)Ljava/security/cert/X509Certificate;
    .registers 6
    .param p1, "certFileName"    # Ljava/lang/String;
    .param p2, "requireEKU"    # Z

    .prologue
    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/lge/mirrorlink/certificate/ImportedDevCert;

    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/DeviceCertImporter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/lge/mirrorlink/certificate/ImportedDevCert;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 17
    .local v0, "importedDevCert":Lcom/lge/mirrorlink/certificate/ImportedDevCert;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/certificate/ImportedDevCert;->loadSource()Z

    move-result v1

    if-nez v1, :cond_f

    .line 18
    return-object v2

    .line 20
    :cond_f
    invoke-virtual {v0}, Lcom/lge/mirrorlink/certificate/ImportedDevCert;->generateCert()Z

    move-result v1

    if-nez v1, :cond_16

    .line 21
    return-object v2

    .line 23
    :cond_16
    invoke-virtual {v0}, Lcom/lge/mirrorlink/certificate/ImportedDevCert;->verifyCert()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 24
    return-object v2

    .line 27
    :cond_1d
    invoke-virtual {v0}, Lcom/lge/mirrorlink/certificate/ImportedDevCert;->getResult()Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method
