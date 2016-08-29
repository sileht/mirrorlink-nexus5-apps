.class public final Lcom/mirrorlink/android/commonapi/Defs$GPSService;
.super Ljava/lang/Object;
.source "Defs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/Defs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GPSService"
.end annotation


# static fields
.field public static final NMEADESCRIPTION_OBJECT_UID:I = -0x62f74e63

.field public static final NMEADESCRIPTION_SUPPORTED_FIELD_UID:Ljava/lang/String; = "0x6e72b167"

.field public static final NMEA_DATA_FIELD_UID:Ljava/lang/String; = "0x144a776f"

.field public static final NMEA_OBJECT_UID:I = 0xaac4540

.field public static final NMEA_TIMESTAMP_FIELD_UID:Ljava/lang/String; = "0x59413fd1"

.field public static final SERVICE_NAME:Ljava/lang/String; = "com.mirrorlink.gps"

.field public static final SUPPORT_GGA:I = 0x1

.field public static final SUPPORT_GLL:I = 0x2

.field public static final SUPPORT_GSA:I = 0x4

.field public static final SUPPORT_GST:I = 0x40

.field public static final SUPPORT_GSV:I = 0x8

.field public static final SUPPORT_RMC:I = 0x10

.field public static final SUPPORT_VTG:I = 0x20


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
