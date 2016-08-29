.class public interface abstract Lcom/lge/mirrorlink/certificate/CertificateStatusListener;
.super Ljava/lang/Object;
.source "CertificateStatusListener.java"


# virtual methods
.method public abstract onApplicationCertificateBaseOver(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V
.end method

.method public abstract onApplicationCertificateDriveOver(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V
.end method

.method public abstract onApplicationCertificateFailed(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V
.end method

.method public abstract onApplicationCertificateRevoked(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V
.end method

.method public abstract onApplicationCertificateRevoked(Ljava/lang/String;Z)V
.end method

.method public abstract onApplicationCertificateSuccess(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V
.end method

.method public abstract onOCSPQueryPeriodChanged(III)V
.end method
