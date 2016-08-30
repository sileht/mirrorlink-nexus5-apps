.class public Lcom/lg/visualsearch/JniBlurMeasure;
.super Ljava/lang/Object;
.source "JniBlurMeasure.java"


# static fields
.field private static uniqueInstance:Lcom/lg/visualsearch/JniBlurMeasure;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-string v0, "JniBlurMeasure"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lg/visualsearch/JniBlurMeasure;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/lg/visualsearch/JniBlurMeasure;->uniqueInstance:Lcom/lg/visualsearch/JniBlurMeasure;

    if-nez v0, :cond_b

    .line 14
    new-instance v0, Lcom/lg/visualsearch/JniBlurMeasure;

    invoke-direct {v0}, Lcom/lg/visualsearch/JniBlurMeasure;-><init>()V

    sput-object v0, Lcom/lg/visualsearch/JniBlurMeasure;->uniqueInstance:Lcom/lg/visualsearch/JniBlurMeasure;

    .line 16
    :cond_b
    sget-object v0, Lcom/lg/visualsearch/JniBlurMeasure;->uniqueInstance:Lcom/lg/visualsearch/JniBlurMeasure;

    return-object v0
.end method


# virtual methods
.method public native BlurMeasure(Landroid/graphics/Bitmap;[F[IIIFI)I
.end method

.method public native BlurMeasureGray([BII[FIIFI)I
.end method
