.class public final Lcom/lge/lgdrm/DrmDldRequest;
.super Ljava/lang/Object;
.source "DrmDldRequest.java"


# static fields
.field public static final HTTP_GET:I = 0x10

.field public static final HTTP_POST:I = 0x20

.field public static final REQ_ALBUMART:I = 0xa

.field public static final REQ_CLKSYNC:I = 0x3

.field public static final REQ_CLKSYNCPET:I = 0x2

.field public static final REQ_CNTDWN:I = 0xb

.field public static final REQ_JOINDOMAIN:I = 0x6

.field public static final REQ_LEAVEDOMAIN:I = 0x7

.field public static final REQ_LICENSE_ACK:I = 0x5

.field public static final REQ_LICENSE_ACQ:I = 0x4

.field public static final REQ_METERCERT:I = 0x9

.field public static final REQ_METERING:I = 0x8

.field public static final REQ_ROAP:I = 0x1

.field public static final SOAP_JOINDOMAIN:Ljava/lang/String; = "http://schemas.microsoft.com/DRM/2007/03/protocols/JoinDomain"

.field public static final SOAP_LEAVEDOMAIN:Ljava/lang/String; = "http://schemas.microsoft.com/DRM/2007/03/protocols/LeaveDomain"

.field public static final SOAP_LIC_ACK:Ljava/lang/String; = "http://schemas.microsoft.com/DRM/2007/03/protocols/AcknowledgeLicense"

.field public static final SOAP_LIC_ACQ:Ljava/lang/String; = "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

.field public static final SOAP_METERCERT:Ljava/lang/String; = "http://schemas.microsoft.com/DRM/2007/03/protocols/GetMeteringCertificate"

.field public static final SOAP_METERING:Ljava/lang/String; = "http://schemas.microsoft.com/DRM/2007/03/protocols/ProcessMeteringData"


# instance fields
.field public data:[B

.field public httpMethod:I

.field public requestType:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method
