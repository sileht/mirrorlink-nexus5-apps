.class public final Lcom/mirrorlink/android/commonapi/Defs$ServiceInformation;
.super Ljava/lang/Object;
.source "Defs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/Defs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceInformation"
.end annotation


# static fields
.field public static final SERVICE_ID:Ljava/lang/String; = "SERVICE_ID"

.field public static final SERVICE_NAME:Ljava/lang/String; = "SERVICE_NAME"

.field public static final VERSION_MAJOR:Ljava/lang/String; = "VERSION_MAJOR"

.field public static final VERSION_MINOR:Ljava/lang/String; = "VERSION_MINOR"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
