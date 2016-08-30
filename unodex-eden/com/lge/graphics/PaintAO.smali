.class public Lcom/lge/graphics/PaintAO;
.super Ljava/lang/Object;
.source "PaintAO.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/graphics/PaintAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    :try_start_0
    invoke-static {}, Lcom/lge/graphics/PaintAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/graphics/PaintAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_graphics_PaintAO$1$753f66d8proceed(Landroid/graphics/Paint;J[CIIIIILorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 13
    .param p0, "this"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 13
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p5}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p6}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p7}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {p8}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p9, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_graphics_PaintAO$2$4e0dfc8eproceed(Landroid/graphics/Paint;JLjava/lang/String;IIIIILorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 13
    .param p0, "this"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p5}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p6}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p7}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {p8}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p9, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/graphics/PaintAO;

    invoke-direct {v0}, Lcom/lge/graphics/PaintAO;-><init>()V

    sput-object v0, Lcom/lge/graphics/PaintAO;->ajc$perSingletonInstance:Lcom/lge/graphics/PaintAO;

    return-void
.end method

.method public static aspectOf()Lcom/lge/graphics/PaintAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/graphics/PaintAO;->ajc$perSingletonInstance:Lcom/lge/graphics/PaintAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_graphics_PaintAO"

    sget-object v2, Lcom/lge/graphics/PaintAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/graphics/PaintAO;->ajc$perSingletonInstance:Lcom/lge/graphics/PaintAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/graphics/PaintAO;->ajc$perSingletonInstance:Lcom/lge/graphics/PaintAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_graphics_PaintAO$1$753f66d8(Landroid/graphics/Paint;J[CIIIIILorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 15
    .param p1, "obj"    # Landroid/graphics/Paint;
    .param p2, "mNativePaint"    # J
    .param p4, "text"    # [C
    .param p5, "contextStart"    # I
    .param p6, "contextLength"    # I
    .param p7, "dir"    # I
    .param p8, "offset"    # I
    .param p9, "cursorOpt"    # I
    .param p10, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,mNativePaint,text,contextStart,contextLength,dir,offset,cursorOpt,ajc$aroundClosure"
        value = "(this(obj) && (args(mNativePaint, text, contextStart, contextLength, dir, offset, cursorOpt) && call(private native int Paint.native_getTextRunCursor(long, char, int, int, int, int, int))))"
    .end annotation

    .prologue
    .line 15
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v2, :cond_f

    .line 16
    add-int v0, p5, p6

    .line 17
    .local v0, "contextEnd":I
    invoke-static/range {p1 .. p10}, Lcom/lge/graphics/PaintAO;->ajc$around$com_lge_graphics_PaintAO$1$753f66d8proceed(Landroid/graphics/Paint;J[CIIIIILorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v1

    .line 18
    .local v1, "newOffset":I
    invoke-static {p4, p5, v0, v1, p9}, Landroid/text/LGEmojiUtil;->adjustTextRunCursor([CIIII)I

    move-result v2

    .line 20
    .end local v0    # "contextEnd":I
    .end local v1    # "newOffset":I
    :goto_e
    return v2

    :cond_f
    invoke-static/range {p1 .. p10}, Lcom/lge/graphics/PaintAO;->ajc$around$com_lge_graphics_PaintAO$1$753f66d8proceed(Landroid/graphics/Paint;J[CIIIIILorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v2

    goto :goto_e
.end method

.method public ajc$around$com_lge_graphics_PaintAO$2$4e0dfc8e(Landroid/graphics/Paint;JLjava/lang/String;IIIIILorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 13
    .param p1, "obj"    # Landroid/graphics/Paint;
    .param p2, "mNativePaint"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "contextStart"    # I
    .param p6, "contextEnd"    # I
    .param p7, "dir"    # I
    .param p8, "offset"    # I
    .param p9, "cursorOpt"    # I
    .param p10, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,mNativePaint,text,contextStart,contextEnd,dir,offset,cursorOpt,ajc$aroundClosure"
        value = "(this(obj) && (args(mNativePaint, text, contextStart, contextEnd, dir, offset, cursorOpt) && call(private native int Paint.native_getTextRunCursor(long, String, int, int, int, int, int))))"
    .end annotation

    .prologue
    .line 31
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v1, :cond_d

    .line 32
    invoke-static/range {p1 .. p10}, Lcom/lge/graphics/PaintAO;->ajc$around$com_lge_graphics_PaintAO$2$4e0dfc8eproceed(Landroid/graphics/Paint;JLjava/lang/String;IIIIILorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    .line 33
    .local v0, "newOffset":I
    invoke-static {p4, p5, p6, v0, p9}, Landroid/text/LGEmojiUtil;->adjustTextRunCursor(Ljava/lang/CharSequence;IIII)I

    move-result v1

    .line 35
    .end local v0    # "newOffset":I
    :goto_c
    return v1

    :cond_d
    invoke-static/range {p1 .. p10}, Lcom/lge/graphics/PaintAO;->ajc$around$com_lge_graphics_PaintAO$2$4e0dfc8eproceed(Landroid/graphics/Paint;JLjava/lang/String;IIIIILorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v1

    goto :goto_c
.end method
