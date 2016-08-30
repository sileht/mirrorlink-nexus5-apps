.class public Lcom/lge/gles/GLESConfig;
.super Ljava/lang/Object;
.source "GLESConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/gles/GLESConfig$ChipVendor;,
        Lcom/lge/gles/GLESConfig$DepthLevel;,
        Lcom/lge/gles/GLESConfig$MeshType;,
        Lcom/lge/gles/GLESConfig$ObjectType;,
        Lcom/lge/gles/GLESConfig$ProjectionType;
    }
.end annotation


# static fields
.field public static final BINARY_FORMAT_NVIDIA:I = 0x8b31

.field public static final BINARY_FORMAT_QUALCOMM:I = 0x8740

.field public static final BINARY_FORMAT_TI:I = 0x9130

.field public static final DEBUG:Z = false

.field public static final FLOAT_SIZE_BYTES:I = 0x4

.field public static final MAJOR_NUMBER:Ljava/lang/String; = "1"

.field public static final MINOR_NUMBER:Ljava/lang/String; = "00"

.field public static final MODIFY_NUMBER:Ljava/lang/String; = "04"

.field public static final NUM_OF_INDEX_ELEMENT:I = 0x6

.field public static final NUM_OF_NORMAL_ELEMENT:I = 0x3

.field public static final NUM_OF_TEXCOORD_ELEMENT:I = 0x2

.field public static final NUM_OF_VERTEX_ELEMENT_XY:I = 0x2

.field public static final NUM_OF_VERTEX_ELEMENT_XYZ:I = 0x3

.field public static final NUM_OF_VERTEX_ELEMENT_XYZW:I = 0x4

.field public static final SHORT_SIZE_BYTES:I = 0x2

.field public static final SPACE_SCALE_FACTOR:F = 4.0f

.field public static final USE_VBO:Z = true

.field public static sUseBinary:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/gles/GLESConfig;->sUseBinary:Z

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
