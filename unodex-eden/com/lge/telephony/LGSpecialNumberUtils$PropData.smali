.class final Lcom/lge/telephony/LGSpecialNumberUtils$PropData;
.super Ljava/lang/Object;
.source "LGSpecialNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/LGSpecialNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PropData"
.end annotation


# static fields
.field public static final PROP_KEY:Ljava/lang/String; = "key"

.field public static final PROP_VALUE:Ljava/lang/String; = "value"

.field public static final TABLE_NAME:Ljava/lang/String; = "chameleon_properties"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
