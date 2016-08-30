.class public final enum Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;
.super Ljava/lang/Enum;
.source "ByteImageNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/ia/task/vision/byteimage/ByteImageNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARGB2BGR:Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

.field public static final enum ARGB2Gray:Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    const-string v1, "ARGB2BGR"

    invoke-direct {v0, v1, v2}, Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;->ARGB2BGR:Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    .line 11
    new-instance v0, Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    const-string v1, "ARGB2Gray"

    invoke-direct {v0, v1, v3}, Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;->ARGB2Gray:Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    sget-object v1, Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;->ARGB2BGR:Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;->ARGB2Gray:Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;->ENUM$VALUES:[Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    return-object v0
.end method

.method public static values()[Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;->ENUM$VALUES:[Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
